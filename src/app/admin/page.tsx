'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import {
  Plus, Database, ShieldAlert, Sparkles, RefreshCw, Loader2, User, ArrowLeft
} from 'lucide-react';

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
  svg_filename?: string;
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
  const [debouncedSearchQuery, setDebouncedSearchQuery] = useState('');
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
    const isDev = localStorage.getItem('kanigani-dev-mode') === 'true';
    setDevMode(isDev);
  }, []);

  useEffect(() => {
    const timer = setTimeout(() => {
      setDebouncedSearchQuery(searchQuery);
    }, 300);
    return () => clearTimeout(timer);
  }, [searchQuery]);

  const loadStats = async () => {
    try {
      const { data, error } = await supabase
        .from('items')
        .select('type');
      if (error) throw error;
      if (data) {
        const counts = { total: data.length, radical: 0, kanji: 0, vocabulary: 0 };
        data.forEach(item => {
          if (item.type === 'radical') counts.radical++;
          else if (item.type === 'kanji') counts.kanji++;
          else if (item.type === 'vocabulary') counts.vocabulary++;
        });
        setStats(counts);
      }
    } catch (err) {
      console.error('Error loading stats:', err);
    }
  };

  const loadDatabase = async () => {
    try {
      setLoading(true);
      await loadStats();

      let query = supabase
        .from('items')
        .select(`
          id, type, character, slug, level, svg_filename, lesson_position, meaning_mnemonic, reading_mnemonic, description,
          item_meanings(meaning, primary_meaning),
          item_readings(reading, primary_reading)
        `);

      if (filterType !== 'all') {
        query = query.eq('type', filterType);
      }

      if (filterLevel !== 'all') {
        if (filterLevel.includes('-')) {
          const [min, max] = filterLevel.split('-').map(Number);
          query = query.gte('level', min).lte('level', max);
        } else {
          query = query.eq('level', Number(filterLevel));
        }
      }

      if (debouncedSearchQuery.trim() !== '') {
        const term = `%${debouncedSearchQuery.trim().toLowerCase()}%`;
        query = query.or(`character.ilike.${term},slug.ilike.${term}`);
      }

      query = query.order('level', { ascending: true }).order('lesson_position', { ascending: true });

      if (filterLevel === 'all' && filterType === 'all' && debouncedSearchQuery.trim() === '') {
        query = query.limit(200);
      } else {
        query = query.limit(1000);
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
      loadUsers();
    }
  }, [devMode]);

  useEffect(() => {
    if (devMode) {
      loadDatabase();
    }
  }, [devMode, filterLevel, filterType, debouncedSearchQuery]);

  const handleEnableDevMode = () => {
    localStorage.setItem('kanigani-dev-mode', 'true');
    setDevMode(true);
    window.dispatchEvent(new Event('storage'));
  };

  const openAddModal = () => {
    setFormItem(initialFormState);
    setIsModalOpen(true);
  };

  const openEditModal = async (item: any) => {
    setFormLoading(true);
    try {
      const { data, error } = await supabase
        .from('items')
        .select(`
          *,
          item_meanings(*),
          item_readings(*),
          item_context_sentences(*)
        `)
        .eq('id', item.id)
        .single();

      if (error) throw error;

      let prereqs: string[] = [];
      if (data.type === 'kanji') {
        const { data: krData } = await supabase.from('kanji_radicals').select('radical_id').eq('kanji_id', data.id);
        prereqs = (krData || []).map((row: any) => row.radical_id);
      } else if (data.type === 'vocabulary') {
        const { data: vkData } = await supabase.from('vocabulary_kanjis').select('kanji_id').eq('vocabulary_id', data.id);
        prereqs = (vkData || []).map((row: any) => row.kanji_id);
      }

      if (data) {
        setFormItem({
          id: data.id,
          type: data.type,
          character: data.character,
          slug: data.slug || '',
          level: data.level || 1,
          svg_filename: data.svg_filename || '',
          lesson_position: data.lesson_position || 0,
          meaning_mnemonic: data.meaning_mnemonic || '',
          reading_mnemonic: data.reading_mnemonic || '',
          description: data.description || '',
          meanings: data.item_meanings && data.item_meanings.length > 0
            ? data.item_meanings.map((m: any) => ({
              id: m.id,
              meaning: m.meaning,
              primary_meaning: m.primary_meaning,
              accepted_answer: m.accepted_answer
            }))
            : [{ meaning: '', primary_meaning: true, accepted_answer: true }],
          readings: data.item_readings && data.item_readings.length > 0
            ? data.item_readings.map((r: any) => ({
              id: r.id,
              reading: r.reading,
              reading_type: r.reading_type,
              primary_reading: r.primary_reading,
              accepted_answer: r.accepted_answer
            }))
            : [],
          context_sentences: data.item_context_sentences && data.item_context_sentences.length > 0
            ? data.item_context_sentences.map((s: any) => ({
              id: s.id,
              japanese: s.japanese,
              indonesian: s.indonesian
            }))
            : [],
          prerequisites: prereqs
        });
        setIsModalOpen(true);
      }
    } catch (err: any) {
      console.error('Error fetching item details:', err);
      alert('Gagal mengambil detail item: ' + (err?.message || String(err)));
    } finally {
      setFormLoading(false);
    }
  };

  const handleSaveItem = async () => {
    if (!formItem.character.trim() && formItem.type !== 'radical') {
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

    setFormLoading(true);
    try {
      const isEdit = !!formItem.id;
      let itemId = formItem.id;

      const itemData = {
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        svg_filename: formItem.svg_filename?.trim() || null,
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || null,
        reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || null : null,
        description: formItem.description.trim() || null,
      };

      if (isEdit && itemId) {
        const { error: itemErr } = await supabase
          .from('items')
          .update(itemData)
          .eq('id', itemId);

        if (itemErr) throw itemErr;

        await Promise.all([
          supabase.from('item_meanings').delete().eq('item_id', itemId),
          supabase.from('item_readings').delete().eq('item_id', itemId),
          supabase.from('item_context_sentences').delete().eq('item_id', itemId),
          supabase.from('kanji_radicals').delete().eq('kanji_id', itemId),
          supabase.from('vocabulary_kanjis').delete().eq('vocabulary_id', itemId),
        ]);
      } else {
        const { data: newItem, error: itemErr } = await supabase
          .from('items')
          .insert(itemData)
          .select('id')
          .single();

        if (itemErr) throw itemErr;
        itemId = newItem.id;
      }

      if (itemId) {
        const meaningsToInsert = filledMeanings.map(m => ({
          item_id: itemId,
          meaning: m.meaning.trim(),
          primary_meaning: m.primary_meaning,
          accepted_answer: m.accepted_answer
        }));
        await supabase.from('item_meanings').insert(meaningsToInsert);

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
            await supabase.from('item_readings').insert(readingsToInsert);
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
            await supabase.from('item_context_sentences').insert(sentencesToInsert);
          }
        }

        if (formItem.type === 'kanji' && formItem.prerequisites.length > 0) {
          const rows = formItem.prerequisites.map(radId => ({ kanji_id: itemId, radical_id: radId }));
          await supabase.from('kanji_radicals').insert(rows);
        } else if (formItem.type === 'vocabulary' && formItem.prerequisites.length > 0) {
          const rows = formItem.prerequisites.map(kId => ({ vocabulary_id: itemId, kanji_id: kId }));
          await supabase.from('vocabulary_kanjis').insert(rows);
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
      const { error } = await supabase.from('items').delete().eq('id', id);
      if (error) throw error;
      setDeleteConfirmId(null);
      loadDatabase();
    } catch (err: any) {
      console.error('Error deleting item:', err);
      alert('Gagal menghapus item: ' + (err?.message || String(err)));
    }
  };

  if (!devMode) {
    return (
      <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
        <Navbar />
        <main className="flex-1 max-w-xl w-full mx-auto px-4 py-16 flex flex-col items-center justify-center text-center space-y-6 animate-fade-in select-none">
          <div className="w-20 h-20 bg-rose-500/10 dark:bg-rose-500/20 text-rose-500 rounded-3xl flex items-center justify-center border border-rose-500/20 shadow-lg">
            <ShieldAlert className="w-10 h-10" />
          </div>

          <div className="space-y-2">
            <h1 className="text-2xl font-black tracking-tight">Pengembang Mode Non-aktif</h1>
            <p className="text-xs text-slate-500 dark:text-slate-400 leading-relaxed max-w-md">
              Halaman ini diperuntukkan bagi pengembang untuk mengelola database kamus WaniKani 60 Level dan pengguna KaniGani. Aktifkan Dev Mode di bawah untuk melanjutkan.
            </p>
          </div>

          <button
            onClick={handleEnableDevMode}
            className="w-full py-4 bg-gradient-to-r from-rose-500 to-indigo-600 hover:from-rose-600 hover:to-indigo-700 text-white font-extrabold text-sm rounded-2xl shadow-lg transition-all transform active:scale-98 cursor-pointer flex items-center justify-center space-x-2"
          >
            <Sparkles className="w-4 h-4 text-amber-300" />
            <span>Aktifkan Pengembang Mode</span>
          </button>
        </main>
        <Footer />
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />

      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-6 lg:px-8 py-8 sm:py-12 space-y-8 animate-fade-in">

        {/* ADMIN HEADER */}
        <section className="bg-slate-900 text-white p-6 sm:p-8 rounded-3xl shadow-xl flex flex-col sm:flex-row items-start sm:items-center justify-between gap-6 relative overflow-hidden select-none">
          <div className="relative z-10 space-y-1">
            <div className="flex items-center space-x-2 text-rose-400">
              <Sparkles className="w-4 h-4 text-amber-300" />
              <span className="text-xs font-bold uppercase tracking-widest">KaniGani WaniKani 60 Level Control Center</span>
            </div>
            <h1 className="text-2xl sm:text-3xl font-black tracking-tight">Manajemen Database & Pengguna</h1>
          </div>

          <div className="relative z-10 flex flex-wrap items-center gap-3 w-full sm:w-auto">
            <button
              onClick={() => {
                if (adminTab === 'kamus') loadDatabase();
                else loadUsers();
              }}
              className="p-3 bg-slate-800 hover:bg-slate-700 rounded-2xl text-slate-300 transition-colors cursor-pointer border border-slate-700"
              title="Muat Ulang Data"
            >
              <RefreshCw className={`w-5 h-5 ${loading ? 'animate-spin' : ''}`} />
            </button>

            {adminTab === 'kamus' && (
              <button
                onClick={openAddModal}
                className="flex-1 sm:flex-initial px-5 py-3 bg-gradient-to-r from-rose-500 to-indigo-600 hover:from-rose-600 hover:to-indigo-700 text-white text-xs font-black rounded-2xl shadow-md transition-all active:scale-95 cursor-pointer flex items-center justify-center space-x-2"
              >
                <Plus className="w-4 h-4" />
                <span>Tambah Item Baru</span>
              </button>
            )}
          </div>
        </section>

        {/* TAB NAVIGATION */}
        <section className="flex items-center space-x-3 border-b border-slate-200 dark:border-slate-800 pb-2 select-none">
          <button
            onClick={() => setAdminTab('kamus')}
            className={`px-5 py-2.5 rounded-2xl text-xs font-extrabold transition-all cursor-pointer flex items-center space-x-2 ${adminTab === 'kamus'
              ? 'bg-slate-900 text-white dark:bg-slate-100 dark:text-slate-900 shadow-md'
              : 'text-slate-500 hover:bg-slate-200 dark:hover:bg-slate-800'
              }`}
          >
            <Database className="w-4 h-4" />
            <span>Kamus WaniKani 60 Level</span>
          </button>
          <button
            onClick={() => setAdminTab('users')}
            className={`px-5 py-2.5 rounded-2xl text-xs font-extrabold transition-all cursor-pointer flex items-center space-x-2 ${adminTab === 'users'
              ? 'bg-slate-900 text-white dark:bg-slate-100 dark:text-slate-900 shadow-md'
              : 'text-slate-500 hover:bg-slate-200 dark:hover:bg-slate-800'
              }`}
          >
            <User className="w-4 h-4" />
            <span>Manajemen Pengguna ({users.length})</span>
          </button>
        </section>

        {/* TAB CONTENTS */}
        {adminTab === 'kamus' ? (
          loading && items.length === 0 ? (
            <div className="p-16 text-center space-y-3">
              <Loader2 className="w-8 h-8 text-rose-500 animate-spin mx-auto" />
              <p className="text-xs font-bold text-slate-400">Memuat data kamus dari Supabase...</p>
            </div>
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
          )
        ) : (
          <UserManager
            users={users}
            userSearchQuery={userSearchQuery}
            setUserSearchQuery={setUserSearchQuery}
            updatingUserId={updatingUserId}
            handleSetUserLevel={handleSetUserLevel}
            loadUsers={loadUsers}
          />
        )}

      </main>

      {/* MODAL EDITOR ITEM */}
      <ItemEditorModal
        isOpen={isModalOpen}
        setIsOpen={setIsModalOpen}
        formItem={formItem}
        setFormItem={setFormItem}
        handleSaveItem={handleSaveItem}
        formLoading={formLoading}
        ranks={[]}
      />

      <Footer />
    </div>
  );
}
