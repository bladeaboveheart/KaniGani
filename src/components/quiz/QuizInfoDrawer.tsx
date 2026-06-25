'use client';

import { useState, useEffect } from 'react';
import { Item } from '@/lib/types';
import { supabase } from '@/lib/supabase';
import { Edit2, Loader2, ChevronDown, ChevronRight, X } from 'lucide-react';
import ItemEditorModal, { ItemInput } from '@/components/admin/ItemEditorModal';

interface QuizInfoDrawerProps {
  item: Item | null;
  cardType: 'meaning' | 'reading';
  onItemEdited?: (updatedItem: Item) => void;
}

export default function QuizInfoDrawer({ item, cardType: _cardType, onItemEdited }: QuizInfoDrawerProps) {
  const [devMode, setDevMode] = useState(false);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [formLoading, setFormLoading] = useState(false);
  const [ranks, setRanks] = useState<any[]>([]);
  const [formItem, setFormItem] = useState<ItemInput>({
    type: 'radical',
    character: '',
    slug: '',
    level: 1,
    rank_id: null,
    lesson_position: 0,
    meaning_mnemonic: '',
    reading_mnemonic: '',
    description: '',
    meanings: [{ meaning: '', primary_meaning: true, accepted_answer: true }],
    readings: [],
    context_sentences: [],
    prerequisites: []
  });

  const [composition, setComposition] = useState<any[]>([]);
  const [vocabUsage, setVocabUsage] = useState<any[]>([]);
  const [kanjiUsage, setKanjiUsage] = useState<any[]>([]);
  const [isCompositionOpen, setIsCompositionOpen] = useState(false);
  const [isVocabUsageOpen, setIsVocabUsageOpen] = useState(false);
  const [isKanjiUsageOpen, setIsKanjiUsageOpen] = useState(false);
  const [activeDetailItem, setActiveDetailItem] = useState<any | null>(null);

  const [activeComposition, setActiveComposition] = useState<any[]>([]);
  const [activeVocabUsage, setActiveVocabUsage] = useState<any[]>([]);
  const [activeKanjiUsage, setActiveKanjiUsage] = useState<any[]>([]);
  const [isActiveCompositionOpen, setIsActiveCompositionOpen] = useState(false);
  const [isActiveVocabUsageOpen, setIsActiveVocabUsageOpen] = useState(false);
  const [isActiveKanjiUsageOpen, setIsActiveKanjiUsageOpen] = useState(false);
  const [loadingActiveDetails, setLoadingActiveDetails] = useState(false);

  useEffect(() => {
    setIsActiveCompositionOpen(false);
    setIsActiveVocabUsageOpen(false);
    setIsActiveKanjiUsageOpen(false);
    setActiveComposition([]);
    setActiveVocabUsage([]);
    setActiveKanjiUsage([]);

    if (!activeDetailItem) return;

    const detailId = activeDetailItem.id;
    const detailType = activeDetailItem.type;
    let active = true;

    async function loadActiveDetails() {
      setLoadingActiveDetails(true);
      try {
        if (detailType === 'kanji') {
          // Fetch composition (radicals)
          const { data: prereqData } = await supabase
            .from('item_prerequisites')
            .select('requires_item_id')
            .eq('item_id', detailId);

          let comps: any[] = [];
          if (prereqData && prereqData.length > 0) {
            const prereqIds = prereqData.map(r => r.requires_item_id);
            const { data: itemsData } = await supabase
              .from('items')
              .select('*, item_meanings(*)')
              .in('id', prereqIds);
            if (itemsData) comps = itemsData;
          }

          // Fetch vocabulary usage
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', detailId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: vocabsData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'vocabulary');
            if (vocabsData) usages = vocabsData;
          }

          if (active) {
            setActiveComposition(comps);
            setActiveVocabUsage(usages);
          }
        } else if (detailType === 'radical') {
          // Fetch kanjis containing this radical
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', detailId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: kanjisData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'kanji');
            if (kanjisData) usages = kanjisData;
          }

          if (active) {
            setActiveKanjiUsage(usages);
          }
        }
      } catch (err) {
        console.error('Error loading active detail item details:', err);
      } finally {
        if (active) setLoadingActiveDetails(false);
      }
    }

    loadActiveDetails();
    return () => {
      active = false;
    };
  }, [activeDetailItem?.id, activeDetailItem?.type]);

  useEffect(() => {
    const isDev = typeof window !== 'undefined' && localStorage.getItem('kanigani-dev-mode') === 'true';
    setDevMode(isDev);
    if (isDev) {
      supabase.from('ranks').select('*').order('sort_order', { ascending: true })
        .then(({ data }) => setRanks(data || []));
    }
  }, []);

  useEffect(() => {
    let active = true;
    setIsCompositionOpen(false);
    setIsVocabUsageOpen(false);
    setIsKanjiUsageOpen(false);
    setActiveDetailItem(null);
    if (!item || (item.type !== 'kanji' && item.type !== 'radical')) {
      setComposition([]);
      setVocabUsage([]);
      setKanjiUsage([]);
      return;
    }

    const itemId = item.id;
    const itemType = item.type;

    async function loadItemDetails() {
      try {
        if (itemType === 'kanji') {
          // 1. Fetch composition (radicals)
          const { data: prereqData } = await supabase
            .from('item_prerequisites')
            .select('requires_item_id')
            .eq('item_id', itemId);

          let comps: any[] = [];
          if (prereqData && prereqData.length > 0) {
            const prereqIds = prereqData.map(r => r.requires_item_id);
            const { data: itemsData } = await supabase
              .from('items')
              .select('*, item_meanings(*)')
              .in('id', prereqIds);
            if (itemsData) {
              comps = itemsData;
            }
          }

          // 2. Fetch vocabulary usage
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', itemId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: vocabsData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'vocabulary');
            if (vocabsData) {
              usages = vocabsData;
            }
          }

          if (active) {
            setComposition(comps);
            setVocabUsage(usages);
            setKanjiUsage([]);
          }
        } else if (itemType === 'radical') {
          // Fetch kanjis containing this radical
          const { data: usageData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', itemId);

          let usages: any[] = [];
          if (usageData && usageData.length > 0) {
            const usageIds = usageData.map(u => u.item_id);
            const { data: kanjisData } = await supabase
              .from('items')
              .select('*, item_meanings(*), item_readings(*)')
              .in('id', usageIds)
              .eq('type', 'kanji');
            if (kanjisData) {
              usages = kanjisData;
            }
          }

          if (active) {
            setComposition([]);
            setVocabUsage([]);
            setKanjiUsage(usages);
          }
        }
      } catch (err) {
        console.error('Error fetching item details in drawer:', err);
      }
    }

    loadItemDetails();
    return () => {
      active = false;
    };
  }, [item?.id, item?.type, isModalOpen]);

  const handleEditClick = async () => {
    if (!item) return;
    setFormLoading(true);
    try {
      const { data, error } = await supabase
        .from('items')
        .select(`
          *,
          item_meanings(*),
          item_readings(*),
          item_context_sentences(*),
          item_prerequisites!item_id(requires_item_id)
        `)
        .eq('id', item.id)
        .single();

      if (error) throw error;

      if (data) {
        setFormItem({
          id: data.id,
          type: data.type,
          character: data.character,
          slug: data.slug || '',
          level: data.level || 1,
          rank_id: data.rank_id || null,
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
          prerequisites: data.item_prerequisites && data.item_prerequisites.length > 0
            ? data.item_prerequisites.map((p: any) => p.requires_item_id)
            : []
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
      const itemId = formItem.id;
      if (!itemId) return;

      const itemData = {
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        rank_id: formItem.rank_id || null,
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || null,
        reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || null : null,
        description: formItem.description.trim() || null,
      };

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

      const meaningsToInsert = filledMeanings.map(m => ({
        item_id: itemId,
        meaning: m.meaning.trim(),
        primary_meaning: m.primary_meaning,
        accepted_answer: m.accepted_answer
      }));
      const { error: mErr } = await supabase.from('item_meanings').insert(meaningsToInsert);
      if (mErr) throw mErr;

      let readingsToInsert: any[] = [];
      if (formItem.type !== 'radical') {
        readingsToInsert = formItem.readings
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

      let sentencesToInsert: any[] = [];
      if (formItem.type === 'vocabulary') {
        sentencesToInsert = formItem.context_sentences
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

      const compiledItem: Item = {
        id: itemId,
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        rank_id: formItem.rank_id || null,
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || undefined,
        reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || undefined : undefined,
        description: formItem.description.trim() || undefined,
        srs_stage: item?.srs_stage || 0,
        meanings: meaningsToInsert.map((m, idx) => ({ id: String(idx), ...m })),
        readings: readingsToInsert.map((r, idx) => ({ id: String(idx), ...r })),
        context_sentences: sentencesToInsert.map((s, idx) => ({ id: String(idx), ...s })),
        primary_meaning: formItem.slug.trim().toLowerCase(),
        primary_reading: readingsToInsert.find(r => r.primary_reading)?.reading || null,
        accepted_meanings: meaningsToInsert.map(m => m.meaning.toLowerCase().trim()),
        accepted_readings: readingsToInsert.map(r => r.reading.toLowerCase().trim())
      };

      if (onItemEdited) {
        onItemEdited(compiledItem);
      }

      setIsModalOpen(false);
      alert('Info karakter berhasil diperbarui!');
    } catch (err: any) {
      console.error('Error saving item from drawer:', err);
      alert('Gagal menyimpan perubahan: ' + (err?.message || String(err)));
    } finally {
      setFormLoading(false);
    }
  };

  if (!item) return null;

  const readings = item.readings || [];
  const onyomiList = readings.filter(r => r.reading_type === 'onyomi');
  const kunyomiList = readings.filter(r => r.reading_type === 'kunyomi');
  const nanoriList = readings.filter(r => r.reading_type === 'nanori');

  return (
    <div className="border-t border-slate-200 dark:border-slate-800 bg-slate-50 dark:bg-slate-900/50 p-6 sm:p-8 animate-fade-in space-y-6 text-sm leading-relaxed text-left select-text relative">
      {/* 1. Meaning Info */}
      <div className="relative">
        {devMode && (
          <button
            onClick={handleEditClick}
            disabled={formLoading}
            className="absolute top-0 right-0 flex items-center space-x-1.5 px-3 py-1.5 bg-indigo-50 hover:bg-indigo-100 dark:bg-indigo-950/40 border border-indigo-200/50 dark:border-indigo-900/50 text-indigo-600 dark:text-indigo-400 text-xs font-extrabold rounded-xl transition-all cursor-pointer select-none z-10"
          >
            {formLoading ? (
              <Loader2 className="w-3.5 h-3.5 animate-spin" />
            ) : (
              <Edit2 className="w-3.5 h-3.5" />
            )}
            <span>Edit Info</span>
          </button>
        )}

        {/* Composition section */}
        {item.type === 'kanji' && composition.length > 0 && (
          <div className="mb-4">
            <button
              onClick={() => setIsCompositionOpen(!isCompositionOpen)}
              className="flex items-center space-x-1.5 text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
            >
              <span>Komposisi Kanji</span>
              {isCompositionOpen ? (
                <ChevronDown className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
              ) : (
                <ChevronRight className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
              )}
            </button>
            {isCompositionOpen && (
              <div className="flex flex-wrap gap-2 mt-2">
                {composition.map(compItem => {
                  const primaryMean = compItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || compItem.slug || '';
                  return (
                    <button
                      key={compItem.id}
                      onClick={() => setActiveDetailItem(compItem)}
                      className="flex items-center space-x-2 px-3 py-1.5 bg-slate-100/50 hover:bg-slate-200/50 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl animate-fade-in cursor-pointer transition-all duration-205 text-left"
                    >
                      <span className="text-base font-bold text-teal-600 dark:text-teal-400">{compItem.character}</span>
                      <span className="text-xs text-slate-500 dark:text-slate-405 capitalize">{primaryMean}</span>
                    </button>
                  );
                })}
              </div>
            )}
          </div>
        )}

        <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Arti Karakter</h4>
        <div className="flex flex-wrap items-baseline gap-2 mt-1 select-all">
          <span className="text-xl font-bold text-teal-600 dark:text-teal-400 capitalize">
            {item.primary_meaning}
          </span>
          {(() => {
            const other = item.meanings
              ?.filter((m: any) => m.meaning.toLowerCase().trim() !== item.primary_meaning?.toLowerCase().trim())
              .map((m: any) => m.meaning) || [];
            if (other.length === 0) return null;
            return (
              <span className="text-sm font-medium text-slate-400 dark:text-slate-500 capitalize">
                / {other.join(', ')}
              </span>
            );
          })()}
        </div>

        {item.meaning_mnemonic && (
          <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl mt-3">
            <h5 className="text-xs font-bold text-teal-700 dark:text-teal-400 uppercase tracking-widest block select-none">Mnemonic (Arti)</h5>
            <p className="text-teal-900 dark:text-teal-100 mt-1.5">{item.meaning_mnemonic}</p>
          </div>
        )}

        {item.description && (
          <div className="p-4 bg-slate-100/50 dark:bg-slate-800/40 border border-slate-200/50 dark:border-slate-800 rounded-2xl mt-3">
            <h5 className="text-xs font-bold text-slate-505 dark:text-slate-455 uppercase tracking-widest block select-none">Deskripsi Detail</h5>
            <p className="text-slate-700 dark:text-slate-200 mt-1.5">{item.description}</p>
          </div>
        )}

        {/* Kanji usage for radical section */}
        {item.type === 'radical' && kanjiUsage.length > 0 && (
          <div className="mt-4 animate-fade-in">
            <button
              onClick={() => setIsKanjiUsageOpen(!isKanjiUsageOpen)}
              className="flex items-center space-x-1.5 text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
            >
              <span>Kanji yang Menggunakan Radikal Ini</span>
              {isKanjiUsageOpen ? (
                <ChevronDown className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
              ) : (
                <ChevronRight className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
              )}
            </button>
            {isKanjiUsageOpen && (
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-2 mt-2 animate-fade-in">
                {kanjiUsage.map(kanjiItem => {
                  const primaryMean = kanjiItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || kanjiItem.slug || '';
                  const primaryRead = kanjiItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                  return (
                    <button
                      key={kanjiItem.id}
                      onClick={() => setActiveDetailItem(kanjiItem)}
                      className="flex items-center justify-between p-3 bg-slate-100/50 hover:bg-slate-200/50 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left"
                    >
                      <div className="flex flex-col">
                        <span className="text-base font-bold text-slate-800 dark:text-slate-100">{kanjiItem.character}</span>
                        <span className="text-xs text-slate-400 dark:text-slate-500">{primaryRead}</span>
                      </div>
                      <span className="text-xs font-medium text-slate-655 dark:text-slate-350 capitalize text-right max-w-[150px] truncate">{primaryMean}</span>
                    </button>
                  );
                })}
              </div>
            )}
          </div>
        )}
      </div>

      {/* 2. Reading Info */}
      {item.type !== 'radical' && (
        <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-6 space-y-4">
          <h4 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">
            {item.type === 'kanji'
              ? `Cara Baca Jepang (${item.readings?.find((r: any) => r.primary_reading)?.reading_type === 'onyomi'
                ? 'Onyomi'
                : 'Kunyomi'
              })`
              : 'Cara Baca Jepang (Kana)'}
          </h4>

          {item.type === 'kanji' ? (
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 bg-slate-100/40 dark:bg-slate-800/20 p-4 rounded-2xl border border-slate-200 dark:border-slate-800/45">
              <div>
                <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Onyomi</span>
                {onyomiList.length > 0 ? (
                  <div className="flex flex-wrap gap-1.5 mt-1.5">
                    {onyomiList.map((r, idx) => (
                      <span
                        key={idx}
                        className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                          ? 'bg-indigo-600 text-white shadow-sm'
                          : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                        }`}
                      >
                        {r.reading}
                      </span>
                    ))}
                  </div>
                ) : (
                  <span className="text-sm text-slate-400 dark:text-slate-650 italic mt-1.5 block">n/a</span>
                )}
              </div>
              <div>
                <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Kunyomi</span>
                {kunyomiList.length > 0 ? (
                  <div className="flex flex-wrap gap-1.5 mt-1.5">
                    {kunyomiList.map((r, idx) => (
                      <span
                        key={idx}
                        className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                          ? 'bg-indigo-600 text-white shadow-sm'
                          : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                        }`}
                      >
                        {r.reading}
                      </span>
                    ))}
                  </div>
                ) : (
                  <span className="text-sm text-slate-400 dark:text-slate-650 italic mt-1.5 block">n/a</span>
                )}
              </div>
              <div>
                <span className="text-xxs font-extrabold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Nanori</span>
                {nanoriList.length > 0 ? (
                  <div className="flex flex-wrap gap-1.5 mt-1.5">
                    {nanoriList.map((r, idx) => (
                      <span
                        key={idx}
                        className={`px-2 py-0.5 text-sm font-black rounded-lg ${r.primary_reading
                          ? 'bg-indigo-600 text-white shadow-sm'
                          : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-350'
                        }`}
                      >
                        {r.reading}
                      </span>
                    ))}
                  </div>
                ) : (
                  <span className="text-sm text-slate-400 dark:text-slate-650 italic mt-1.5 block">n/a</span>
                )}
              </div>
            </div>
          ) : (
            <p className="text-2xl font-black text-indigo-600 dark:text-indigo-400 mt-1">
              {item.primary_reading}
            </p>
          )}

          {item.reading_mnemonic && (
            <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
              <h5 className="text-xs font-bold text-indigo-700 dark:text-indigo-400 uppercase tracking-widest block select-none">Mnemonic (Cara Baca)</h5>
              <p className="text-indigo-900 dark:text-indigo-300 mt-1.5">{item.reading_mnemonic}</p>
            </div>
          )}

          {/* Vocabulary usage section */}
          {item.type === 'kanji' && vocabUsage.length > 0 && (
            <div className="mt-4 animate-fade-in">
              <button
                onClick={() => setIsVocabUsageOpen(!isVocabUsageOpen)}
                className="flex items-center space-x-1.5 text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
              >
                <span>Kosakata yang Menggunakan Kanji Ini</span>
                {isVocabUsageOpen ? (
                  <ChevronDown className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                ) : (
                  <ChevronRight className="w-3.5 h-3.5 text-slate-400 dark:text-slate-500" />
                )}
              </button>
              {isVocabUsageOpen && (
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-2 mt-2 animate-fade-in">
                  {vocabUsage.map(vocabItem => {
                    const primaryMean = vocabItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || vocabItem.slug || '';
                    const primaryRead = vocabItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                    return (
                      <button
                        key={vocabItem.id}
                        onClick={() => setActiveDetailItem(vocabItem)}
                        className="flex items-center justify-between p-3 bg-slate-100/50 hover:bg-slate-200/50 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left"
                      >
                        <div className="flex flex-col">
                          <span className="text-base font-bold text-slate-800 dark:text-slate-100">{vocabItem.character}</span>
                          <span className="text-xs text-slate-400 dark:text-slate-500">{primaryRead}</span>
                        </div>
                        <span className="text-xs font-medium text-slate-600 dark:text-slate-355 capitalize text-right max-w-[150px] truncate">{primaryMean}</span>
                      </button>
                    );
                  })}
                </div>
              )}
            </div>
          )}

          {item.type === 'vocabulary' && item.context_sentences && item.context_sentences.length > 0 && (
            <div className="border-t border-slate-200/50 dark:border-slate-800/50 pt-6 mt-6 space-y-4">
              <h5 className="text-xs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Contoh Kalimat Kontekstual</h5>
              <div className="space-y-4">
                {item.context_sentences.map((s, idx) => (
                  <div key={idx} className="p-4 bg-slate-100/30 dark:bg-slate-950/40 rounded-2xl border border-slate-200/60 dark:border-slate-800/80 space-y-2">
                    <p className="text-lg font-bold text-indigo-600 dark:text-indigo-400 select-all">{s.japanese}</p>
                    <p className="text-xs text-slate-555 dark:text-slate-400">{s.indonesian}</p>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>
      )}

      {/* Dev Mode Item Editor Modal */}
      {devMode && isModalOpen && (
        <ItemEditorModal
          isOpen={isModalOpen}
          setIsOpen={setIsModalOpen}
          formItem={formItem}
          setFormItem={setFormItem}
          handleSaveItem={handleSaveItem}
          formLoading={formLoading}
          ranks={ranks}
        />
      )}

      {/* Active Detail Modal popup */}
      {activeDetailItem && (
        <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 bg-slate-950/70 backdrop-blur-md animate-fade-in">
          <div 
            onClick={() => setActiveDetailItem(null)}
            className="absolute inset-0"
          />
          <div className="relative max-w-md w-full bg-white dark:bg-slate-900 border border-slate-200 dark:border-slate-800 p-6 sm:p-8 rounded-3xl shadow-2xl flex flex-col space-y-4 max-h-[85vh] overflow-y-auto text-left select-text">
            {/* Header Banner */}
            <div className={`p-6 -mx-6 sm:-mx-8 -mt-6 sm:-mt-8 text-white text-center flex flex-col items-center justify-center relative rounded-t-3xl ${
              activeDetailItem.type === 'radical' 
                ? 'bg-radical glow-radical' 
                : activeDetailItem.type === 'kanji'
                  ? 'bg-kanji glow-kanji'
                  : 'bg-vocab glow-vocab'
            }`}>
              <button
                onClick={() => setActiveDetailItem(null)}
                className="absolute top-4 right-4 p-1.5 hover:bg-white/20 rounded-lg text-white transition-colors cursor-pointer"
              >
                <X className="w-5 h-5" />
              </button>
              <span className="text-4xs font-black uppercase tracking-widest bg-white/20 backdrop-blur-sm px-3 py-1 rounded-full border border-white/10 mb-2 block">
                Detail {
                  activeDetailItem.type === 'radical' 
                    ? 'Radikal' 
                    : activeDetailItem.type === 'kanji'
                      ? 'Kanji'
                      : 'Kosakata'
                }
              </span>
              <h3 className="text-5xl font-black">{activeDetailItem.character}</h3>
              <p className="text-sm font-bold uppercase tracking-wider opacity-90 mt-1">{activeDetailItem.slug}</p>
            </div>

            {/* Meanings */}
            <div className="space-y-1">
              <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Arti Karakter</h4>
              <div className="flex flex-wrap items-baseline gap-2 mt-1">
                <span className="text-lg font-bold text-teal-600 dark:text-teal-400 capitalize">
                  {activeDetailItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || activeDetailItem.slug}
                </span>
                {(() => {
                  const primaryMean = activeDetailItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || activeDetailItem.slug;
                  const other = activeDetailItem.item_meanings
                    ?.filter((m: any) => m.meaning.toLowerCase().trim() !== primaryMean.toLowerCase().trim())
                    .map((m: any) => m.meaning) || [];
                  if (other.length === 0) return null;
                  return (
                    <span className="text-xs font-semibold text-slate-400 dark:text-slate-500 capitalize">
                      / {other.join(', ')}
                    </span>
                  );
                })()}
              </div>
            </div>

            {/* Readings (Vocab / Kanji only) */}
            {activeDetailItem.type !== 'radical' && (
              <div className="space-y-1">
                <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block">Cara Baca</h4>
                <div className="flex flex-wrap gap-1.5 mt-1.5">
                  {activeDetailItem.item_readings?.map((r: any, idx: number) => (
                    <span
                      key={idx}
                      className={`px-2 py-0.5 text-xs font-black rounded-lg ${r.primary_reading
                        ? 'bg-indigo-600 text-white shadow-sm'
                        : 'bg-slate-200 dark:bg-slate-800 text-slate-700 dark:text-slate-355'
                      }`}
                    >
                      {r.reading} {r.reading_type && `(${r.reading_type})`}
                    </span>
                  ))}
                </div>
              </div>
            )}

            {/* Meaning Mnemonic */}
            {activeDetailItem.meaning_mnemonic && (
              <div className="p-4 bg-teal-50 dark:bg-teal-950/20 border border-teal-100 dark:border-teal-900/50 rounded-2xl">
                <h4 className="text-xxs font-bold text-teal-700 dark:text-teal-405 uppercase tracking-widest block select-none">Mnemonic (Arti)</h4>
                <p className="text-teal-900 dark:text-teal-100 text-xs mt-1.5 leading-relaxed">{activeDetailItem.meaning_mnemonic}</p>
              </div>
            )}

            {/* Reading Mnemonic (Vocab / Kanji only) */}
            {activeDetailItem.type !== 'radical' && activeDetailItem.reading_mnemonic && (
              <div className="p-4 bg-indigo-50 dark:bg-indigo-950/20 border border-indigo-100 dark:border-indigo-900/50 rounded-2xl">
                <h4 className="text-xxs font-bold text-indigo-700 dark:text-indigo-405 uppercase tracking-widest block select-none">Mnemonic (Cara Baca)</h4>
                <p className="text-indigo-900 dark:text-indigo-300 text-xs mt-1.5 leading-relaxed">{activeDetailItem.reading_mnemonic}</p>
              </div>
            )}

            {/* Description */}
            {activeDetailItem.description && (
              <div className="space-y-1">
                <h4 className="text-xxs font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest block select-none">Deskripsi Tambahan</h4>
                <p className="text-slate-655 dark:text-slate-350 text-xs leading-relaxed">{activeDetailItem.description}</p>
              </div>
            )}

            {/* Kanji usage for radical section in active detail */}
            {activeDetailItem.type === 'radical' && (
              <div className="animate-fade-in space-y-1.5">
                <button
                  onClick={() => setIsActiveKanjiUsageOpen(!isActiveKanjiUsageOpen)}
                  className="flex items-center space-x-1.5 text-xxs font-bold text-slate-405 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                >
                  <span>Kanji yang Menggunakan Radikal Ini</span>
                  {isActiveKanjiUsageOpen ? (
                    <ChevronDown className="w-3 h-3 text-slate-400" />
                  ) : (
                    <ChevronRight className="w-3 h-3 text-slate-400" />
                  )}
                </button>
                {isActiveKanjiUsageOpen && (
                  <div className="mt-1.5">
                    {loadingActiveDetails ? (
                      <div className="flex items-center space-x-2 text-xs text-slate-400 select-none py-2">
                        <Loader2 className="w-3.5 h-3.5 animate-spin text-slate-400" />
                        <span>Memuat kanji terkait...</span>
                      </div>
                    ) : activeKanjiUsage.length > 0 ? (
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-1.5 animate-fade-in max-h-[160px] overflow-y-auto pr-1">
                        {activeKanjiUsage.map(kanjiItem => {
                          const primaryMean = kanjiItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || kanjiItem.slug || '';
                          const primaryRead = kanjiItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                          return (
                            <button
                              key={kanjiItem.id}
                              onClick={() => setActiveDetailItem(kanjiItem)}
                              className="flex items-center justify-between p-2 bg-slate-50 hover:bg-slate-100 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left text-xs"
                            >
                              <div className="flex flex-col">
                                <span className="text-sm font-bold text-slate-800 dark:text-slate-100 leading-tight">{kanjiItem.character}</span>
                                <span className="text-[10px] text-slate-400 dark:text-slate-500 leading-none">{primaryRead}</span>
                              </div>
                              <span className="text-[10px] font-medium text-slate-600 dark:text-slate-355 capitalize text-right max-w-[100px] truncate">{primaryMean}</span>
                            </button>
                          );
                        })}
                      </div>
                    ) : (
                      <p className="text-xs text-slate-400 italic py-1">Tidak ada kanji terkait.</p>
                    )}
                  </div>
                )}
              </div>
            )}

            {/* Composition section in active detail */}
            {activeDetailItem.type === 'kanji' && (
              <div className="space-y-1.5">
                <button
                  onClick={() => setIsActiveCompositionOpen(!isActiveCompositionOpen)}
                  className="flex items-center space-x-1.5 text-xxs font-bold text-slate-405 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                >
                  <span>Komposisi Kanji</span>
                  {isActiveCompositionOpen ? (
                    <ChevronDown className="w-3 h-3 text-slate-400" />
                  ) : (
                    <ChevronRight className="w-3 h-3 text-slate-400" />
                  )}
                </button>
                {isActiveCompositionOpen && (
                  <div className="mt-1.5">
                    {loadingActiveDetails ? (
                      <div className="flex items-center space-x-2 text-xs text-slate-400 select-none py-2">
                        <Loader2 className="w-3.5 h-3.5 animate-spin text-slate-400" />
                        <span>Memuat komposisi...</span>
                      </div>
                    ) : activeComposition.length > 0 ? (
                      <div className="flex flex-wrap gap-1.5 animate-fade-in max-h-[160px] overflow-y-auto pr-1">
                        {activeComposition.map(compItem => {
                          const primaryMean = compItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || compItem.slug || '';
                          return (
                            <button
                              key={compItem.id}
                              onClick={() => setActiveDetailItem(compItem)}
                              className="flex items-center space-x-1.5 px-2.5 py-1 bg-slate-50 hover:bg-slate-100 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left text-xs"
                            >
                              <span className="text-sm font-bold text-teal-600 dark:text-teal-400 leading-tight">{compItem.character}</span>
                              <span className="text-[10px] text-slate-500 dark:text-slate-400 capitalize">{primaryMean}</span>
                            </button>
                          );
                        })}
                      </div>
                    ) : (
                      <p className="text-xs text-slate-400 italic py-1">Tidak ada data komposisi.</p>
                    )}
                  </div>
                )}
              </div>
            )}

            {/* Vocabulary usage section in active detail */}
            {activeDetailItem.type === 'kanji' && (
              <div className="animate-fade-in space-y-1.5">
                <button
                  onClick={() => setIsActiveVocabUsageOpen(!isActiveVocabUsageOpen)}
                  className="flex items-center space-x-1.5 text-xxs font-bold text-slate-405 dark:text-slate-500 uppercase tracking-widest hover:text-slate-600 dark:hover:text-slate-300 select-none cursor-pointer focus:outline-none"
                >
                  <span>Kosakata yang Menggunakan Kanji Ini</span>
                  {isActiveVocabUsageOpen ? (
                    <ChevronDown className="w-3 h-3 text-slate-400" />
                  ) : (
                    <ChevronRight className="w-3 h-3 text-slate-400" />
                  )}
                </button>
                {isActiveVocabUsageOpen && (
                  <div className="mt-1.5">
                    {loadingActiveDetails ? (
                      <div className="flex items-center space-x-2 text-xs text-slate-400 select-none py-2">
                        <Loader2 className="w-3.5 h-3.5 animate-spin text-slate-400" />
                        <span>Memuat kosakata...</span>
                      </div>
                    ) : activeVocabUsage.length > 0 ? (
                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-1.5 mt-1.5 animate-fade-in max-h-[160px] overflow-y-auto pr-1">
                        {activeVocabUsage.map(vocabItem => {
                          const primaryMean = vocabItem.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || vocabItem.slug || '';
                          const primaryRead = vocabItem.item_readings?.find((r: any) => r.primary_reading)?.reading || '';
                          return (
                            <button
                              key={vocabItem.id}
                              onClick={() => setActiveDetailItem(vocabItem)}
                              className="flex items-center justify-between p-2 bg-slate-55 hover:bg-slate-100 dark:bg-slate-800/40 dark:hover:bg-slate-700/50 border border-slate-200/50 dark:border-slate-800 rounded-xl cursor-pointer transition-all duration-205 text-left text-xs"
                            >
                              <div className="flex flex-col">
                                <span className="text-sm font-bold text-slate-800 dark:text-slate-100 leading-tight">{vocabItem.character}</span>
                                <span className="text-[10px] text-slate-400 dark:text-slate-500 leading-none">{primaryRead}</span>
                              </div>
                              <span className="text-[10px] font-medium text-slate-600 dark:text-slate-355 capitalize text-right max-w-[100px] truncate">{primaryMean}</span>
                            </button>
                          );
                        })}
                      </div>
                    ) : (
                      <p className="text-xs text-slate-400 italic py-1">Tidak ada kosakata terkait.</p>
                    )}
                  </div>
                )}
              </div>
            )}

            {/* Close button */}
            <div className="pt-2">
              <button
                onClick={() => setActiveDetailItem(null)}
                className="w-full py-2.5 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-200 font-extrabold rounded-xl text-xs transition-colors cursor-pointer"
              >
                Tutup Detail
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
