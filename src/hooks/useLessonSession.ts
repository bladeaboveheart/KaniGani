'use client';

import { useState, useEffect, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { Item, SimilarKanji } from '@/lib/types';
import { expandAcceptedReadings } from '@/lib/kanaHelper';
import { ensureLevel1RadicalsUnlocked } from '@/lib/userProgress';
import { getUserItemDataBatch } from '@/services/userItemDataService';

import { useQuizStore } from '@/store/useQuizStore';

interface UseLessonSessionParams {}

export function useLessonSession({}: UseLessonSessionParams = {}) {
  const router = useRouter();
  const [lessons, setLessons] = useState<Item[]>([]);
  const [loading, setLoading] = useState(true);
  const [currentBatch, setCurrentBatch] = useState<Item[]>([]);
  const [itemIndex, setItemIndex] = useState(0);

  const loadLessons = useCallback(async () => {
    try {
      setLoading(true);
      const {
        data: { user },
      } = await supabase.auth.getUser();
      if (!user) {
        router.push('/');
        return;
      }

      // Check custom lesson queue
      const customQueueStr =
        typeof window !== 'undefined' ? localStorage.getItem('custom-lesson-queue') : null;
      const customInterleaveStr =
        typeof window !== 'undefined' ? localStorage.getItem('custom-lesson-interleave') : null;

      let customQueueIds: string[] | null = null;
      if (customQueueStr) {
        try {
          customQueueIds = JSON.parse(customQueueStr);
        } catch (e) {
          console.error('Failed to parse custom-lesson-queue from localStorage:', e);
        }
      }

      // Fetch lesson items (srs_stage = 1 & next_review = null)
      let query = supabase
        .from('user_progress')
        .select('item_id, srs_stage, unlocked_at, items(*)')
        .eq('user_id', user.id)
        .eq('srs_stage', 1)
        .is('next_review', null);

      if (customQueueIds && customQueueIds.length > 0) {
        query = query.in('item_id', customQueueIds);
      }

      const { data: initialData, error } = await query;
      let data = initialData;

      if (error) throw error;

      if (data && data.length > 0) {
        const typeOrder: Record<string, number> = { radical: 1, kanji: 2, vocabulary: 3 };
        data.sort((a: any, b: any) => {
          const itemA = a.items;
          const itemB = b.items;
          if (!itemA || !itemB) return 0;
          if (itemA.level !== itemB.level) return itemA.level - itemB.level;
          const orderA = typeOrder[itemA.type] || 4;
          const orderB = typeOrder[itemB.type] || 4;
          if (orderA !== orderB) return orderA - orderB;
          return (itemA.lesson_position || 0) - (itemB.lesson_position || 0);
        });
      }

      if (!data || data.length === 0) {
        // Self-healing check for brand new users entering /lesson directly
        if (!customQueueIds || customQueueIds.length === 0) {
          const { count } = await supabase
            .from('user_progress')
            .select('item_id', { count: 'exact', head: true })
            .eq('user_id', user.id);

          if (count === 0) {
            const unlockedIds = await ensureLevel1RadicalsUnlocked(user.id);
            if (unlockedIds.length > 0) {
              const retryRes = await query;
              if (!retryRes.error && retryRes.data && retryRes.data.length > 0) {
                data = retryRes.data;
              }
            }
          }
        }

        if (!data || data.length === 0) {
          setLessons([]);
          setCurrentBatch([]);
          setLoading(false);
          return;
        }
      }

      const rawItems = data.map((row: any) => row.items).filter(Boolean);
      const itemIds = rawItems.map((i: any) => i.id);
      const radicalIds = rawItems.filter((i: any) => i.type === 'radical').map((i: any) => i.id);
      const kanjiIds = rawItems.filter((i: any) => i.type === 'kanji').map((i: any) => i.id);
      const vocabIds = rawItems.filter((i: any) => i.type === 'vocabulary').map((i: any) => i.id);

      // Critical card presentation path (meanings, readings, audios, user annotations)
      const [meaningsRes, readingsRes, audiosRes, userAnnotationsMap] = await Promise.all([
        supabase.from('item_meanings').select('*').in('item_id', itemIds),
        supabase.from('item_readings').select('*').in('item_id', itemIds),
        vocabIds.length > 0
          ? supabase.from('item_audios').select('*').in('item_id', vocabIds)
          : Promise.resolve({ data: [] }),
        getUserItemDataBatch(itemIds),
      ]);

      const meanings = meaningsRes.data || [];
      const readings = readingsRes.data || [];
      const audios = audiosRes.data || [];

      // Map vocabulary audios
      const audiosMap = new Map<string, any[]>();
      audios.forEach((a: any) => {
        if (!audiosMap.has(a.item_id)) audiosMap.set(a.item_id, []);
        audiosMap.get(a.item_id)!.push(a);
      });

      // Combine critical details
      const itemsWithDetails: Item[] = rawItems.map((item: any) => {
        const mList = meanings.filter((m) => m.item_id === item.id);
        const rList = readings.filter((r) => r.item_id === item.id);

        const primaryMeaning = mList.find((m) => m.primary_meaning)?.meaning || '';
        const primaryReading = rList.find((r) => r.primary_reading)?.reading || null;

        const progressRow = data.find((row: any) => row.item_id === item.id);
        const srsStage = progressRow ? progressRow.srs_stage : 1;

        const baseAcceptedMeanings = (() => {
          const list = mList
            .filter((m) => m.accepted_answer)
            .map((m) => m.meaning.toLowerCase().trim());
          return list.length
            ? list
            : primaryMeaning
            ? [primaryMeaning.toLowerCase().trim()]
            : [];
        })();

        // Merge custom user synonyms
        const userAnnotation = userAnnotationsMap[item.id];
        const userSynonyms: string[] = userAnnotation?.meaning_synonyms || [];
        userSynonyms.forEach((syn) => {
          const clean = syn.toLowerCase().trim();
          if (clean && !baseAcceptedMeanings.includes(clean)) {
            baseAcceptedMeanings.push(clean);
          }
        });

        return {
          ...item,
          srs_stage: srsStage,
          meanings: mList,
          readings: rList,
          context_sentences: [],
          primary_meaning: primaryMeaning,
          primary_reading: primaryReading,
          accepted_meanings: baseAcceptedMeanings,
          accepted_readings: (() => {
            const list = rList
              .filter((r) => r.accepted_answer)
              .map((r) => r.reading.toLowerCase().trim());
            const raw = list.length
              ? list
              : primaryReading
              ? [primaryReading.toLowerCase().trim()]
              : [];
            return expandAcceptedReadings(raw);
          })(),
          kanjis: item.type === 'radical' ? [] : undefined,
          similar_kanjis: item.type === 'kanji' ? [] : undefined,
          audios: item.type === 'vocabulary' ? audiosMap.get(item.id) || [] : undefined,
          user_synonyms: userSynonyms,
          user_meaning_note: userAnnotation?.meaning_note ?? null,
          user_reading_note: userAnnotation?.reading_note ?? null,
        };
      });

      // Sort: level (ASC), type (radical→kanji→vocab), lesson_position
      const typePriority: Record<string, number> = { radical: 0, kanji: 1, vocabulary: 2 };
      itemsWithDetails.sort((a, b) => {
        const levelDiff = a.level - b.level;
        if (levelDiff !== 0) return levelDiff;
        const typeDiff = (typePriority[a.type] ?? 3) - (typePriority[b.type] ?? 3);
        if (typeDiff !== 0) return typeDiff;
        return a.lesson_position - b.lesson_position;
      });

      // Interleave lessons if requested
      let finalLessons = itemsWithDetails;
      if (customInterleaveStr === 'true') {
        const radicals = itemsWithDetails.filter((i) => i.type === 'radical');
        const kanjis = itemsWithDetails.filter((i) => i.type === 'kanji');
        const vocabs = itemsWithDetails.filter((i) => i.type === 'vocabulary');

        const interleaved: Item[] = [];
        const maxLen = Math.max(radicals.length, kanjis.length, vocabs.length);
        for (let i = 0; i < maxLen; i++) {
          if (i < radicals.length) interleaved.push(radicals[i]);
          if (i < kanjis.length) interleaved.push(kanjis[i]);
          if (i < vocabs.length) interleaved.push(vocabs[i]);
        }
        finalLessons = interleaved;
      }

      setLessons(finalLessons);

      // Get first batch of 5 items
      const batch = finalLessons.slice(0, 5);
      setCurrentBatch(batch);
      setItemIndex(0);
      setLoading(false);

      // Asynchronous background fetch of heavy drawer data (sentences, prereqs, similar kanji)
      (async () => {
        try {
          const [sentencesRes, prereqsRes, kanjiDependentsRes, itemPrereqsRes, similarRes] =
            await Promise.all([
              supabase.from('item_context_sentences').select('*').in('item_id', itemIds),
              radicalIds.length > 0
                ? supabase
                    .from('item_prerequisites')
                    .select('requires_item_id, items!item_id(id, character, slug, level, type)')
                    .in('requires_item_id', radicalIds)
                : Promise.resolve({ data: [] }),
              kanjiIds.length > 0
                ? supabase
                    .from('item_prerequisites')
                    .select('requires_item_id, items!item_id(id, character, slug, level, type)')
                    .in('requires_item_id', kanjiIds)
                : Promise.resolve({ data: [] }),
              kanjiIds.length > 0 || vocabIds.length > 0
                ? supabase
                    .from('item_prerequisites')
                    .select(`
                      item_id,
                      requires_item_id,
                      items!requires_item_id(
                        id, character, slug, level, type,
                        item_meanings(meaning, primary_meaning),
                        item_readings(reading, primary_reading)
                      )
                    `)
                    .in('item_id', [...kanjiIds, ...vocabIds])
                : Promise.resolve({ data: [] }),
              kanjiIds.length > 0
                ? supabase
                    .from('item_similar_kanji')
                    .select(`
                      item_id,
                      items!similar_item_id(
                        id, character, slug, level, type,
                        item_meanings(meaning, primary_meaning),
                        item_readings(reading, primary_reading)
                      )
                    `)
                    .in('item_id', kanjiIds)
                : Promise.resolve({ data: [] }),
            ]);

          const sentences = sentencesRes.data || [];
          const prereqs = prereqsRes.data || [];
          const kanjiDependents = kanjiDependentsRes.data || [];
          const itemPrereqs = itemPrereqsRes.data || [];

          // Map radical kanji dependencies
          const kanjisMap = new Map<string, any[]>();
          prereqs.forEach((row: any) => {
            const reqId = row.requires_item_id;
            const kanjiItem = row.items;
            if (kanjiItem && kanjiItem.type === 'kanji') {
              if (!kanjisMap.has(reqId)) kanjisMap.set(reqId, []);
              kanjisMap.get(reqId)!.push(kanjiItem);
            }
          });

          kanjisMap.forEach((list) => {
            list.sort(
              (a, b) =>
                a.level - b.level ||
                a.lesson_position - b.lesson_position ||
                a.character.localeCompare(b.character)
            );
          });

          // Map kanji vocab dependencies
          const vocabsMap = new Map<string, any[]>();
          kanjiDependents.forEach((row: any) => {
            const reqId = row.requires_item_id;
            const vocabItem = row.items;
            if (vocabItem && vocabItem.type === 'vocabulary') {
              if (!vocabsMap.has(reqId)) vocabsMap.set(reqId, []);
              vocabsMap.get(reqId)!.push(vocabItem);
            }
          });

          vocabsMap.forEach((list) => {
            list.sort((a, b) => a.level - b.level || a.character.localeCompare(b.character));
          });

          // Map radicals composed in kanji AND kanjis composed in vocabularies
          const radicalsMap = new Map<string, any[]>();
          const vocabKanjisMap = new Map<string, any[]>();
          itemPrereqs.forEach((row: any) => {
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

          radicalsMap.forEach((list) => {
            list.sort((a, b) => a.level - b.level || a.character.localeCompare(b.character));
          });

          vocabKanjisMap.forEach((list) => {
            list.sort((a, b) => a.level - b.level || a.character.localeCompare(b.character));
          });

          // Map similar kanji
          const similarKanjiMap = new Map<string, SimilarKanji[]>();
          similarRes.data?.forEach((row: any) => {
            const it = row.items;
            if (!it) return;
            const pMeaning =
              it.item_meanings?.find((m: any) => m.primary_meaning)?.meaning ||
              it.item_meanings?.[0]?.meaning ||
              it.slug;
            const pReading =
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
              primary_meaning: pMeaning,
              primary_reading: pReading,
            });
          });

          const enrichItem = (item: Item): Item => ({
            ...item,
            context_sentences: sentences.filter((s: any) => s.item_id === item.id),
            kanjis:
              item.type === 'radical'
                ? kanjisMap.get(item.id) || []
                : item.type === 'vocabulary'
                ? vocabKanjisMap.get(item.id) || []
                : item.kanjis,
            radicals: item.type === 'kanji' ? radicalsMap.get(item.id) || [] : item.radicals,
            vocabularies:
              item.type === 'kanji' ? vocabsMap.get(item.id) || [] : item.vocabularies,
            similar_kanjis:
              item.type === 'kanji' ? similarKanjiMap.get(item.id) || [] : item.similar_kanjis,
          });

          setLessons((prev) => prev.map(enrichItem));
          setCurrentBatch((prev) => prev.map(enrichItem));
        } catch (bgErr) {
          console.error('Background lesson drawer enrichment failed (non-blocking):', bgErr);
        }
      })();
    } catch (err) {
      console.error('Error fetching lessons:', err);
    } finally {
      setLoading(false);
    }
  }, [router]);

  useEffect(() => {
    loadLessons();
    return () => {
      useQuizStore.getState().resetStore();
    };
  }, [loadLessons]);

  return {
    lessons,
    setLessons,
    currentBatch,
    setCurrentBatch,
    itemIndex,
    setItemIndex,
    loading,
    setLoading,
    loadLessons,
  };
}
