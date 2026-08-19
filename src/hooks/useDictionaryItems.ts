'use client';

import { useEffect, useState, useMemo } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { Item, ItemType } from '@/lib/types';
import { fetchItemsByType, fetchAllItemPrerequisites, fetchItemFullDetails } from '@/services/itemsService';
import { fetchAllUserProgress } from '@/services/progressService';

export interface DictionaryItem extends Item {
  srs_stage: number;
  unlocked_at?: string | null;
  next_review?: string | null;
  // Kanji / Vocab specific details
  meanings?: any[];
  readings?: any[];
  sentences?: any[];
  primary_meaning?: string;
  primary_reading?: string;
  // Relations
  kanjis?: any[]; // for radicals: found in kanji
  radicals?: any[]; // for kanji: components
  vocabularies?: any[]; // for kanji: found in vocab
}

export function useDictionaryItems(itemType: ItemType) {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [items, setItems] = useState<DictionaryItem[]>([]);
  const [searchQuery, setSearchQuery] = useState(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const query = params.get('search');
      return query ? decodeURIComponent(query) : '';
    }
    return '';
  });
  const [selectedLevel, setSelectedLevel] = useState<string>('all');
  const [selectedItem, setSelectedItem] = useState<DictionaryItem | null>(null);
  const [detailLoading, setDetailLoading] = useState(false);

  useEffect(() => {
    async function loadData() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        // Fetch items, progresses, prerequisites, and meanings/readings in parallel
        const [itemsData, progData, prereqs] = await Promise.all([
          fetchItemsByType(itemType),
          fetchAllUserProgress(user.id),
          fetchAllItemPrerequisites(),
        ]);

        // Pre-fetch meanings and readings for kanji & vocab to display on cards immediately
        const meaningsData: any[] = [];
        const readingsData: any[] = [];
        if (itemType === 'kanji' || itemType === 'vocabulary') {
          const itemIds = (itemsData || []).map(i => i.id);
          if (itemIds.length > 0) {
            // Fetch in chunks of 1000
            const chunkArray = (arr: string[], size: number) => {
              const res: string[][] = [];
              for (let i = 0; i < arr.length; i += size) res.push(arr.slice(i, i + size));
              return res;
            };
            const chunks = chunkArray(itemIds, 800);
            const [meaningsResults, readingsResults] = await Promise.all([
              Promise.all(chunks.map(c => supabase.from('item_meanings').select('*').in('item_id', c))),
              Promise.all(chunks.map(c => supabase.from('item_readings').select('*').in('item_id', c)))
            ]);

            meaningsResults.forEach(r => { if (r.data) meaningsData.push(...r.data); });
            readingsResults.forEach(r => { if (r.data) readingsData.push(...r.data); });
          }
        }

        // Map meanings and readings
        const meaningsMap = new Map<string, any[]>();
        meaningsData.forEach(m => {
          if (!meaningsMap.has(m.item_id)) meaningsMap.set(m.item_id, []);
          meaningsMap.get(m.item_id)!.push(m);
        });

        const readingsMap = new Map<string, any[]>();
        readingsData.forEach(r => {
          if (!readingsMap.has(r.item_id)) readingsMap.set(r.item_id, []);
          readingsMap.get(r.item_id)!.push(r);
        });

        // Group dependents / prerequisites
        const dependentsMap = new Map<string, any[]>();
        const componentsMap = new Map<string, any[]>();

        if (prereqs) {
          prereqs.forEach((row: any) => {
            const depItem = row.items;
            const reqId = row.requires_item_id;
            const itemId = row.item_id;

            if (depItem) {
              // What depends on this required item
              if (!dependentsMap.has(reqId)) dependentsMap.set(reqId, []);
              dependentsMap.get(reqId)!.push(depItem);

              // What this item is composed of
              if (!componentsMap.has(itemId)) componentsMap.set(itemId, []);
              componentsMap.get(itemId)!.push({ id: reqId });
            }
          });
        }

        // Map progresses
        const progressMap = new Map(progData?.map(p => [p.item_id, p]) || []);

        // Combine items
        const combined: DictionaryItem[] = (itemsData || []).map(item => {
          const progress = progressMap.get(item.id);
          const itemMeanings = meaningsMap.get(item.id) || [];
          const itemReadings = readingsMap.get(item.id) || [];

          const primaryMeaning = itemMeanings.find(m => m.primary_meaning)?.meaning || item.slug || '';
          const primaryReading = itemReadings.find(r => r.primary_reading)?.reading || '';

          const foundDependents = dependentsMap.get(item.id) || [];

          return {
            ...item,
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            next_review: progress ? progress.next_review : null,
            meanings: itemMeanings,
            readings: itemReadings,
            primary_meaning: primaryMeaning,
            primary_reading: primaryReading,
            kanjis: itemType === 'radical' ? foundDependents.filter((d: any) => d.type === 'kanji') : undefined,
            vocabularies: itemType === 'kanji' ? foundDependents.filter((d: any) => d.type === 'vocabulary') : undefined,
          };
        });

        setItems(combined);

        // Check deep linking by character
        if (typeof window !== 'undefined') {
          const params = new URLSearchParams(window.location.search);
          const charParam = params.get('character');
          if (charParam) {
            const decoded = decodeURIComponent(charParam);
            const found = combined.find(i => i.character === decoded || i.slug?.toLowerCase() === decoded.toLowerCase());
            if (found) {
              setSelectedItem(found);
            }
          }
        }
      } catch (err) {
        console.error(`Error loading ${itemType} items:`, err);
      } finally {
        setLoading(false);
      }
    }

    loadData();
  }, [itemType, router]);

  // Load detailed relations dynamically when opening modal if not preloaded (e.g. context sentences, components)
  const openItemDetail = async (item: DictionaryItem) => {
    setSelectedItem(item);

    if (itemType === 'kanji' || itemType === 'vocabulary') {
      try {
        setDetailLoading(true);
        const details = await fetchItemFullDetails(item.id);
        setSelectedItem(prev => prev && prev.id === item.id ? {
          ...prev,
          meanings: details.meanings.length ? details.meanings : prev.meanings,
          readings: details.readings.length ? details.readings : prev.readings,
          sentences: details.sentences,
          radicals: details.prerequisites.filter((p: any) => p.type === 'radical'),
          kanjis: details.prerequisites.filter((p: any) => p.type === 'kanji'),
        } : prev);
      } catch (err) {
        console.error('Error fetching full item details:', err);
      } finally {
        setDetailLoading(false);
      }
    }
  };

  // Filtered items
  const filteredItems = useMemo(() => {
    return items.filter(item => {
      if (selectedLevel !== 'all' && String(item.level) !== selectedLevel) return false;

      if (searchQuery.trim() !== '') {
        const q = searchQuery.toLowerCase().trim();
        const charMatch = item.character.toLowerCase().includes(q);
        const slugMatch = item.slug?.toLowerCase().includes(q) || false;
        const meaningMatch = item.primary_meaning?.toLowerCase().includes(q) || false;
        const readingMatch = item.primary_reading?.toLowerCase().includes(q) || false;

        return charMatch || slugMatch || meaningMatch || readingMatch;
      }
      return true;
    });
  }, [items, selectedLevel, searchQuery]);

  return {
    loading,
    items,
    filteredItems,
    searchQuery,
    setSearchQuery,
    selectedLevel,
    setSelectedLevel,
    selectedItem,
    setSelectedItem,
    openItemDetail,
    detailLoading,
  };
}
