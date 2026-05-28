'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import * as wanakana from 'wanakana';
import {
  Plus, Edit2, Trash2, Search, Filter, ArrowLeft, BookOpen,
  Sparkles, Save, X, ChevronRight, Layers, Database, ShieldAlert,
  Loader2, AlertCircle, RefreshCw, CheckCircle2, FileText, Languages, User
} from 'lucide-react';


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

  // Statistics
  const [stats, setStats] = useState({
    total: 0,
    radical: 0,
    kanji: 0,
    vocabulary: 0,
  });

  // Modal State
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [formLoading, setFormLoading] = useState(false);
  const [activeFormTab, setActiveFormTab] = useState<'basic' | 'mnemonics' | 'meanings' | 'readings' | 'sentences' | 'prerequisites'>('basic');

  // Initial empty form state
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

  // User Manager & Developer Settings States
  const [adminTab, setAdminTab] = useState<'kamus' | 'users'>('kamus');
  const [users, setUsers] = useState<any[]>([]);
  const [userSearchQuery, setUserSearchQuery] = useState('');
  const [updatingUserId, setUpdatingUserId] = useState<string | null>(null);

  // 1. Check Auth & Dev Mode
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

  // 1.5 Check accessing user's active level dynamically (matching dashboard logic)
  const checkUserLevel = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) return 1;

      // Fetch user progress for Kanji items
      const { data: progresses } = await supabase
        .from('user_progress')
        .select('item_id, srs_stage')
        .eq('user_id', user.id);

      // Fetch all kanji items level
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

  // 2. Fetch database items
  const loadDatabase = async (selectedLvl?: string) => {
    setLoading(true);
    try {
      // 1. Fetch total statistics dynamically using lightweight head counts
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

      // 2. Fetch actual items, filtered server-side to save loading time
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
      alert('Gagal mengambil data dari Supabase. Pastikan Anda telah menjalankan konfigurasi RLS Policies.');
    } finally {
      setLoading(false);
    }
  };

  // 2.5 Load user profiles via get_leaderboard RPC
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

  // 2.6 Set another user's level override via update_user_level RPC
  const handleSetUserLevel = async (userId: string, newLevel: number | null) => {
    setUpdatingUserId(userId);
    try {
      const { error } = await supabase.rpc('update_user_level', {
        p_user_id: userId,
        p_level: newLevel
      });
      if (error) throw error;
      alert('Sukses! Level pengguna berhasil diperbarui.');
      loadUsers(); // Refresh
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

  // Enable Dev Mode directly from this page
  const handleEnableDevMode = () => {
    localStorage.setItem('kanigani-dev-mode', 'true');
    setDevMode(true);
    window.dispatchEvent(new Event('storage'));
  };

  // 3. Form Management Handlers
  const openAddModal = () => {
    setFormItem(initialFormState);
    setActiveFormTab('basic');
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
    setActiveFormTab('basic');
    setIsModalOpen(true);
  };

  // Change type triggers updates to meaning/reading structure defaults
  const handleTypeChange = (type: 'radical' | 'kanji' | 'vocabulary') => {
    setFormItem(prev => {
      let readings = [...prev.readings];
      let sentences = [...prev.context_sentences];

      if (type === 'radical') {
        readings = [];
        sentences = [];
      } else if (type === 'kanji') {
        sentences = [];
        if (readings.length === 0) {
          readings = [{ reading: '', reading_type: 'onyomi', primary_reading: true, accepted_answer: true }];
        }
      } else if (type === 'vocabulary') {
        if (readings.length === 0) {
          readings = [{ reading: '', reading_type: null, primary_reading: true, accepted_answer: true }];
        }
        if (sentences.length === 0) {
          sentences = [{ japanese: '', indonesian: '' }];
        }
      }

      return {
        ...prev,
        type,
        readings,
        context_sentences: sentences,
        prerequisites: []
      };
    });
  };

  // 4. Meanings List Managers
  const addMeaningRow = () => {
    setFormItem(prev => ({
      ...prev,
      meanings: [...prev.meanings, { meaning: '', primary_meaning: false, accepted_answer: true }]
    }));
  };

  const removeMeaningRow = (index: number) => {
    setFormItem(prev => {
      const meanings = prev.meanings.filter((_, i) => i !== index);
      // Re-assign primary if we deleted the primary meaning
      if (prev.meanings[index]?.primary_meaning && meanings.length > 0) {
        meanings[0].primary_meaning = true;
      }
      return { ...prev, meanings };
    });
  };

  const updateMeaningField = (index: number, field: keyof MeaningInput, value: any) => {
    setFormItem(prev => {
      const meanings = prev.meanings.map((m, i) => {
        if (i !== index) {
          // If setting this to primary, set others to false
          if (field === 'primary_meaning' && value === true) {
            return { ...m, primary_meaning: false };
          }
          return m;
        }
        return { ...m, [field]: value };
      });
      return { ...prev, meanings };
    });
  };

  // 5. Readings List Managers
  const addReadingRow = () => {
    setFormItem(prev => ({
      ...prev,
      readings: [...prev.readings, {
        reading: '',
        reading_type: prev.type === 'kanji' ? 'onyomi' : null,
        primary_reading: prev.readings.length === 0,
        accepted_answer: true
      }]
    }));
  };

  const removeReadingRow = (index: number) => {
    setFormItem(prev => {
      const readings = prev.readings.filter((_, i) => i !== index);
      if (prev.readings[index]?.primary_reading && readings.length > 0) {
        readings[0].primary_reading = true;
      }
      return { ...prev, readings };
    });
  };

  const updateReadingField = (index: number, field: keyof ReadingInput, value: any) => {
    setFormItem(prev => {
      const readings = prev.readings.map((r, i) => {
        if (i !== index) {
          if (field === 'primary_reading' && value === true) {
            return { ...r, primary_reading: false };
          }
          return r;
        }

        // Realtime Romaji to Kana conversion
        if (field === 'reading') {
          const inputVal = value as string;
          // Only transliterate if it's hiragana/katakana suitable (Japanese characters)
          const converted = wanakana.toKana(inputVal, { IMEMode: true });
          return { ...r, reading: converted };
        }

        return { ...r, [field]: value };
      });
      return { ...prev, readings };
    });
  };

  // 6. Sentences List Managers
  const addSentenceRow = () => {
    setFormItem(prev => ({
      ...prev,
      context_sentences: [...prev.context_sentences, { japanese: '', indonesian: '' }]
    }));
  };

  const removeSentenceRow = (index: number) => {
    setFormItem(prev => ({
      ...prev,
      context_sentences: prev.context_sentences.filter((_, i) => i !== index)
    }));
  };

  const updateSentenceField = (index: number, field: keyof SentenceInput, value: string) => {
    setFormItem(prev => {
      const context_sentences = prev.context_sentences.map((s, i) => {
        if (i !== index) return s;
        return { ...s, [field]: value };
      });
      return { ...prev, context_sentences };
    });
  };

  // 7. Save Item to Supabase
  const handleSaveItem = async () => {
    // Validations
    if (!formItem.character.trim()) {
      alert('Karakter tidak boleh kosong!');
      setActiveFormTab('basic');
      return;
    }
    if (!formItem.slug.trim()) {
      alert('Nama Slug/Arti Utama tidak boleh kosong!');
      setActiveFormTab('basic');
      return;
    }

    // Meanings Validation
    const filledMeanings = formItem.meanings.filter(m => m.meaning.trim() !== '');
    if (filledMeanings.length === 0) {
      alert('Harus mengisi minimal satu arti!');
      setActiveFormTab('meanings');
      return;
    }
    const hasPrimaryMeaning = filledMeanings.some(m => m.primary_meaning);
    if (!hasPrimaryMeaning) {
      alert('Harus menetapkan satu arti sebagai arti utama (Primary Meaning)!');
      setActiveFormTab('meanings');
      return;
    }

    // Readings & Sentences Validation for Kanji / Vocab
    if (formItem.type !== 'radical') {
      const filledReadings = formItem.readings.filter(r => r.reading.trim() !== '');
      if (filledReadings.length === 0) {
        alert('Kanji atau Kosakata harus memiliki minimal satu cara baca!');
        setActiveFormTab('readings');
        return;
      }
      const hasPrimaryReading = filledReadings.some(r => r.primary_reading);
      if (!hasPrimaryReading) {
        alert('Harus menetapkan satu cara baca sebagai utama (Primary Reading)!');
        setActiveFormTab('readings');
        return;
      }
    }

    setFormLoading(true);
    try {
      const isEdit = !!formItem.id;
      let itemId = formItem.id;

      // 1. SIMPAN KE TABEL ITEMS
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

        // Bersihkan data relasional lama sebelum memasukkan yang baru (Atomic overwrite)
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

        // Opsional: daftarkan user_progress untuk user saat ini jika baru dibuat
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

      // 2. SIMPAN MEANINGS BARU
      if (itemId) {
        const meaningsToInsert = filledMeanings.map(m => ({
          item_id: itemId,
          meaning: m.meaning.trim(),
          primary_meaning: m.primary_meaning,
          accepted_answer: m.accepted_answer
        }));
        const { error: mErr } = await supabase.from('item_meanings').insert(meaningsToInsert);
        if (mErr) throw mErr;

        // 3. SIMPAN READINGS BARU (KANJI / VOCAB)
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

        // 4. SIMPAN KALIMAT CONTOH (VOCABULARY ONLY)
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

        // 5. SIMPAN PRASYARAT HUBUNGAN BARU (KANJI & VOCAB)
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
      let errMsg = 'Gagal menyimpan item.';
      if (err) {
        if (err.message) {
          errMsg = err.message;
          if (err.details) {
            errMsg += ` (${err.details})`;
          }
          if (err.hint) {
            errMsg += ` - Hint: ${err.hint}`;
          }
        } else if (err instanceof Error) {
          errMsg = err.message;
        } else {
          errMsg = typeof err === 'object' ? JSON.stringify(err) : String(err);
        }
      }
      alert('Terjadi kesalahan saat menyimpan: ' + errMsg);
    } finally {
      setFormLoading(false);
    }
  };

  // 8. Delete Handler
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
      let errMsg = 'Gagal menghapus item.';
      if (err) {
        if (err.message) {
          errMsg = err.message;
          if (err.details) {
            errMsg += ` (${err.details})`;
          }
        } else if (err instanceof Error) {
          errMsg = err.message;
        } else {
          errMsg = typeof err === 'object' ? JSON.stringify(err) : String(err);
        }
      }
      alert('Gagal menghapus item: ' + errMsg);
    }
  };

  // Filtering & Search
  const filteredItems = items.filter(item => {
    // Filter Type
    if (filterType !== 'all' && item.type !== filterType) return false;

    // Filter Level
    if (filterLevel !== 'all' && String(item.level) !== filterLevel) return false;

    // Search Query
    if (searchQuery.trim() !== '') {
      const query = searchQuery.toLowerCase().trim();
      const matchChar = item.character.toLowerCase().includes(query);
      const matchSlug = (item.slug || '').toLowerCase().includes(query);
      const matchMeanings = item.item_meanings?.some((m: any) => m.meaning.toLowerCase().includes(query));

      return matchChar || matchSlug || matchMeanings;
    }

    return true;
  });

  // Level selector list (Level 1 s/d Level 10)
  const levelList = Array.from({ length: 10 }, (_, i) => String(i + 1));

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
            <p className="text-sm text-slate-400 leading-relaxed">
              Halaman manipulasi database ini dilindungi dan hanya tersedia untuk keperluan administrasi pembelajaran. Silakan aktifkan Developer Mode untuk melanjutkan.
            </p>
            <div className="flex flex-col sm:flex-row justify-center gap-4">
              <button
                onClick={() => router.push('/dashboard')}
                className="px-6 py-3 bg-slate-800 hover:bg-slate-700 text-slate-200 font-bold rounded-2xl text-sm flex items-center justify-center space-x-2 transition-colors"
              >
                <ArrowLeft className="w-4 h-4" />
                <span>Kembali ke Dashboard</span>
              </button>
              <button
                onClick={handleEnableDevMode}
                className="px-6 py-3 bg-emerald-500 hover:bg-emerald-600 text-slate-950 font-black rounded-2xl text-sm flex items-center justify-center space-x-2 shadow-lg shadow-emerald-500/10 hover:shadow-emerald-500/20 transition-all"
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

              <div className="flex items-center gap-3 shrink-0">
                <button
                  onClick={() => loadDatabase()}
                  className="p-3 bg-slate-100 hover:bg-slate-250 dark:bg-slate-800 dark:hover:bg-slate-700 border border-slate-200 dark:border-slate-700 text-slate-650 dark:text-slate-300 rounded-2xl transition-colors"
                  title="Refresh Database"
                >
                  <RefreshCw className="w-5 h-5" />
                </button>
                <button
                  onClick={openAddModal}
                  className="px-5 py-3 bg-indigo-600 hover:bg-indigo-700 text-white font-bold rounded-2xl shadow-lg shadow-indigo-600/10 hover:shadow-indigo-600/20 text-sm flex items-center justify-center space-x-2 transition-all"
                >
                  <Plus className="w-5 h-5" />
                  <span>Tambah Item Baru</span>
                </button>
              </div>
            </section>

            {/* TAB SELECTOR (KAMUS VS USERS) */}
            <div className="flex space-x-3 p-1.5 bg-white/50 dark:bg-slate-900/50 backdrop-blur-md rounded-2xl border border-slate-200/50 dark:border-slate-800/50 w-full sm:w-fit shadow-xs">
              <button
                onClick={() => setAdminTab('kamus')}
                className={`flex items-center space-x-2 px-5 py-2.5 rounded-xl text-xs font-bold transition-all ${adminTab === 'kamus'
                  ? 'bg-indigo-600 text-white shadow-md'
                  : 'text-slate-600 dark:text-slate-450 hover:bg-slate-100 dark:hover:bg-slate-850 hover:text-slate-900 dark:hover:text-slate-200'
                }`}
              >
                <Database className="w-4 h-4" />
                <span>Pengelola Kamus</span>
              </button>
              <button
                onClick={() => setAdminTab('users')}
                className={`flex items-center space-x-2 px-5 py-2.5 rounded-xl text-xs font-bold transition-all ${adminTab === 'users'
                  ? 'bg-indigo-600 text-white shadow-md'
                  : 'text-slate-600 dark:text-slate-450 hover:bg-slate-100 dark:hover:bg-slate-850 hover:text-slate-900 dark:hover:text-slate-200'
                }`}
              >
                <User className="w-4 h-4" />
                <span>Manajer Level Pengguna</span>
              </button>
            </div>

            {adminTab === 'users' ? (
              <div className="space-y-6 animate-fade-in">
                {/* USER SEARCH BAR */}
                <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col sm:flex-row gap-4 items-center justify-between">
                  <div className="relative w-full sm:max-w-md">
                    <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
                    <input
                      type="text"
                      placeholder="Cari pembelajar berdasarkan username..."
                      value={userSearchQuery}
                      onChange={(e) => setUserSearchQuery(e.target.value)}
                      className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
                    />
                  </div>
                  <button
                    onClick={loadUsers}
                    className="px-5 py-3 bg-slate-100 hover:bg-slate-250 dark:bg-slate-800 dark:hover:bg-slate-700 border border-slate-200 dark:border-slate-700 text-slate-655 dark:text-slate-350 font-bold rounded-2xl text-xs flex items-center justify-center space-x-2 transition-all cursor-pointer"
                  >
                    <RefreshCw className="w-4 h-4" />
                    <span>Muat Ulang Pengguna</span>
                  </button>
                </section>

                {/* USER LIST CARDS */}
                {users.length > 0 ? (
                  <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {users
                      .filter(u => u.username.toLowerCase().includes(userSearchQuery.toLowerCase()))
                      .map((userItem) => (
                        <div
                          key={userItem.id}
                          className="bg-white dark:bg-slate-900 p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-xs space-y-4 hover:shadow-md transition-all duration-350 relative overflow-hidden group"
                        >
                          <div className="flex items-center space-x-4">
                            <div className="w-12 h-12 bg-gradient-to-br from-indigo-500 to-purple-500 rounded-xl flex items-center justify-center text-white font-black text-lg shadow-sm">
                              {userItem.username.slice(0, 2).toUpperCase()}
                            </div>
                            <div className="flex-1 min-w-0">
                              <h4 className="font-extrabold text-slate-850 dark:text-slate-100 truncate text-sm select-all">
                                {userItem.username}
                              </h4>
                              <p className="text-4xs font-bold text-slate-450 uppercase tracking-widest mt-0.5">
                                Skor Belajar: <span className="text-indigo-500 dark:text-indigo-400 font-black">{userItem.points}</span>
                              </p>
                            </div>
                          </div>

                          {/* Dynamic Level Override Action */}
                          <div className="bg-slate-50 dark:bg-slate-950 p-4 rounded-2xl border border-slate-150 dark:border-slate-850 flex items-center justify-between gap-2">
                            <div>
                              <span className="text-4xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Status Level</span>
                              <span className="text-xs font-black text-slate-850 dark:text-slate-200">
                                Lvl {userItem.level} {userItem.override_level !== null && userItem.override_level !== undefined ? "🔒 (Locked)" : "⚡ (Dinamis)"}
                              </span>
                            </div>

                            {/* Set level controls */}
                            <div className="flex items-center space-x-2 shrink-0">
                              <select
                                value={userItem.override_level !== null && userItem.override_level !== undefined ? userItem.override_level : "dynamic"}
                                onChange={(e) => {
                                  const val = e.target.value;
                                  handleSetUserLevel(userItem.id, val === "dynamic" ? null : Number(val));
                                }}
                                disabled={updatingUserId === userItem.id}
                                className="py-1.5 px-3 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xxs font-extrabold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500 disabled:opacity-50"
                              >
                                <option value="dynamic">Otomatis (Dinamis)</option>
                                {Array.from({ length: 10 }, (_, idx) => (
                                  <option key={idx + 1} value={idx + 1}>Set Level {idx + 1}</option>
                                ))}
                              </select>
                            </div>
                          </div>

                          {updatingUserId === userItem.id && (
                            <div className="absolute inset-0 bg-slate-950/40 backdrop-blur-xs flex items-center justify-center rounded-3xl">
                              <Loader2 className="w-8 h-8 text-indigo-500 animate-spin" />
                            </div>
                          )}
                        </div>
                      ))}
                  </div>
                ) : (
                  <section className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl p-12 text-center text-slate-400 dark:text-slate-500 shadow-sm space-y-3">
                    <Loader2 className="w-10 h-10 mx-auto text-indigo-500 animate-spin" />
                    <h3 className="font-bold text-sm">Sedang Memuat Pengguna...</h3>
                  </section>
                )}
              </div>
            ) : (
              <>
                {/* STATISTICS OVERVIEW */}
                <section className="grid grid-cols-2 lg:grid-cols-4 gap-4 sm:gap-6">
                  {[
                    { label: 'Total Item Kamus', count: stats.total, color: 'text-indigo-500 bg-indigo-50 dark:bg-indigo-950/20 border-indigo-100 dark:border-indigo-900/50' },
                    { label: 'Radikal (Cyan)', count: stats.radical, color: 'text-radical bg-radical/5 border-radical/10 dark:bg-radical/10' },
                    { label: 'Karakter Kanji (Pink)', count: stats.kanji, color: 'text-kanji bg-kanji/5 border-kanji/10 dark:bg-kanji/10' },
                    { label: 'Kosakata (Purple)', count: stats.vocabulary, color: 'text-vocab bg-vocab/5 border-vocab/10 dark:bg-vocab/10' },
                  ].map((stat, idx) => (
                    <div key={idx} className={`p-5 rounded-2xl border text-center space-y-1 ${stat.color} shadow-xxs transition-transform hover:scale-102 duration-200`}>
                      <span className="text-xxs font-bold uppercase tracking-widest text-slate-400 dark:text-slate-500 block">{stat.label}</span>
                      <span className="text-3xl font-black block">{stat.count}</span>
                    </div>
                  ))}
                </section>

                {/* SEARCH AND FILTERS */}
                <section className="bg-white dark:bg-slate-900 p-4 sm:p-6 rounded-3xl border border-slate-200 dark:border-slate-800 shadow-sm flex flex-col md:flex-row gap-4 items-center justify-between">
                  {/* Search Bar */}
                  <div className="relative w-full md:max-w-md">
                    <Search className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-slate-400" />
                    <input
                      type="text"
                      placeholder="Cari karakter, slug, atau arti..."
                      value={searchQuery}
                      onChange={(e) => setSearchQuery(e.target.value)}
                      className="w-full pl-11 pr-4 py-3 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all"
                    />
                  </div>

                  {/* Filters select */}
                  <div className="flex flex-wrap items-center gap-3 w-full md:w-auto">
                    <div className="flex items-center space-x-1.5 px-3 py-2 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl">
                      <Filter className="w-4 h-4 text-slate-400" />
                      <span className="text-xxs font-bold text-slate-400 uppercase tracking-wider">Filter</span>
                    </div>

                    {/* Type Filter */}
                    <select
                      value={filterType}
                      onChange={(e: any) => setFilterType(e.target.value)}
                      className="py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 focus:ring-indigo-500"
                    >
                      <option value="all">Semua Tipe</option>
                      <option value="radical">Radikal</option>
                      <option value="kanji">Kanji</option>
                      <option value="vocabulary">Kosakata</option>
                    </select>

                    {/* Level Filter */}
                    <select
                      value={filterLevel}
                      onChange={(e) => {
                        const newLvl = e.target.value;
                        setFilterLevel(newLvl);
                        loadDatabase(newLvl);
                      }}
                      className="py-2.5 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 text-xs font-bold rounded-2xl focus:outline-none focus:ring-1 focus:ring-indigo-500"
                    >
                      <option value="all">Semua Level</option>
                      {levelList.map(lvl => (
                        <option key={lvl} value={lvl}>Level {lvl}</option>
                      ))}
                    </select>
                  </div>
                </section>

                {/* DYNAMIC DATABASE ITEMS GRID */}
                {filteredItems.length > 0 ? (
                  <div className="space-y-8 animate-fade-in">
                    {Array.from(new Set(filteredItems.map(item => item.level))).sort((a, b) => a - b).map((lvl) => {
                      const levelItems = filteredItems.filter(item => item.level === lvl);

                      return (
                        <div key={lvl} className="space-y-4">
                          {/* Level Header Panel */}
                          <div className="bg-white dark:bg-slate-900 px-6 py-3.5 rounded-2xl border border-slate-200 dark:border-slate-850 shadow-2xs flex items-baseline space-x-2 shrink-0">
                            <span className="text-base font-extrabold text-slate-850 dark:text-slate-100">Level {lvl}</span>
                            <span className="text-xxs font-bold text-slate-400 dark:text-slate-550">({levelItems.length} item)</span>
                          </div>

                          {/* Grid of level items */}
                          <div className="flex flex-wrap gap-3 justify-start">
                            {levelItems.map((item) => {
                              const meanings = item.item_meanings || [];
                              const readings = item.item_readings || [];
                              const primaryMeaning = meanings.find((m: any) => m.primary_meaning)?.meaning || item.slug || 'item';
                              const primaryReading = readings.find((r: any) => r.primary_reading)?.reading || null;

                              let cardStyles = "";
                              let charBorderStyles = "";
                              let primaryReadingStyles = "";
                              let primaryMeaningStyles = "";

                              if (item.type === 'radical') {
                                cardStyles = "bg-radical/5 border-solid border-radical/20 dark:bg-radical/10 hover:border-radical/40 hover:shadow-radical/5";
                                charBorderStyles = "border-solid border-radical text-radical";
                                primaryMeaningStyles = "text-slate-750 dark:text-slate-200 font-black block text-xs capitalize";
                              } else if (item.type === 'kanji') {
                                cardStyles = "bg-kanji/5 border-solid border-kanji/20 dark:bg-kanji/10 hover:border-kanji/40 hover:shadow-kanji/5";
                                charBorderStyles = "border-solid border-kanji text-kanji";
                                primaryReadingStyles = "text-kanji/70 dark:text-kanji/80 font-bold block text-[10px]";
                                primaryMeaningStyles = "text-slate-750 dark:text-slate-200 font-black block text-xs capitalize";
                              } else { // vocabulary
                                cardStyles = "bg-vocab/5 border-solid border-vocab/20 dark:bg-vocab/10 hover:border-vocab/40 hover:shadow-vocab/5";
                                charBorderStyles = "border-solid border-vocab text-vocab";
                                primaryReadingStyles = "text-vocab/70 dark:text-vocab/80 font-bold block text-[10px]";
                                primaryMeaningStyles = "text-slate-750 dark:text-slate-200 font-black block text-xs capitalize";
                              }

                              return (
                                <div
                                  key={item.id}
                                  className={`group relative pt-4 pb-3 px-4 rounded-2xl border flex flex-col justify-between items-center text-center transition-all duration-300 hover:-translate-y-0.5 h-28 select-none whitespace-nowrap overflow-hidden ${cardStyles}`}
                                >
                                  {/* Character with Solid Border */}
                                  <div className={`px-4 py-1 border rounded-xl font-japanese font-black text-2xl mb-1 transition-transform duration-300 group-hover:scale-105 ${charBorderStyles}`}>
                                    {item.character}
                                  </div>

                                  {/* Readings & Meanings stack */}
                                  <div className="flex flex-col items-center leading-none mt-1 space-y-0.5 max-w-full">
                                    {primaryReading && (
                                      <span className={primaryReadingStyles}>
                                        {primaryReading}
                                      </span>
                                    )}
                                    <span className={`${primaryMeaningStyles} truncate max-w-full`} title={primaryMeaning}>
                                      {primaryMeaning}
                                    </span>
                                  </div>

                                  {/* HOVER HOOD ACTION CONTROLS */}
                                  <div className="absolute inset-0 bg-slate-950/80 backdrop-blur-xs rounded-2xl opacity-0 group-hover:opacity-100 flex items-center justify-center space-x-3 transition-opacity duration-200">
                                    {deleteConfirmId === item.id ? (
                                      <div className="flex flex-col items-center p-2 space-y-2">
                                        <span className="text-4xs font-black text-rose-400 uppercase tracking-widest">Yakin hapus?</span>
                                        <div className="flex space-x-1.5">
                                          <button
                                            onClick={() => setDeleteConfirmId(null)}
                                            className="px-2 py-1 bg-slate-800 hover:bg-slate-700 text-3xs font-extrabold rounded-md text-slate-350"
                                          >
                                            Batal
                                          </button>
                                          <button
                                            onClick={() => handleDeleteItem(item.id)}
                                            className="px-2 py-1 bg-rose-500 hover:bg-rose-600 text-3xs font-extrabold rounded-md text-white"
                                          >
                                            Hapus
                                          </button>
                                        </div>
                                      </div>
                                    ) : (
                                      <>
                                        <button
                                          onClick={() => openEditModal(item)}
                                          className="p-2.5 bg-slate-800 hover:bg-indigo-650 text-slate-200 hover:text-white rounded-xl transition-all"
                                          title="Sunting Item"
                                        >
                                          <Edit2 className="w-4 h-4" />
                                        </button>
                                        <button
                                          onClick={() => setDeleteConfirmId(item.id)}
                                          className="p-2.5 bg-slate-800 hover:bg-rose-900/80 text-slate-250 hover:text-rose-450 rounded-xl transition-all"
                                          title="Hapus Item"
                                        >
                                          <Trash2 className="w-4 h-4" />
                                        </button>
                                      </>
                                    )}
                                  </div>
                                </div>
                              );
                            })}
                          </div>
                        </div>
                      );
                    })}
                  </div>
                ) : (
                  <section className="bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 rounded-3xl p-12 text-center text-slate-400 dark:text-slate-500 shadow-sm space-y-3">
                    <Database className="w-12 h-12 mx-auto opacity-30 animate-pulse" />
                    <h3 className="font-bold text-sm">Tidak Ada Item Ditemukan</h3>
                    <p className="text-xs text-slate-450 max-w-sm mx-auto">
                      Coba sesuaikan kata kunci pencarian Anda atau ubah filter penyaringan radikal/kanji/kosakata.
                    </p>
                  </section>
                )}
              </>
            )}
          </>
        )}
      </main>

      <Footer />

      {/* DYNAMIC FULL-MODAL / DRAWER FORM FOR CREATE & EDIT */}
      {isModalOpen && (
        <div className="fixed inset-0 z-50 overflow-y-auto bg-slate-950/70 backdrop-blur-md flex items-center justify-center p-4 sm:p-6 transition-all duration-300">
          <div className="bg-white dark:bg-slate-900 w-full max-w-3xl rounded-3xl border border-slate-200 dark:border-slate-800 shadow-2xl overflow-hidden flex flex-col max-h-[90vh] animate-fade-in">

            {/* Modal Colored Header Banner based on Item type */}
            <div className={`p-6 text-white flex items-center justify-between shrink-0 transition-colors duration-300 ${formItem.type === 'radical'
              ? 'bg-radical-gradient'
              : formItem.type === 'kanji'
                ? 'bg-kanji-gradient'
                : 'bg-vocab-gradient'
              }`}>
              <div className="flex items-center space-x-3">
                <div className="w-10 h-10 rounded-xl bg-white/20 backdrop-blur-sm flex items-center justify-center font-bold text-lg">
                  {formItem.character || '?'}
                </div>
                <div>
                  <span className="text-4xs font-black uppercase tracking-widest block opacity-75">
                    {formItem.id ? 'Mode Edit Item' : 'Mode Tambah Baru'}
                  </span>
                  <h3 className="text-lg font-black tracking-tight leading-tight">
                    {formItem.id ? `Edit ${formItem.slug}` : `Item Baru (${formItem.type})`}
                  </h3>
                </div>
              </div>
              <button
                onClick={() => setIsModalOpen(false)}
                className="p-1.5 hover:bg-white/20 rounded-lg transition-colors text-white"
              >
                <X className="w-5 h-5" />
              </button>
            </div>

            {/* Modal Internal Tabs list */}
            <div className="flex border-b border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-950 shrink-0 text-xs sm:text-sm font-semibold overflow-x-auto">
              <button
                onClick={() => setActiveFormTab('basic')}
                className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors ${activeFormTab === 'basic'
                  ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                  : 'border-transparent text-slate-550 dark:text-slate-400 hover:text-slate-850 dark:hover:text-slate-200'
                  }`}
              >
                Data Dasar
              </button>
              <button
                onClick={() => setActiveFormTab('mnemonics')}
                className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors ${activeFormTab === 'mnemonics'
                  ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                  : 'border-transparent text-slate-550 dark:text-slate-400 hover:text-slate-850 dark:hover:text-slate-200'
                  }`}
              >
                Mnemonik
              </button>
              <button
                onClick={() => setActiveFormTab('meanings')}
                className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors flex items-center space-x-1.5 ${activeFormTab === 'meanings'
                  ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                  : 'border-transparent text-slate-550 dark:text-slate-400 hover:text-slate-850 dark:hover:text-slate-200'
                  }`}
              >
                <span>Daftar Arti</span>
                <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
                  {formItem.meanings.filter(m => m.meaning.trim() !== '').length}
                </span>
              </button>

              {formItem.type !== 'radical' && (
                <button
                  onClick={() => setActiveFormTab('readings')}
                  className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors flex items-center space-x-1.5 ${activeFormTab === 'readings'
                    ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                    : 'border-transparent text-slate-550 dark:text-slate-400 hover:text-slate-850 dark:hover:text-slate-200'
                    }`}
                >
                  <span>Cara Baca</span>
                  <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
                    {formItem.readings.filter(r => r.reading.trim() !== '').length}
                  </span>
                </button>
              )}

              {formItem.type === 'vocabulary' && (
                <button
                  onClick={() => setActiveFormTab('sentences')}
                  className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors flex items-center space-x-1.5 ${activeFormTab === 'sentences'
                    ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                    : 'border-transparent text-slate-550 dark:text-slate-400 hover:text-slate-850 dark:hover:text-slate-200'
                    }`}
                >
                  <span>Kalimat Contoh</span>
                  <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
                    {formItem.context_sentences.filter(s => s.japanese.trim() !== '').length}
                  </span>
                </button>
              )}

              {formItem.type !== 'radical' && (
                <button
                  onClick={() => setActiveFormTab('prerequisites')}
                  className={`py-3.5 px-4 sm:px-6 border-b-2 transition-colors flex items-center space-x-1.5 ${activeFormTab === 'prerequisites'
                    ? 'border-indigo-500 text-indigo-500 dark:text-indigo-400 bg-white dark:bg-slate-900/50'
                    : 'border-transparent text-slate-550 dark:text-slate-400 hover:text-slate-850 dark:hover:text-slate-200'
                    }`}
                >
                  <span>Prasyarat</span>
                  <span className="px-1.5 py-0.5 bg-slate-200 dark:bg-slate-800 rounded-md text-3xs font-extrabold">
                    {formItem.prerequisites.length}
                  </span>
                </button>
              )}
            </div>

            {/* TAB CONTAINER BODY */}
            <div className="flex-1 p-6 sm:p-8 overflow-y-auto space-y-6">

              {/* TAB 1: BASIC INFORMATION DATA */}
              {activeFormTab === 'basic' && (
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-6 animate-fade-in">

                  {/* Item Type selection */}
                  <div>
                    <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Tipe Item Kamus</label>
                    <select
                      value={formItem.type}
                      onChange={(e) => handleTypeChange(e.target.value as any)}
                      disabled={!!formItem.id} // Cannot change type on edit
                      className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 disabled:opacity-50"
                    >
                      <option value="radical">Radikal (Radical)</option>
                      <option value="kanji">Karakter Kanji</option>
                      <option value="vocabulary">Kosakata (Vocabulary)</option>
                    </select>
                  </div>

                  {/* Character input */}
                  <div>
                    <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Karakter Jepang</label>
                    <input
                      type="text"
                      placeholder="Contoh: 水, 魚, 食べる"
                      value={formItem.character}
                      onChange={(e) => setFormItem(prev => ({ ...prev, character: e.target.value }))}
                      className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                    />
                  </div>

                  {/* Slug / Primary meaning name */}
                  <div>
                    <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Slug / Nama Kunci</label>
                    <input
                      type="text"
                      placeholder="Contoh: water, fish, to eat"
                      value={formItem.slug}
                      onChange={(e) => setFormItem(prev => ({ ...prev, slug: e.target.value }))}
                      className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                    />
                  </div>

                  {/* Level selection */}
                  <div>
                    <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Tingkatan Level (1 - 10)</label>
                    <input
                      type="number"
                      min="1"
                      max="10"
                      value={formItem.level}
                      onChange={(e) => setFormItem(prev => ({ ...prev, level: Number(e.target.value) }))}
                      className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                    />
                  </div>

                  {/* Lesson Queue Position */}
                  <div className="sm:col-span-2">
                    <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Urutan Lesson (lesson_position)</label>
                    <input
                      type="number"
                      min="0"
                      value={formItem.lesson_position}
                      onChange={(e) => setFormItem(prev => ({ ...prev, lesson_position: Number(e.target.value) }))}
                      className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-sm font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500"
                    />
                    <span className="text-4xs text-slate-400 mt-1 block">Semakin kecil angkanya, semakin awal diajarkan pada lesson kelompok.</span>
                  </div>

                </div>
              )}

              {/* TAB 2: MNEMONIC ORAL NOTES */}
              {activeFormTab === 'mnemonics' && (
                <div className="space-y-6 animate-fade-in">

                  {/* Meaning Mnemonic */}
                  <div>
                    <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Mnemonic Arti Kata</label>
                    <textarea
                      rows={3}
                      placeholder="Jembatan keledai untuk menghafal arti. Anda bisa mengaitkan radikal pembentuknya."
                      value={formItem.meaning_mnemonic}
                      onChange={(e) => setFormItem(prev => ({ ...prev, meaning_mnemonic: e.target.value }))}
                      className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-xs font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 leading-relaxed"
                    />
                  </div>

                  {/* Reading Mnemonic (Not for radical) */}
                  {formItem.type !== 'radical' && (
                    <div>
                      <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Mnemonic Cara Baca</label>
                      <textarea
                        rows={3}
                        placeholder="Jembatan keledai untuk menghafal cara baca kanji atau kosakata (Kana)."
                        value={formItem.reading_mnemonic}
                        onChange={(e) => setFormItem(prev => ({ ...prev, reading_mnemonic: e.target.value }))}
                        className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-xs font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 leading-relaxed"
                      />
                    </div>
                  )}

                  {/* Description detail */}
                  <div>
                    <label className="text-xxs font-bold text-slate-400 uppercase tracking-widest mb-1.5 block">Deskripsi Detail Karakter</label>
                    <textarea
                      rows={3}
                      placeholder="Penjelasan mendetail mengenai kegunaan radikal atau info bahasa dari kosakata ini."
                      value={formItem.description}
                      onChange={(e) => setFormItem(prev => ({ ...prev, description: e.target.value }))}
                      className="w-full py-3 px-4 bg-slate-50 dark:bg-slate-950 border border-slate-250 dark:border-slate-850 text-xs font-semibold rounded-2xl focus:outline-none focus:ring-2 focus:ring-indigo-500 leading-relaxed"
                    />
                  </div>

                </div>
              )}

              {/* TAB 3: DYNAMIC LIST OF MEANINGS */}
              {activeFormTab === 'meanings' && (
                <div className="space-y-4 animate-fade-in">
                  <div className="flex items-center justify-between">
                    <div>
                      <h4 className="font-extrabold text-sm">Daftar Arti Item</h4>
                      <p className="text-4xs text-slate-400">Tentukan satu makna sebagai *Primary* (makna utama diuji) dan centang *Accepted* untuk sinonim yang diterima.</p>
                    </div>
                    <button
                      onClick={addMeaningRow}
                      className="px-3.5 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950 dark:hover:bg-indigo-900 border border-indigo-200 dark:border-indigo-900 text-indigo-600 dark:text-indigo-400 text-xs font-bold rounded-xl flex items-center space-x-1.5 transition-colors"
                    >
                      <Plus className="w-4 h-4" />
                      <span>Tambah Arti</span>
                    </button>
                  </div>

                  <div className="space-y-3.5 max-h-[300px] overflow-y-auto pr-2">
                    {formItem.meanings.map((m, idx) => (
                      <div
                        key={idx}
                        className={`flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 p-3 bg-slate-50 dark:bg-slate-950 border rounded-2xl transition-colors ${m.primary_meaning ? 'border-emerald-500/30 bg-emerald-500/5' : 'border-slate-200 dark:border-slate-850'
                          }`}
                      >
                        {/* Meaning Text input */}
                        <div className="flex-1 w-full">
                          <input
                            type="text"
                            placeholder="Ketik terjemahan arti (Inggris/Indonesia)..."
                            value={m.meaning}
                            onChange={(e) => updateMeaningField(idx, 'meaning', e.target.value)}
                            className="w-full px-3 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-semibold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500"
                          />
                        </div>

                        {/* Control options checkboxes */}
                        <div className="flex items-center gap-4 text-xxs font-bold shrink-0">
                          {/* Primary Radio style checkbox */}
                          <label className="flex items-center space-x-1.5 cursor-pointer">
                            <input
                              type="checkbox"
                              checked={m.primary_meaning}
                              onChange={(e) => updateMeaningField(idx, 'primary_meaning', e.target.checked)}
                              className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500"
                            />
                            <span className={m.primary_meaning ? 'text-emerald-500' : 'text-slate-450'}>Primary</span>
                          </label>

                          {/* Accepted answer */}
                          <label className="flex items-center space-x-1.5 cursor-pointer">
                            <input
                              type="checkbox"
                              checked={m.accepted_answer}
                              onChange={(e) => updateMeaningField(idx, 'accepted_answer', e.target.checked)}
                              className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500"
                            />
                            <span className="text-slate-450">Accepted</span>
                          </label>

                          {/* Delete row */}
                          <button
                            onClick={() => removeMeaningRow(idx)}
                            disabled={formItem.meanings.length <= 1}
                            className="p-1 text-slate-400 hover:text-rose-500 disabled:opacity-30 disabled:hover:text-slate-450 transition-colors"
                          >
                            <Trash2 className="w-4 h-4" />
                          </button>
                        </div>
                      </div>
                    ))}
                  </div>

                </div>
              )}

              {/* TAB 4: DYNAMIC LIST OF READINGS (KANJI / VOCAB) */}
              {activeFormTab === 'readings' && formItem.type !== 'radical' && (
                <div className="space-y-4 animate-fade-in">
                  <div className="flex items-center justify-between">
                    <div>
                      <h4 className="font-extrabold text-sm flex items-center space-x-1.5">
                        <Languages className="w-4 h-4 text-indigo-500" />
                        <span>Daftar Cara Baca (Readings)</span>
                      </h4>
                      <p className="text-4xs text-slate-400">
                        Ketik dalam Romaji, sistem akan mengonversi ke **Kana** secara real-time! Tentukan tipe bacaan Onyomi/Kunyomi (untuk Kanji).
                      </p>
                    </div>
                    <button
                      onClick={addReadingRow}
                      className="px-3.5 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950 dark:hover:bg-indigo-900 border border-indigo-200 dark:border-indigo-900 text-indigo-600 dark:text-indigo-400 text-xs font-bold rounded-xl flex items-center space-x-1.5 transition-colors"
                    >
                      <Plus className="w-4 h-4" />
                      <span>Tambah Bacaan</span>
                    </button>
                  </div>

                  <div className="space-y-3.5 max-h-[300px] overflow-y-auto pr-2">
                    {formItem.readings.map((r, idx) => (
                      <div
                        key={idx}
                        className={`flex flex-col lg:flex-row items-start lg:items-center justify-between gap-3 p-3 bg-slate-50 dark:bg-slate-950 border rounded-2xl transition-colors ${r.primary_reading ? 'border-emerald-500/30 bg-emerald-500/5' : 'border-slate-200 dark:border-slate-850'
                          }`}
                      >
                        {/* Reading Input (Auto transliterated) */}
                        <div className="flex-1 w-full relative">
                          <input
                            type="text"
                            placeholder="Ketik Romaji (contoh: sakana)..."
                            value={r.reading}
                            onChange={(e) => updateReadingField(idx, 'reading', e.target.value)}
                            className="w-full pl-3 pr-10 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-bold rounded-xl focus:outline-none focus:ring-1 focus:ring-indigo-500 tracking-wider"
                          />
                          <span className="absolute right-3 top-1/2 -translate-y-1/2 text-4xs font-bold text-indigo-500">Kana</span>
                        </div>

                        {/* Reading Type Selector (Kanji Only) */}
                        {formItem.type === 'kanji' && (
                          <div className="w-full lg:w-32 shrink-0">
                            <select
                              value={r.reading_type || 'onyomi'}
                              onChange={(e) => updateReadingField(idx, 'reading_type', e.target.value)}
                              className="w-full px-2.5 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-3xs font-extrabold rounded-xl focus:outline-none"
                            >
                              <option value="onyomi">Onyomi</option>
                              <option value="kunyomi">Kunyomi</option>
                              <option value="nanori">Nanori</option>
                            </select>
                          </div>
                        )}

                        {/* Checkbox triggers */}
                        <div className="flex items-center gap-4 text-xxs font-bold shrink-0 w-full lg:w-auto justify-end">
                          <label className="flex items-center space-x-1.5 cursor-pointer">
                            <input
                              type="checkbox"
                              checked={r.primary_reading}
                              onChange={(e) => updateReadingField(idx, 'primary_reading', e.target.checked)}
                              className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500"
                            />
                            <span className={r.primary_reading ? 'text-emerald-500' : 'text-slate-455'}>Primary</span>
                          </label>

                          <label className="flex items-center space-x-1.5 cursor-pointer">
                            <input
                              type="checkbox"
                              checked={r.accepted_answer}
                              onChange={(e) => updateReadingField(idx, 'accepted_answer', e.target.checked)}
                              className="w-3.5 h-3.5 text-indigo-600 border-slate-300 rounded focus:ring-indigo-500"
                            />
                            <span className="text-slate-455">Accepted</span>
                          </label>

                          <button
                            onClick={() => removeReadingRow(idx)}
                            className="p-1 text-slate-400 hover:text-rose-500 transition-colors"
                          >
                            <Trash2 className="w-4 h-4" />
                          </button>
                        </div>

                      </div>
                    ))}
                  </div>

                </div>
              )}
              {/* TAB 5: DYNAMIC LIST OF CONTEXT SENTENCES (VOCAB ONLY) */}
              {activeFormTab === 'sentences' && formItem.type === 'vocabulary' && (
                <div className="space-y-4 animate-fade-in">
                  <div className="flex items-center justify-between">
                    <div>
                      <h4 className="font-extrabold text-sm flex items-center space-x-1.5">
                        <FileText className="w-4 h-4 text-indigo-500" />
                        <span>Kalimat Contoh Kontekstual</span>
                      </h4>
                      <p className="text-4xs text-slate-400">Tambahkan kalimat contoh beserta artinya untuk mempermudah pemahaman kosakata.</p>
                    </div>
                    <button
                      onClick={addSentenceRow}
                      className="px-3.5 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950 dark:hover:bg-indigo-900 border border-indigo-200 dark:border-indigo-900 text-indigo-600 dark:text-indigo-400 text-xs font-bold rounded-xl flex items-center space-x-1.5 transition-colors"
                    >
                      <Plus className="w-4 h-4" />
                      <span>Tambah Kalimat</span>
                    </button>
                  </div>

                  <div className="space-y-4 max-h-[300px] overflow-y-auto pr-2">
                    {formItem.context_sentences.map((s, idx) => (
                      <div key={idx} className="p-4 bg-slate-50 dark:bg-slate-950 border border-slate-200 dark:border-slate-850 rounded-2xl space-y-3 relative group/row">
                        {/* Remove sentence row button */}
                        <button
                          onClick={() => removeSentenceRow(idx)}
                          className="absolute top-3 right-3 p-1 text-slate-400 hover:text-rose-500 transition-colors"
                        >
                          <Trash2 className="w-4 h-4" />
                        </button>

                        {/* Japanese Sentence */}
                        <div>
                          <label className="text-4xs font-black text-slate-400 uppercase tracking-wider mb-1 block">Kalimat Jepang</label>
                          <input
                            type="text"
                            placeholder="Contoh: 魚が水の中で泳いでいます。"
                            value={s.japanese}
                            onChange={(e) => updateSentenceField(idx, 'japanese', e.target.value)}
                            className="w-full px-3 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-bold rounded-xl focus:outline-none"
                          />
                        </div>

                        {/* Indonesian Translation */}
                        <div>
                          <label className="text-4xs font-black text-slate-400 uppercase tracking-wider mb-1 block">Arti Terjemahan</label>
                          <input
                            type="text"
                            placeholder="Contoh: Ikan sedang berenang di dalam air."
                            value={s.indonesian}
                            onChange={(e) => updateSentenceField(idx, 'indonesian', e.target.value)}
                            className="w-full px-3 py-2 bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 text-xs font-semibold rounded-xl focus:outline-none"
                          />
                        </div>
                      </div>
                    ))}
                  </div>

                </div>
              )}

              {/* TAB 6: DYNAMIC LIST OF PREREQUISITES (KANJI / VOCAB ONLY) */}
              {activeFormTab === 'prerequisites' && formItem.type !== 'radical' && (
                <div className="space-y-4 animate-fade-in">
                  <div>
                    <h4 className="font-extrabold text-sm flex items-center space-x-1.5">
                      <Layers className="w-4 h-4 text-indigo-500" />
                      <span>Item Prasyarat (Prerequisites)</span>
                    </h4>
                    <p className="text-4xs text-slate-400 leading-normal">
                      Tentukan item radikal atau kanji apa saja pembentuk item ini yang wajib dipelajari (mencapai status Guru) terlebih dahulu.
                      {formItem.type === 'kanji' ? ' (Pilih Radikal pembentuk)' : ' (Pilih Kanji pembentuk)'}
                    </p>
                  </div>

                  <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 max-h-[300px] overflow-y-auto pr-2">
                    {items
                      .filter(i => {
                        if (formItem.type === 'kanji') return i.type === 'radical';
                        if (formItem.type === 'vocabulary') return i.type === 'kanji';
                        return false;
                      })
                      .map((item) => {
                        const isChecked = formItem.prerequisites.includes(item.id);
                        return (
                          <div
                            key={item.id}
                            onClick={() => {
                              setFormItem(prev => {
                                const exists = prev.prerequisites.includes(item.id);
                                const newPrereqs = exists
                                  ? prev.prerequisites.filter(id => id !== item.id)
                                  : [...prev.prerequisites, item.id];
                                return { ...prev, prerequisites: newPrereqs };
                              });
                            }}
                            className={`p-3 rounded-2xl border flex items-center justify-between cursor-pointer transition-all duration-200 select-none ${isChecked
                              ? formItem.type === 'kanji'
                                ? 'bg-radical/10 border-radical text-radical'
                                : 'bg-kanji/10 border-kanji text-kanji'
                              : 'bg-slate-50 dark:bg-slate-950 border-slate-200 dark:border-slate-850 opacity-60 hover:opacity-100 text-slate-700 dark:text-slate-300'
                              }`}
                          >
                            <div className="flex flex-col">
                              <span className="text-xl font-black">{item.character}</span>
                              <span className="text-4xs uppercase tracking-wider truncate max-w-[80px] font-semibold mt-0.5 text-slate-500 dark:text-slate-400">
                                {item.slug || 'item'}
                              </span>
                            </div>
                            <span className="px-1.5 py-0.5 text-4xs font-black bg-slate-900/5 dark:bg-white/5 rounded text-slate-500">
                              Lvl {item.level}
                            </span>
                          </div>
                        );
                      })}
                  </div>
                </div>
              )}

            </div>

            {/* Modal Bottom Footer Actions */}
            <div className="p-4 border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-950 flex items-center justify-between shrink-0">
              {/* Tab indicator shortcuts */}
              <div className="flex items-center text-4xs font-bold text-slate-400 space-x-1">
                <span>Tab: {activeFormTab.toUpperCase()}</span>
                <ChevronRight className="w-3 h-3" />
                <span>Format: {formItem.type.toUpperCase()}</span>
              </div>

              <div className="flex space-x-2.5">
                <button
                  type="button"
                  onClick={() => setIsModalOpen(false)}
                  className="px-5 py-2.5 bg-slate-100 hover:bg-slate-250 dark:bg-slate-800 dark:hover:bg-slate-700 font-bold rounded-xl text-xs text-slate-650 dark:text-slate-350 transition-colors"
                >
                  Batal
                </button>
                <button
                  type="button"
                  disabled={formLoading}
                  onClick={handleSaveItem}
                  className="px-6 py-2.5 bg-emerald-500 hover:bg-emerald-600 disabled:opacity-50 disabled:cursor-not-allowed font-black rounded-xl text-xs text-slate-950 flex items-center space-x-1.5 shadow-md shadow-emerald-500/10 transition-all"
                >
                  {formLoading ? (
                    <>
                      <Loader2 className="w-4 h-4 animate-spin text-slate-950" />
                      <span>Menyimpan...</span>
                    </>
                  ) : (
                    <>
                      <Save className="w-4 h-4" />
                      <span>Simpan Perubahan</span>
                    </>
                  )}
                </button>
              </div>
            </div>

          </div>
        </div>
      )}

    </div>
  );
}
