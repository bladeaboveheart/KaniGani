'use client';

import { useState, useCallback, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { Item, SimilarKanji } from '@/lib/types';
import { expandAcceptedReadings } from '@/lib/kanaHelper';
import { getUserItemDataBatch } from '@/services/userItemDataService';

interface UseReviewSessionParams {
  isLeechMode: boolean;
  isAdvancedFilter: boolean;
  minLevel: number | null;
  maxLevel: number | null;
  filterTypes: string[] | null;
  initializeSession: (items: Item[], mode: 'review' | 'lesson') => void;
}

export function useReviewSession({
  isLeechMode,
  isAdvancedFilter,
  minLevel,
  maxLevel,
  filterTypes,
  initializeSession,
}: UseReviewSessionParams) {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [totalItemsCount, setTotalItemsCount] = useState(0);
  const [totalDueCount, setTotalDueCount] = useState(0);
  const [batchSize, setBatchSize] = useState(100);

  const filterTypesKey = filterTypes ? filterTypes.join(',') : '';

  const initSessionRef = useRef(initializeSession);
  initSessionRef.current = initializeSession;

  const [submittedItemIds, setSubmittedItemIds] = useState<string[]>([]);
  const submittedIdsRef = useRef<Set<string>>(new Set());
  const [accuracyStats, setAccuracyStats] = useState({ correct: 0, wrong: 0 });
  const [levelUpData, setLevelUpData] = useState<{ newLevel: number } | null>(null);
  const [showLevelUpModal, setShowLevelUpModal] = useState(false);

  const loadReviews = useCallback(async () => {
    try {
      setLoading(true);
      setErrorMessage(null);
      const {
        data: { user },
      } = await supabase.auth.getUser();
      if (!user) {
        router.push('/');
        return;
      }

      let rawItems: any[] = [];
      const progressMap = new Map<string, number>();

      if (isLeechMode) {
        const {
          data: { session },
        } = await supabase.auth.getSession();
        if (!session) {
          router.push('/');
          return;
        }
        const res = await fetch('/api/leeches', {
          headers: { Authorization: `Bearer ${session.access_token}` },
        });
        const json = await res.json();
        const leeches = json.leeches || [];
        if (leeches.length === 0) {
          setTotalItemsCount(0);
          setLoading(false);
          return;
        }

        const itemIds = leeches.map((l: any) => l.item_id);
        const { data: itemsData, error: itemsError } = await supabase
          .from('items')
          .select(`
            id, character, slug, level, type, lesson_position,
            description, parts_of_speech, meaning_mnemonic, reading_mnemonic,
            item_meanings (*),
            item_readings (*),
            item_audios (*),
            item_context_sentences (*)
          `)
          .in('id', itemIds);

        if (itemsError) throw itemsError;
        rawItems = itemsData || [];
        leeches.forEach((l: any) => progressMap.set(l.item_id, l.srs_stage));
        setTotalDueCount(rawItems.length);
      } else {
        const now = new Date().toISOString();

        // 1. Hitung total review yang jatuh tempo di server
        const effectiveMin = minLevel !== null && !isNaN(minLevel) ? minLevel : null;
        const effectiveMax = maxLevel !== null && !isNaN(maxLevel) ? maxLevel : null;

        let countQuery = supabase
          .from('user_progress')
          .select(isAdvancedFilter ? 'item_id, items!inner(level, type)' : '*', {
            count: 'exact',
            head: true,
          })
          .eq('user_id', user.id)
          .gte('srs_stage', 1)
          .lte('srs_stage', 8)
          .lte('next_review', now);

        if (isAdvancedFilter) {
          if (effectiveMin !== null) countQuery = countQuery.gte('items.level', effectiveMin);
          if (effectiveMax !== null) countQuery = countQuery.lte('items.level', effectiveMax);
          if (filterTypes && filterTypes.length > 0)
            countQuery = countQuery.in('items.type', filterTypes);
        }

        const { count: dueCount, error: countError } = await countQuery;

        if (countError) throw countError;
        const totalDue = dueCount || 0;
        setTotalDueCount(totalDue);

        if (totalDue === 0) {
          setTotalItemsCount(0);
          setLoading(false);
          return;
        }

        // Tentukan batas ukuran batch review (default 100)
        const storedBatchSize =
          typeof window !== 'undefined'
            ? localStorage.getItem('kanigani-review-batch-size')
            : null;
        const currentBatchLimit =
          storedBatchSize === 'all'
            ? 2500
            : storedBatchSize && !isNaN(Number(storedBatchSize))
            ? Number(storedBatchSize)
            : 100;

        setBatchSize(currentBatchLimit);

        // 2. Ambil data batch menggunakan PostgREST nested relational query
        const itemsRelation = isAdvancedFilter ? 'items!inner' : 'items';
        let batchQuery = supabase
          .from('user_progress')
          .select(`
            item_id, srs_stage, next_review,
            ${itemsRelation} (
              id, character, slug, level, type, lesson_position,
              description, parts_of_speech, meaning_mnemonic, reading_mnemonic,
              item_meanings (*),
              item_readings (*),
              item_audios (*),
              item_context_sentences (*)
            )
          `)
          .eq('user_id', user.id)
          .gte('srs_stage', 1)
          .lte('srs_stage', 8)
          .lte('next_review', now)
          .order('next_review', { ascending: true })
          .limit(currentBatchLimit);

        if (isAdvancedFilter) {
          if (effectiveMin !== null) batchQuery = batchQuery.gte('items.level', effectiveMin);
          if (effectiveMax !== null) batchQuery = batchQuery.lte('items.level', effectiveMax);
          if (filterTypes && filterTypes.length > 0)
            batchQuery = batchQuery.in('items.type', filterTypes);
        }

        const { data, error } = await batchQuery;

        if (error) throw error;
        if (!data || data.length === 0) {
          setTotalItemsCount(0);
          setLoading(false);
          return;
        }

        rawItems = data.map((row: any) => row.items).filter(Boolean);
        data.forEach((row: any) => progressMap.set(row.item_id, row.srs_stage));
      }

      // Load custom user annotations (synonyms and personal notes)
      const itemIds = rawItems.map((item: any) => item.id);
      const userAnnotationsMap = await getUserItemDataBatch(itemIds);

      const initialItemsWithDetails: Item[] = rawItems.map((item: any) => {
        const mList = item.item_meanings || [];
        const rList = item.item_readings || [];
        const aList = item.item_audios || [];
        const sList = item.item_context_sentences || [];
        const primaryMeaning =
          mList.find((m: any) => m.primary_meaning)?.meaning || mList[0]?.meaning || '';
        const primaryReading =
          rList.find((r: any) => r.primary_reading)?.reading || rList[0]?.reading || null;
        const srsStage = progressMap.get(item.id) ?? 1;

        const acceptedMeanings = mList
          .filter((m: any) => m.accepted_answer)
          .map((m: any) => m.meaning.toLowerCase().trim());
        if (acceptedMeanings.length === 0 && primaryMeaning) {
          acceptedMeanings.push(primaryMeaning.toLowerCase().trim());
        }

        // Merge user custom synonyms into accepted meanings
        const userAnnotation = userAnnotationsMap[item.id];
        const userSynonyms: string[] = userAnnotation?.meaning_synonyms || [];
        userSynonyms.forEach((syn) => {
          const clean = syn.toLowerCase().trim();
          if (clean && !acceptedMeanings.includes(clean)) {
            acceptedMeanings.push(clean);
          }
        });

        const rawAcceptedReadings = rList
          .filter((r: any) => r.accepted_answer)
          .map((r: any) => r.reading.toLowerCase().trim());
        if (rawAcceptedReadings.length === 0 && primaryReading) {
          rawAcceptedReadings.push(primaryReading.toLowerCase().trim());
        }
        const acceptedReadings = expandAcceptedReadings(rawAcceptedReadings);

        return {
          ...item,
          srs_stage: srsStage,
          meanings: mList,
          readings: rList,
          context_sentences: sList,
          primary_meaning: primaryMeaning,
          primary_reading: primaryReading,
          accepted_meanings: acceptedMeanings,
          accepted_readings: acceptedReadings,
          audios: aList,
          user_synonyms: userSynonyms,
          user_meaning_note: userAnnotation?.meaning_note ?? null,
          user_reading_note: userAnnotation?.reading_note ?? null,
        };
      });

      setTotalItemsCount(initialItemsWithDetails.length);
      initSessionRef.current(initialItemsWithDetails, 'review');
      setLoading(false);
      setSubmittedItemIds([]);
      submittedIdsRef.current = new Set();
      setAccuracyStats({ correct: 0, wrong: 0 });

      // Background prefetch: Prerequisites, Dependents & Similar Kanji untuk drawer (batching kecil < 100 item)
      const radicalIds = rawItems.filter((i: any) => i.type === 'radical').map((i: any) => i.id);
      const kanjiIds = rawItems.filter((i: any) => i.type === 'kanji').map((i: any) => i.id);
      const vocabIds = rawItems.filter((i: any) => i.type === 'vocabulary').map((i: any) => i.id);

      if (radicalIds.length > 0 || kanjiIds.length > 0 || vocabIds.length > 0) {
        setTimeout(async () => {
          try {
            const [radicalPrereqsRes, kanjiDependentsRes, itemPrereqsRes, similarRes] =
              await Promise.all([
                // 1. Radikal -> Kanjis (Ditemukan di Kanji)
                radicalIds.length > 0
                  ? supabase
                      .from('item_prerequisites')
                      .select('requires_item_id, items!item_id(id, character, slug, level, type)')
                      .in('requires_item_id', radicalIds)
                  : Promise.resolve({ data: [] }),
                // 2. Kanji -> Vocabularies (Ditemukan di Kosakata)
                kanjiIds.length > 0
                  ? supabase
                      .from('item_prerequisites')
                      .select('requires_item_id, items!item_id(id, character, slug, level, type)')
                      .in('requires_item_id', kanjiIds)
                  : Promise.resolve({ data: [] }),
                // 3. Kanji -> Radikals (Terdiri Dari Radikal) & Vocab -> Kanjis (Terdiri Dari Kanji)
                kanjiIds.length > 0 || vocabIds.length > 0
                  ? supabase
                      .from('item_prerequisites')
                      .select(
                        'item_id, requires_item_id, items!requires_item_id(id, character, slug, level, type)'
                      )
                      .in('item_id', [...kanjiIds, ...vocabIds])
                  : Promise.resolve({ data: [] }),
                // 4. Kanji -> Similar Kanji
                kanjiIds.length > 0
                  ? supabase
                      .from('item_similar_kanji')
                      .select(`
                        item_id,
                        similar_item_id,
                        items!similar_item_id(
                          id, character, slug, level, type,
                          item_meanings(meaning, primary_meaning),
                          item_readings(reading, primary_reading)
                        )
                      `)
                      .in('item_id', kanjiIds)
                  : Promise.resolve({ data: [] }),
              ]);

            const kanjisMap = new Map<string, any[]>();
            radicalPrereqsRes.data?.forEach((row: any) => {
              const reqId = row.requires_item_id;
              const kanjiItem = row.items;
              if (kanjiItem && kanjiItem.type === 'kanji') {
                if (!kanjisMap.has(reqId)) kanjisMap.set(reqId, []);
                kanjisMap.get(reqId)!.push(kanjiItem);
              }
            });

            const vocabsMap = new Map<string, any[]>();
            kanjiDependentsRes.data?.forEach((row: any) => {
              const reqId = row.requires_item_id;
              const vocabItem = row.items;
              if (vocabItem && vocabItem.type === 'vocabulary') {
                if (!vocabsMap.has(reqId)) vocabsMap.set(reqId, []);
                vocabsMap.get(reqId)!.push(vocabItem);
              }
            });

            const radicalsMap = new Map<string, any[]>();
            const vocabKanjisMap = new Map<string, any[]>();
            itemPrereqsRes.data?.forEach((row: any) => {
              const parentId = row.item_id;
              const childItem = row.items;
              if (!childItem) return;
              if (childItem.type === 'radical') {
                if (!radicalsMap.has(parentId)) radicalsMap.set(parentId, []);
                radicalsMap.get(parentId)!.push(childItem);
              } else if (childItem.type === 'kanji') {
                if (!vocabKanjisMap.has(parentId)) vocabKanjisMap.set(parentId, []);
                vocabKanjisMap.get(parentId)!.push(childItem);
              }
            });

            const similarKanjiMap = new Map<string, SimilarKanji[]>();
            similarRes.data?.forEach((row: any) => {
              const it = (row as any).items;
              if (!it) return;
              const pM =
                it.item_meanings?.find((m: any) => m.primary_meaning)?.meaning ||
                it.item_meanings?.[0]?.meaning ||
                it.slug;
              const pR =
                it.item_readings?.find((r: any) => r.primary_reading)?.reading ||
                it.item_readings?.[0]?.reading ||
                null;
              if (!similarKanjiMap.has(row.item_id)) similarKanjiMap.set(row.item_id, []);
              similarKanjiMap.get(row.item_id)!.push({
                id: it.id,
                character: it.character,
                slug: it.slug,
                level: it.level,
                type: it.type,
                primary_meaning: pM,
                primary_reading: pR,
              });
            });

            initialItemsWithDetails.forEach((item) => {
              if (item.type === 'radical') item.kanjis = kanjisMap.get(item.id) || [];
              if (item.type === 'kanji') {
                item.radicals = radicalsMap.get(item.id) || [];
                item.vocabularies = vocabsMap.get(item.id) || [];
                item.similar_kanjis = similarKanjiMap.get(item.id) || [];
              }
              if (item.type === 'vocabulary') {
                item.kanjis = vocabKanjisMap.get(item.id) || [];
              }
            });
          } catch (bgErr) {
            console.warn('Background drawer enrich deferred:', bgErr);
          }
        }, 50);
      }
    } catch (err: any) {
      const msg =
        err?.message ||
        err?.error_description ||
        (typeof err === 'object' && Object.keys(err).length > 0
          ? JSON.stringify(err)
          : String(err));
      console.error('Error fetching reviews:', msg, err);
      setErrorMessage(
        msg || 'Gagal memuat sesi review. Silakan periksa koneksi Anda dan coba lagi.'
      );
    } finally {
      setLoading(false);
    }
  }, [isLeechMode, router, minLevel, maxLevel, filterTypesKey, isAdvancedFilter]);

  return {
    loading,
    errorMessage,
    totalItemsCount,
    totalDueCount,
    batchSize,
    submittedItemIds,
    setSubmittedItemIds,
    submittedIdsRef,
    accuracyStats,
    setAccuracyStats,
    levelUpData,
    setLevelUpData,
    showLevelUpModal,
    setShowLevelUpModal,
    loadReviews,
  };
}
