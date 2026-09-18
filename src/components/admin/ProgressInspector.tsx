'use client';

import { useState, useEffect } from 'react';
import { supabase } from '@/lib/supabase';
import {
  Search, RefreshCw, Zap, RotateCcw, CheckCircle2,
  Clock, User, Loader2
} from 'lucide-react';
import { getSrsLabel, getSrsColorClass } from '@/lib/srs';

interface ProgressInspectorProps {
  users: Array<{ id: string; username: string; email?: string; level?: number }>;
  currentUserId?: string;
}

export default function ProgressInspector({ users, currentUserId }: ProgressInspectorProps) {
  const [selectedUserId, setSelectedUserId] = useState<string>(() => currentUserId || (users[0]?.id || ''));
  const [prevUserIdProp, setPrevUserIdProp] = useState(currentUserId);
  if (currentUserId && currentUserId !== prevUserIdProp) {
    setPrevUserIdProp(currentUserId);
    setSelectedUserId(currentUserId);
  }

  const [loading, setLoading] = useState(false);
  const [updatingId, setUpdatingId] = useState<string | null>(null);
  const [bulkUpdating, setBulkUpdating] = useState(false);

  const [progressItems, setProgressItems] = useState<any[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [filterType, setFilterType] = useState<string>('all');
  const [filterStage, setFilterStage] = useState<string>('all');
  const [filterLevel, setFilterLevel] = useState<string>('all');

  // Stats
  const [stats, setStats] = useState({
    totalActive: 0,
    apprentice: 0,
    guru: 0,
    master: 0,
    enlightened: 0,
    burned: 0,
    reviewsDue: 0,
  });

  // Load progress for selected user
  const loadUserProgress = async (userId: string) => {
    if (!userId) return;
    setLoading(true);
    try {
      // Fetch user_progress with items details (up to 2000 active rows)
      const { data, error } = await supabase
        .from('user_progress')
        .select('item_id, srs_stage, unlocked_at, next_review, items!item_id(id, character, slug, type, level, lesson_position, wanikani_id)')
        .eq('user_id', userId)
        .order('srs_stage', { ascending: false });

      if (error) throw error;

      const rows = data || [];
      setProgressItems(rows);

      // Compute stats
      let apprentice = 0;
      let guru = 0;
      let master = 0;
      let enlightened = 0;
      let burned = 0;
      let reviewsDue = 0;
      let totalActive = 0;
      const now = new Date();

      rows.forEach((row: any) => {
        const stage = row.srs_stage;
        if (stage > 0) totalActive++;
        if (stage >= 1 && stage <= 4) apprentice++;
        else if (stage >= 5 && stage <= 6) guru++;
        else if (stage === 7) master++;
        else if (stage === 8) enlightened++;
        else if (stage === 9) burned++;

        if (row.next_review && stage >= 1 && stage <= 8) {
          if (new Date(row.next_review) <= now) {
            reviewsDue++;
          }
        }
      });

      setStats({
        totalActive,
        apprentice,
        guru,
        master,
        enlightened,
        burned,
        reviewsDue,
      });
    } catch (err: any) {
      console.error('Failed to load user progress:', err);
      alert('Gagal mengambil progres user: ' + err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    let ignore = false;
    if (selectedUserId) {
      Promise.resolve().then(() => {
        if (!ignore) {
          loadUserProgress(selectedUserId);
        }
      });
    }
    return () => {
      ignore = true;
    };
  }, [selectedUserId]);

  // Quick Action: Update individual item stage
  const handleUpdateItemStage = async (itemId: string, newStage: number) => {
    setUpdatingId(itemId);
    try {
      const updates: any = {
        srs_stage: newStage,
      };

      if (newStage === 0) {
        updates.unlocked_at = null;
        updates.next_review = null;
      } else if (newStage >= 9) {
        updates.next_review = null;
      }

      const { error } = await supabase
        .from('user_progress')
        .update(updates)
        .eq('user_id', selectedUserId)
        .eq('item_id', itemId);

      if (error) throw error;

      // Update locally
      setProgressItems(prev => prev.map(item => {
        if (item.item_id === itemId) {
          return { ...item, ...updates };
        }
        return item;
      }));
    } catch (err: any) {
      alert('Gagal memperbarui stage: ' + err.message);
    } finally {
      setUpdatingId(null);
    }
  };

  // Quick Action: Make review ready now
  const handleMakeReadyNow = async (itemId: string) => {
    setUpdatingId(itemId);
    try {
      const nowIso = new Date().toISOString();
      const { error } = await supabase
        .from('user_progress')
        .update({ next_review: nowIso })
        .eq('user_id', selectedUserId)
        .eq('item_id', itemId);

      if (error) throw error;

      setProgressItems(prev => prev.map(item => {
        if (item.item_id === itemId) {
          return { ...item, next_review: nowIso };
        }
        return item;
      }));
    } catch (err: any) {
      alert('Gagal memperbarui review: ' + err.message);
    } finally {
      setUpdatingId(null);
    }
  };

  // Bulk Action: Set all kanji in level to Guru (stage 5)
  const handleBulkSetKanjiGuru = async (targetLevel: number) => {
    if (!confirm(`Ubah semua Kanji Level ${targetLevel} milik pengguna ini menjadi Guru (Stage 5)? Tindakan ini akan menguji kenaikan level.`)) {
      return;
    }

    setBulkUpdating(true);
    try {
      // Find kanji IDs of target level
      const { data: kanjis, error: kanjiErr } = await supabase
        .from('items')
        .select('id')
        .eq('type', 'kanji')
        .eq('level', targetLevel);

      if (kanjiErr) throw kanjiErr;

      const kanjiIds = (kanjis || []).map((k: any) => k.id);
      if (kanjiIds.length === 0) {
        alert(`Tidak ada kanji ditemukan untuk Level ${targetLevel}`);
        return;
      }

      const { error: updateErr } = await supabase
        .from('user_progress')
        .upsert(
          kanjiIds.map(id => ({
            user_id: selectedUserId,
            item_id: id,
            srs_stage: 5,
            unlocked_at: new Date().toISOString(),
            next_review: new Date(Date.now() + 167 * 3600 * 1000).toISOString(),
          })),
          { onConflict: 'user_id,item_id' }
        );

      if (updateErr) throw updateErr;

      alert(`Sukses! ${kanjiIds.length} Kanji Level ${targetLevel} berhasil diset ke Guru (Stage 5).`);
      await loadUserProgress(selectedUserId);
    } catch (err: any) {
      alert('Gagal eksekusi bulk: ' + err.message);
    } finally {
      setBulkUpdating(false);
    }
  };

  // Filtered rows
  const filteredItems = progressItems.filter((row: any) => {
    const item = row.items;
    if (!item) return false;

    // Type filter
    if (filterType !== 'all' && item.type !== filterType) return false;

    // Level filter
    if (filterLevel !== 'all' && item.level !== Number(filterLevel)) return false;

    // Stage filter
    if (filterStage !== 'all') {
      const targetStage = Number(filterStage);
      if (targetStage === 0 && row.srs_stage !== 0) return false;
      if (targetStage === 1 && (row.srs_stage < 1 || row.srs_stage > 4)) return false; // Apprentice
      if (targetStage === 5 && (row.srs_stage < 5 || row.srs_stage > 6)) return false; // Guru
      if (targetStage === 7 && row.srs_stage !== 7) return false; // Master
      if (targetStage === 8 && row.srs_stage !== 8) return false; // Enlightened
      if (targetStage === 9 && row.srs_stage !== 9) return false; // Burned
    }

    // Search query
    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase().trim();
      const matchChar = item.character?.toLowerCase().includes(q);
      const matchSlug = item.slug?.toLowerCase().includes(q);
      const matchWk = String(item.wanikani_id || '').includes(q);
      if (!matchChar && !matchSlug && !matchWk) return false;
    }

    return true;
  });

  const selectedUserObj = users.find(u => u.id === selectedUserId);

  return (
    <div className="space-y-6">
      {/* Top Header & User Selector */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 p-5 bg-card border border-border rounded-2xl shadow-xs">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-xl bg-indigo-500/10 border border-indigo-500/20 flex items-center justify-center text-indigo-500 shrink-0">
            <User className="w-5 h-5" />
          </div>
          <div>
            <h3 className="text-base font-bold text-foreground">User Progress Inspector</h3>
            <p className="text-xs text-muted-foreground">
              Periksa & modifikasi status SRS setiap item pengguna secara langsung di database.
            </p>
          </div>
        </div>

        {/* User Selector Dropdown */}
        <div className="flex items-center gap-2">
          <label className="text-xs font-semibold text-muted-foreground shrink-0">Pilih User:</label>
          <select
            value={selectedUserId}
            onChange={(e) => setSelectedUserId(e.target.value)}
            className="px-3 py-2 text-xs font-semibold rounded-xl bg-background border border-input focus:border-primary focus:ring-2 focus:ring-primary/20 outline-hidden text-foreground cursor-pointer"
          >
            {users.map((u) => (
              <option key={u.id} value={u.id}>
                {u.username} (Level {u.level || 1})
              </option>
            ))}
          </select>
          <button
            onClick={() => loadUserProgress(selectedUserId)}
            disabled={loading}
            className="p-2 text-muted-foreground hover:text-foreground hover:bg-muted rounded-xl transition-colors cursor-pointer disabled:opacity-50"
            title="Refresh Data User"
          >
            <RefreshCw className={`w-4 h-4 ${loading ? 'animate-spin text-primary' : ''}`} />
          </button>
        </div>
      </div>

      {/* SRS Stats Summary Widgets */}
      <div className="grid grid-cols-2 sm:grid-cols-4 lg:grid-cols-7 gap-3">
        <div className="p-3.5 bg-card border border-border rounded-xl text-center">
          <span className="text-3xs font-extrabold uppercase text-muted-foreground block">Aktif Dipelajari</span>
          <span className="text-xl font-black text-foreground mt-0.5 block">{stats.totalActive}</span>
        </div>
        <div className="p-3.5 bg-pink-500/10 border border-pink-500/20 rounded-xl text-center">
          <span className="text-3xs font-extrabold uppercase text-pink-600 dark:text-pink-400 block">Apprentice</span>
          <span className="text-xl font-black text-pink-600 dark:text-pink-400 mt-0.5 block">{stats.apprentice}</span>
        </div>
        <div className="p-3.5 bg-purple-500/10 border border-purple-500/20 rounded-xl text-center">
          <span className="text-3xs font-extrabold uppercase text-purple-600 dark:text-purple-400 block">Guru</span>
          <span className="text-xl font-black text-purple-600 dark:text-purple-400 mt-0.5 block">{stats.guru}</span>
        </div>
        <div className="p-3.5 bg-blue-500/10 border border-blue-500/20 rounded-xl text-center">
          <span className="text-3xs font-extrabold uppercase text-blue-600 dark:text-blue-400 block">Master</span>
          <span className="text-xl font-black text-blue-600 dark:text-blue-400 mt-0.5 block">{stats.master}</span>
        </div>
        <div className="p-3.5 bg-cyan-500/10 border border-cyan-500/20 rounded-xl text-center">
          <span className="text-3xs font-extrabold uppercase text-cyan-600 dark:text-cyan-400 block">Enlightened</span>
          <span className="text-xl font-black text-cyan-600 dark:text-cyan-400 mt-0.5 block">{stats.enlightened}</span>
        </div>
        <div className="p-3.5 bg-amber-500/10 border border-amber-500/20 rounded-xl text-center">
          <span className="text-3xs font-extrabold uppercase text-amber-600 dark:text-amber-400 block">Burned</span>
          <span className="text-xl font-black text-amber-600 dark:text-amber-400 mt-0.5 block">{stats.burned}</span>
        </div>
        <div className="p-3.5 bg-emerald-500/10 border border-emerald-500/20 rounded-xl text-center">
          <span className="text-3xs font-extrabold uppercase text-emerald-600 dark:text-emerald-400 block">Review Ready</span>
          <span className="text-xl font-black text-emerald-600 dark:text-emerald-400 mt-0.5 block">{stats.reviewsDue}</span>
        </div>
      </div>

      {/* Quick Bulk Action Tools */}
      <div className="p-4 bg-muted/30 border border-border rounded-2xl flex flex-col sm:flex-row sm:items-center justify-between gap-3 text-xs">
        <div className="flex items-center gap-2 text-foreground font-semibold">
          <Zap className="w-4 h-4 text-amber-500" />
          <span>Alat Cepat Uji SRS (Testing):</span>
        </div>
        <div className="flex items-center gap-2 flex-wrap">
          <button
            onClick={() => handleBulkSetKanjiGuru(selectedUserObj?.level || 1)}
            disabled={bulkUpdating}
            className="px-3 py-1.5 bg-purple-500/15 hover:bg-purple-500/25 text-purple-600 dark:text-purple-400 font-bold border border-purple-500/30 rounded-lg transition-colors cursor-pointer flex items-center gap-1.5 disabled:opacity-50"
          >
            {bulkUpdating ? <Loader2 className="w-3.5 h-3.5 animate-spin" /> : <CheckCircle2 className="w-3.5 h-3.5" />}
            Set Semua Kanji Level {selectedUserObj?.level || 1} Jadi Guru (5)
          </button>
        </div>
      </div>

      {/* Filter and Search Bar */}
      <div className="grid grid-cols-1 sm:grid-cols-4 gap-3">
        {/* Search */}
        <div className="relative sm:col-span-1">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
          <input
            type="text"
            placeholder="Cari karakter / slug / WaniKani ID..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="w-full pl-9 pr-3.5 py-2 text-xs rounded-xl bg-background border border-input focus:border-primary outline-hidden text-foreground"
          />
        </div>

        {/* Type Filter */}
        <div>
          <select
            value={filterType}
            onChange={(e) => setFilterType(e.target.value)}
            className="w-full px-3 py-2 text-xs rounded-xl bg-background border border-input text-foreground cursor-pointer outline-hidden"
          >
            <option value="all">Semua Tipe Subjek</option>
            <option value="radical">Radikal</option>
            <option value="kanji">Kanji</option>
            <option value="vocabulary">Kosakata</option>
          </select>
        </div>

        {/* Stage Filter */}
        <div>
          <select
            value={filterStage}
            onChange={(e) => setFilterStage(e.target.value)}
            className="w-full px-3 py-2 text-xs rounded-xl bg-background border border-input text-foreground cursor-pointer outline-hidden"
          >
            <option value="all">Semua Tahap SRS</option>
            <option value="0">Terkunci (Stage 0)</option>
            <option value="1">Apprentice (Stage 1–4)</option>
            <option value="5">Guru (Stage 5–6)</option>
            <option value="7">Master (Stage 7)</option>
            <option value="8">Enlightened (Stage 8)</option>
            <option value="9">Burned (Stage 9)</option>
          </select>
        </div>

        {/* Level Filter */}
        <div>
          <select
            value={filterLevel}
            onChange={(e) => setFilterLevel(e.target.value)}
            className="w-full px-3 py-2 text-xs rounded-xl bg-background border border-input text-foreground cursor-pointer outline-hidden"
          >
            <option value="all">Semua Level (1–60)</option>
            {Array.from({ length: 60 }, (_, i) => i + 1).map((lvl) => (
              <option key={lvl} value={String(lvl)}>
                Level {lvl}
              </option>
            ))}
          </select>
        </div>
      </div>

      {/* Table Content */}
      <div className="bg-card border border-border rounded-2xl overflow-hidden shadow-xs">
        <div className="overflow-x-auto">
          <table className="w-full text-left text-xs border-collapse">
            <thead>
              <tr className="border-b border-border bg-muted/50 text-muted-foreground font-semibold">
                <th className="py-3 px-4">Item</th>
                <th className="py-3 px-4">Tipe</th>
                <th className="py-3 px-4">Level</th>
                <th className="py-3 px-4">WaniKani ID</th>
                <th className="py-3 px-4">Tahap SRS</th>
                <th className="py-3 px-4">Jadwal Review</th>
                <th className="py-3 px-4 text-right">Quick Action</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-border text-foreground">
              {loading ? (
                <tr>
                  <td colSpan={7} className="text-center py-12">
                    <Loader2 className="w-6 h-6 animate-spin text-primary mx-auto" />
                    <span className="text-xs text-muted-foreground mt-2 block">Memuat progres pengguna...</span>
                  </td>
                </tr>
              ) : filteredItems.length === 0 ? (
                <tr>
                  <td colSpan={7} className="text-center py-12 text-muted-foreground">
                    Tidak ada item yang cocok dengan kriteria filter.
                  </td>
                </tr>
              ) : (
                filteredItems.slice(0, 100).map((row: any) => {
                  const item = row.items;
                  const isUpdating = updatingId === row.item_id;
                  const isReady = row.next_review && new Date(row.next_review) <= new Date();

                  return (
                    <tr key={row.item_id} className="hover:bg-muted/30 transition-colors">
                      {/* Character & Slug */}
                      <td className="py-3 px-4">
                        <div className="flex items-center gap-2.5">
                          <span className="text-base font-bold text-foreground font-japanese">
                            {item?.character || '—'}
                          </span>
                          <div>
                            <div className="font-semibold text-foreground capitalize">{item?.slug || '—'}</div>
                            <div className="text-3xs text-muted-foreground font-mono">{row.item_id.slice(0, 8)}...</div>
                          </div>
                        </div>
                      </td>

                      {/* Type Badge */}
                      <td className="py-3 px-4">
                        <span className={`text-3xs font-bold uppercase px-2 py-0.5 rounded-md border capitalize ${
                          item?.type === 'radical'
                            ? 'bg-blue-500/10 text-blue-600 dark:text-blue-400 border-blue-500/20'
                            : item?.type === 'kanji'
                            ? 'bg-pink-500/10 text-pink-600 dark:text-pink-400 border-pink-500/20'
                            : 'bg-purple-500/10 text-purple-600 dark:text-purple-400 border-purple-500/20'
                        }`}>
                          {item?.type}
                        </span>
                      </td>

                      {/* Level */}
                      <td className="py-3 px-4 font-bold">
                        Lvl {item?.level || 1}
                      </td>

                      {/* WaniKani ID */}
                      <td className="py-3 px-4 font-mono text-muted-foreground">
                        {item?.wanikani_id ? `#${item.wanikani_id}` : '—'}
                      </td>

                      {/* SRS Stage dropdown */}
                      <td className="py-3 px-4">
                        <div className="flex items-center gap-1.5">
                          <span className={`text-3xs font-extrabold px-2 py-0.5 rounded-full ${getSrsColorClass(row.srs_stage)}`}>
                            {getSrsLabel(row.srs_stage)} ({row.srs_stage})
                          </span>
                          <select
                            disabled={isUpdating}
                            value={row.srs_stage}
                            onChange={(e) => handleUpdateItemStage(row.item_id, Number(e.target.value))}
                            className="text-3xs px-1.5 py-0.5 rounded bg-background border border-input text-foreground cursor-pointer"
                          >
                            {[0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((s) => (
                              <option key={s} value={s}>
                                Set: {s} ({getSrsLabel(s)})
                              </option>
                            ))}
                          </select>
                        </div>
                      </td>

                      {/* Next Review Date */}
                      <td className="py-3 px-4 text-xs">
                        {row.srs_stage === 0 ? (
                          <span className="text-muted-foreground text-3xs">Terkunci</span>
                        ) : row.srs_stage === 9 ? (
                          <span className="text-amber-600 dark:text-amber-400 text-3xs font-bold">Kekal (Burned)</span>
                        ) : row.next_review ? (
                          <div>
                            <span className={isReady ? 'text-emerald-600 dark:text-emerald-400 font-bold' : 'text-muted-foreground'}>
                              {new Date(row.next_review).toLocaleString('id-ID', {
                                dateStyle: 'short',
                                timeStyle: 'short',
                              })}
                            </span>
                            {isReady && (
                              <span className="block text-3xs text-emerald-500 font-extrabold">Siap Review!</span>
                            )}
                          </div>
                        ) : (
                          <span className="text-pink-600 dark:text-pink-400 text-3xs font-semibold">Dalam Lesson</span>
                        )}
                      </td>

                      {/* Actions */}
                      <td className="py-3 px-4 text-right">
                        <div className="flex items-center justify-end gap-1.5">
                          {row.srs_stage >= 1 && row.srs_stage <= 8 && (
                            <button
                              onClick={() => handleMakeReadyNow(row.item_id)}
                              disabled={isUpdating}
                              title="Set review siap sekarang"
                              className="px-2 py-1 bg-emerald-500/10 text-emerald-600 dark:text-emerald-400 hover:bg-emerald-500/20 border border-emerald-500/20 rounded-md text-3xs font-bold transition-colors cursor-pointer flex items-center gap-1 disabled:opacity-50"
                            >
                              <Clock className="w-3 h-3" />
                              Ready Now
                            </button>
                          )}
                          <button
                            onClick={() => handleUpdateItemStage(row.item_id, 0)}
                            disabled={isUpdating}
                            title="Kunci kembali item"
                            className="p-1 text-muted-foreground hover:text-destructive hover:bg-muted rounded-md transition-colors cursor-pointer disabled:opacity-50"
                          >
                            <RotateCcw className="w-3.5 h-3.5" />
                          </button>
                        </div>
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>

        {/* Footer Summary */}
        <div className="p-3.5 border-t border-border bg-muted/20 flex items-center justify-between text-xs text-muted-foreground">
          <span>Menampilkan {Math.min(filteredItems.length, 100)} dari {filteredItems.length} item</span>
          {filteredItems.length > 100 && (
            <span className="text-3xs italic">Gunakan filter level/stage untuk mempersempit hasil.</span>
          )}
        </div>
      </div>
    </div>
  );
}
