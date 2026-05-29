'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import {
  Plus, Database, ShieldAlert, Sparkles, RefreshCw, Loader2, User, ArrowLeft
} from 'lucide-react';

// Import Modular Components
import KamusManager from '@/components/admin/KamusManager';
import UserManager from '@/components/admin/UserManager';
import ItemEditorModal from '@/components/admin/ItemEditorModal';

interface MeaningInput {
  id?: string;
  meaning: string;
  primary_meaning: boolean;
  accepted_answer: boolean;
}

interface ReadingInput {
  id?: string;
  reading: string;
  reading_type: 'onyomi' | 'kunyomi' | 'nanori' | null;
  primary_reading: boolean;
  accepted_answer: boolean;
}

interface SentenceInput {
  id?: string;
  japanese: string;
  indonesian: string;
}

interface ItemInput {
  id?: string;
  type: 'radical' | 'kanji' | 'vocabulary';
  character: string;
  slug: string;
  level: number;
  lesson_position: number;
  meaning_mnemonic: string;
  reading_mnemonic: string;
  description: string;
  meanings: MeaningInput[];
  readings: ReadingInput[];
  context_sentences: SentenceInput[];
  prerequisites: string[];
}

export default function AdminPage() {
  const router = useRouter();
  const [devMode, setDevMode] = useState<boolean>(false);
  const [loading, setLoading] = useState(true);
  const [items, setItems] = useState<any[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [filterType, setFilterType] = useState<'all' | 'radical' | 'kanji' | 'vocabulary'>('all');
  const [filterLevel, setFilterLevel] = useState<string>('all');

  const [stats, setStats] = useState({
    total: 0,
    radical: 0,
    kanji: 0,
    vocabulary: 0,
  });

  const [isModalOpen, setIsModalOpen] = useState(false);
  const [formLoading, setFormLoading] = useState(false);

  const initialFormState: ItemInput = {
    type: 'radical',
    character: '',
    slug: '',
    level: 1,
    lesson_position: 0,
    meaning_mnemonic: '',
    reading_mnemonic: '',
    description: '',
    meanings: [{ meaning: '', primary_meaning: true, accepted_answer: true }],
    readings: [],
    context_sentences: [],
    prerequisites: []
  };

  const [formItem, setFormItem] = useState<ItemInput>(initialFormState);
  const [deleteConfirmId, setDeleteConfirmId] = useState<string | null>(null);

  const [adminTab, setAdminTab] = useState<'kamus' | 'users'>('kamus');
  const [users, setUsers] = useState<any[]>([]);
  const [userSearchQuery, setUserSearchQuery] = useState('');
  const [updatingUserId, setUpdatingUserId] = useState<string | null>(null);

  useEffect(() => {
    const checkAccess = async () => {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        const isDev = localStorage.getItem('kanigani-dev-mode') === 'true';
        setDevMode(isDev);
      } catch (err) {
        console.error('Error checking auth:', err);
      } finally {
        setLoading(false);
      }
    };

    checkAccess();
    window.addEventListener('storage', () => {
      setDevMode(localStorage.getItem('kanigani-dev-mode') === 'true');
    });
  }, [router]);

  const checkUserLevel = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) return 1;

      const { data: progresses } = await supabase
        .from('user_progress')
        .select('item_id, srs_stage')
        .eq('user_id', user.id);

      const { data: allKanji } = await supabase
        .from('items')
        .select('id, level')
        .eq('type', 'kanji');

      if (!allKanji) return 1;

      const progressGuruSet = new Set(
        (progresses || [])
          .filter((p: any) => p.srs_stage >= 5)
          .map((p: any) => p.item_id)
      );

      let uLevel = 1;
      while (uLevel <= 10) {
        const levelKanjiItems = allKanji.filter((k: any) => k.level === uLevel);
        if (levelKanjiItems.length === 0) break;

        const passed = levelKanjiItems.filter((k: any) => progressGuruSet.has(k.id)).length;
        const ratio = passed / levelKanjiItems.length;
        if (ratio >= 0.9) {
          uLevel++;
        } else {
          break;
        }
      }
      return Math.min(10, uLevel);
    } catch (e) {
      console.error('Error checking user level:', e);
      return 1;
    }
  };

  const loadDatabase = async (selectedLvl?: string) => {
    setLoading(true);
    try {
      const [totalCount, radicalCount, kanjiCount, vocabCount] = await Promise.all([
        supabase.from('items').select('*', { count: 'exact', head: true }),
        supabase.from('items').select('*', { count: 'exact', head: true }).eq('type', 'radical'),
        supabase.from('items').select('*', { count: 'exact', head: true }).eq('type', 'kanji'),
        supabase.from('items').select('*', { count: 'exact', head: true }).eq('type', 'vocabulary'),
      ]);

      setStats({
        total: totalCount.count || 0,
        radical: radicalCount.count || 0,
        kanji: kanjiCount.count || 0,
        vocabulary: vocabCount.count || 0,
      });

      let query = supabase
        .from('items')
        .select(`
          *,
          item_meanings(*),
          item_readings(*),
          item_context_sentences(*),
          item_prerequisites!item_id(requires_item_id)
        `)
        .order('level', { ascending: true })
        .order('lesson_position', { ascending: true });

      const currentLvl = (typeof selectedLvl === 'string') ? selectedLvl : filterLevel;
      if (currentLvl !== 'all') {
        query = query.eq('level', Number(currentLvl));
      }

      const { data, error } = await query;
      if (error) throw error;

      if (data) {
        setItems(data);
      }
    } catch (err) {
      console.error('Error loading database items:', err);
      alert('Gagal mengambil data dari Supabase.');
    } finally {
      setLoading(false);
    }
  };

  const loadUsers = async () => {
    try {
      const { data, error } = await supabase.rpc('get_leaderboard');
      if (error) throw error;
      if (data) {
        setUsers(data);
      }
    } catch (err) {
      console.error('Error loading users:', err);
    }
  };

  const handleSetUserLevel = async (userId: string, newLevel: number | null) => {
    setUpdatingUserId(userId);
    try {
      const { error } = await supabase.rpc('update_user_level', {
        p_user_id: userId,
        p_level: newLevel
      });
      if (error) throw error;
      alert('Sukses! Level pengguna berhasil diperbarui.');
      loadUsers();
    } catch (err: any) {
      console.error('Error updating user level:', err);
      alert('Gagal memperbarui level: ' + err.message);
    } finally {
      setUpdatingUserId(null);
    }
  };

  useEffect(() => {
    if (devMode) {
      const init = async () => {
        const lvl = await checkUserLevel();
        setFilterLevel(String(lvl));
        loadDatabase(String(lvl));
        loadUsers();
      };
      init();
    }
  }, [devMode]);

  const handleEnableDevMode = () => {
    localStorage.setItem('kanigani-dev-mode', 'true');
    setDevMode(true);
    window.dispatchEvent(new Event('storage'));
  };

  const openAddModal = () => {
    setFormItem(initialFormState);
    setIsModalOpen(true);
  };

  const openEditModal = (item: any) => {
    setFormItem({
      id: item.id,
      type: item.type,
      character: item.character,
      slug: item.slug || '',
      level: item.level || 1,
      lesson_position: item.lesson_position || 0,
      meaning_mnemonic: item.meaning_mnemonic || '',
      reading_mnemonic: item.reading_mnemonic || '',
      description: item.description || '',
      meanings: item.item_meanings && item.item_meanings.length > 0
        ? item.item_meanings.map((m: any) => ({
          id: m.id,
          meaning: m.meaning,
          primary_meaning: m.primary_meaning,
          accepted_answer: m.accepted_answer
        }))
        : [{ meaning: '', primary_meaning: true, accepted_answer: true }],
      readings: item.item_readings && item.item_readings.length > 0
        ? item.item_readings.map((r: any) => ({
          id: r.id,
          reading: r.reading,
          reading_type: r.reading_type,
          primary_reading: r.primary_reading,
          accepted_answer: r.accepted_answer
        }))
        : [],
      context_sentences: item.item_context_sentences && item.item_context_sentences.length > 0
        ? item.item_context_sentences.map((s: any) => ({
          id: s.id,
          japanese: s.japanese,
          indonesian: s.indonesian
        }))
        : [],
      prerequisites: item.item_prerequisites && item.item_prerequisites.length > 0
        ? item.item_prerequisites.map((p: any) => p.requires_item_id)
        : []
    });
    setIsModalOpen(true);
  };

  const handleSaveItem = async () => {
    if (!formItem.character.trim()) {
      alert('Karakter tidak boleh kosong!');
      return;
    }
    if (!formItem.slug.trim()) {
      alert('Nama Slug/Arti Utama tidak boleh kosong!');
      return;
    }

    const filledMeanings = formItem.meanings.filter(m => m.meaning.trim() !== '');
    if (filledMeanings.length === 0) {
      alert('Harus mengisi minimal satu arti!');
      return;
    }
    const hasPrimaryMeaning = filledMeanings.some(m => m.primary_meaning);
    if (!hasPrimaryMeaning) {
      alert('Harus menetapkan satu arti sebagai arti utama (Primary Meaning)!');
      return;
    }

    if (formItem.type !== 'radical') {
      const filledReadings = formItem.readings.filter(r => r.reading.trim() !== '');
      if (filledReadings.length === 0) {
        alert('Kanji atau Kosakata harus memiliki minimal satu cara baca!');
        return;
      }
      const hasPrimaryReading = filledReadings.some(r => r.primary_reading);
      if (!hasPrimaryReading) {
        alert('Harus menetapkan satu cara baca sebagai utama (Primary Reading)!');
        return;
      }
    }

    setFormLoading(true);
    try {
      const isEdit = !!formItem.id;
      let itemId = formItem.id;

      const itemData = {
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || null,
        reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || null : null,
        description: formItem.description.trim() || null,
      };

      if (isEdit) {
        const { error: itemErr } = await supabase
          .from('items')
          .update(itemData)
          .eq('id', itemId);

        if (itemErr) throw itemErr;

        const [delM, delR, delS, delP] = await Promise.all([
          supabase.from('item_meanings').delete().eq('item_id', itemId),
          supabase.from('item_readings').delete().eq('item_id', itemId),
          supabase.from('item_context_sentences').delete().eq('item_id', itemId),
          supabase.from('item_prerequisites').delete().eq('item_id', itemId),
        ]);

        if (delM.error) throw delM.error;
        if (delR.error) throw delR.error;
        if (delS.error) throw delS.error;
        if (delP.error) throw delP.error;

      } else {
        const { data: newItem, error: itemErr } = await supabase
          .from('items')
          .insert(itemData)
          .select('id')
          .single();

        if (itemErr) throw itemErr;
        itemId = newItem.id;

        const { data: { user } } = await supabase.auth.getUser();
        if (user && itemId) {
          await supabase.from('user_progress').insert({
            user_id: user.id,
            item_id: itemId,
            srs_stage: formItem.type === 'radical' ? 1 : 0,
            unlocked_at: formItem.type === 'radical' ? new Date().toISOString() : null,
          });
        }
      }

      if (itemId) {
        const meaningsToInsert = filledMeanings.map(m => ({
          item_id: itemId,
          meaning: m.meaning.trim(),
          primary_meaning: m.primary_meaning,
          accepted_answer: m.accepted_answer
        }));
        const { error: mErr } = await supabase.from('item_meanings').insert(meaningsToInsert);
        if (mErr) throw mErr;

        if (formItem.type !== 'radical') {
          const readingsToInsert = formItem.readings
            .filter(r => r.reading.trim() !== '')
            .map(r => ({
              item_id: itemId,
              reading: r.reading.trim(),
              reading_type: formItem.type === 'kanji' ? r.reading_type : null,
              primary_reading: r.primary_reading,
              accepted_answer: r.accepted_answer
            }));

          if (readingsToInsert.length > 0) {
            const { error: rErr } = await supabase.from('item_readings').insert(readingsToInsert);
            if (rErr) throw rErr;
          }
        }

        if (formItem.type === 'vocabulary') {
          const sentencesToInsert = formItem.context_sentences
            .filter(s => s.japanese.trim() !== '' && s.indonesian.trim() !== '')
            .map(s => ({
              item_id: itemId,
              japanese: s.japanese.trim(),
              indonesian: s.indonesian.trim()
            }));

          if (sentencesToInsert.length > 0) {
            const { error: sErr } = await supabase.from('item_context_sentences').insert(sentencesToInsert);
            if (sErr) throw sErr;
          }
        }

        if (formItem.type !== 'radical' && formItem.prerequisites.length > 0) {
          const prereqsToInsert = formItem.prerequisites.map(reqId => ({
            item_id: itemId,
            requires_item_id: reqId
          }));
          const { error: pErr } = await supabase.from('item_prerequisites').insert(prereqsToInsert);
          if (pErr) throw pErr;
        }
      }

      setIsModalOpen(false);
      loadDatabase();

    } catch (err: any) {
      console.error('Error saving item:', err);
      alert('Terjadi kesalahan saat menyimpan: ' + (err?.message || String(err)));
    } finally {
      setFormLoading(false);
    }
  };

  const handleDeleteItem = async (id: string) => {
    try {
      const { error } = await supabase
        .from('items')
        .delete()
        .eq('id', id);

      if (error) throw error;

      setDeleteConfirmId(null);
      loadDatabase();
    } catch (err: any) {
      console.error('Error deleting item:', err);
      alert('Gagal menghapus item: ' + (err?.message || String(err)));
    }
  };

  if (loading && items.length === 0) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-slate-50 dark:bg-slate-950 text-slate-900 dark:text-slate-100">
        <div className="flex flex-col items-center space-y-4">
          <Loader2 className="w-12 h-12 text-indigo-500 animate-spin" />
          <p className="font-semibold text-sm">Menghubungkan ke Database Supabase...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-50 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">

        {/* DEV MODE CHECKER & WELCOME HEADER */}
        {!devMode ? (
          <section className="bg-slate-900 border border-slate-800 p-8 rounded-3xl text-center space-y-6 max-w-2xl mx-auto my-12 shadow-xl">
            <ShieldAlert className="w-16 h-16 mx-auto text-amber-500 animate-bounce" />
            <h2 className="text-2xl font-black text-white">Akses Terbatas: Developer Mode Diperlukan</h2>
            <p className="text-sm text-slate-450 leading-relaxed">
              Halaman manipulasi database ini dilindungi dan hanya tersedia untuk keperluan administrasi pembelajaran. Silakan aktifkan Developer Mode untuk melanjutkan.
            </p>
            <div className="flex flex-col sm:flex-row justify-center gap-4">
              <button
                onClick={() => router.push('/dashboard')}
                className="px-6 py-3 bg-slate-800 hover:bg-slate-700 text-slate-200 font-bold rounded-2xl text-sm flex items-center justify-center space-x-2 transition-colors cursor-pointer"
              >
                <ArrowLeft className="w-4 h-4" />
                <span>Kembali ke Dashboard</span>
              </button>
              <button
                onClick={handleEnableDevMode}
                className="px-6 py-3 bg-emerald-500 hover:bg-emerald-600 text-slate-950 font-black rounded-2xl text-sm flex items-center justify-center space-x-2 shadow-lg shadow-emerald-500/10 hover:shadow-emerald-500/20 transition-all cursor-pointer"
              >
                <Sparkles className="w-4 h-4" />
                <span>Aktifkan Developer Mode</span>
              </button>
            </div>
          </section>
        ) : (
          <>
            {/* ADMIN TOP TITLE SECTION */}
            <section className="flex flex-col md:flex-row md:items-center justify-between gap-4 bg-white/50 dark:bg-slate-900/50 backdrop-blur-md p-6 sm:p-8 rounded-3xl border border-slate-200/50 dark:border-slate-800/50 shadow-sm">
              <div className="space-y-1">
                <div className="flex items-center space-x-2 text-emerald-500">
                  <Database className="w-5 h-5 animate-pulse" />
                  <span className="text-xs font-bold uppercase tracking-widest">KaniGani Database Manager</span>
                </div>
                <h2 className="text-2xl sm:text-3xl font-extrabold tracking-tight">
                  CRUD <span className="bg-gradient-to-r from-pink-500 to-indigo-500 bg-clip-text text-transparent">Kamus Pembelajaran</span>
                </h2>
                <p className="text-xs text-slate-500 dark:text-slate-400">
                  Tambahkan, perbarui, dan sesuaikan data radikal, kanji, serta kosakata langsung di database relasional.
                </p>
              </div>

              <div className="flex items-center gap-3 shrink-0 select-none">
                <button
                  onClick={() => loadDatabase()}
                  className="p-3 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 border border-slate-200 dark:border-slate-700 text-slate-600 dark:text-slate-300 rounded-2xl transition-colors cursor-pointer"
                  title="Refresh Database"
                >
                  <RefreshCw className="w-5 h-5" />
                </button>
                <button
                  onClick={openAddModal}
                  className="px-5 py-3 bg-indigo-600 hover:bg-indigo-700 text-white font-bold rounded-2xl shadow-lg shadow-indigo-600/10 hover:shadow-indigo-600/20 text-sm flex items-center justify-center space-x-2 transition-all cursor-pointer"
                >
                  <Plus className="w-5 h-5" />
                  <span>Tambah Item Baru</span>
                </button>
              </div>
            </section>

            {/* TAB SELECTOR (KAMUS VS USERS) */}
            <div className="flex space-x-3 p-1.5 bg-white/50 dark:bg-slate-900/50 backdrop-blur-md rounded-2xl border border-slate-200/50 dark:border-slate-800/50 w-full sm:w-fit shadow-xs select-none">
              <button
                onClick={() => setAdminTab('kamus')}
                className={`flex items-center space-x-2 px-5 py-2.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${adminTab === 'kamus'
                  ? 'bg-indigo-600 text-white shadow-md'
                  : 'text-slate-600 dark:text-slate-300 hover:bg-slate-100 dark:hover:bg-slate-800 hover:text-slate-900 dark:hover:text-white'
                  }`}
              >
                <Database className="w-4 h-4" />
                <span>Pengelola Kamus</span>
              </button>

              <button
                onClick={() => setAdminTab('users')}
                className={`flex items-center space-x-2 px-5 py-2.5 rounded-xl text-xs font-bold transition-all cursor-pointer ${adminTab === 'users'
                  ? 'bg-indigo-600 text-white shadow-md'
                  : 'text-slate-600 dark:text-slate-300 hover:bg-slate-100 dark:hover:bg-slate-800 hover:text-slate-900 dark:hover:text-white'
                  }`}
              >
                <User className="w-4 h-4" />
                <span>Manajer Level Pengguna</span>
              </button>
            </div>

            {adminTab === 'users' ? (
              <UserManager
                users={users}
                userSearchQuery={userSearchQuery}
                setUserSearchQuery={setUserSearchQuery}
                handleSetUserLevel={handleSetUserLevel}
                updatingUserId={updatingUserId}
                loadUsers={loadUsers}
              />
            ) : (
              <KamusManager
                items={items}
                stats={stats}
                searchQuery={searchQuery}
                setSearchQuery={setSearchQuery}
                filterType={filterType}
                setFilterType={setFilterType}
                filterLevel={filterLevel}
                setFilterLevel={setFilterLevel}
                loadDatabase={loadDatabase}
                openEditModal={openEditModal}
                handleDeleteItem={handleDeleteItem}
                deleteConfirmId={deleteConfirmId}
                setDeleteConfirmId={setDeleteConfirmId}
              />
            )}
          </>
        )}
      </main>

      <Footer />

      {/* DYNAMIC FULL-MODAL / DRAWER FORM FOR CREATE & EDIT */}
      <ItemEditorModal
        isOpen={isModalOpen}
        setIsOpen={setIsModalOpen}
        formItem={formItem}
        setFormItem={setFormItem}
        handleSaveItem={handleSaveItem}
        formLoading={formLoading}
        items={items}
      />
    </div>
  );
}
