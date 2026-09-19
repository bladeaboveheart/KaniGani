'use client';

import { useEffect, useState, useMemo, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { Item, ItemType } from '@/lib/types';
import { fetchDictionaryTierItems, fetchItemFullDetails } from '@/services/itemsService';
import { fetchAllUserProgress } from '@/services/progressService';
import { memoryCache } from '@/lib/memoryCache';

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
  similar_kanji?: any[]; // for kanji: visually similar kanji
  audios?: any[]; // for vocab: Kyoko & Kenichi audio pronunciations
}

const TIER_RANGES: Record<string, [number, number]> = {
  pleasant: [1, 10],
  painful: [11, 20],
  death: [21, 30],
  hell: [31, 40],
  paradise: [41, 50],
  reality: [51, 60],
};

const ALL_TIER_LIST: { name: string; range: [number, number] }[] = [
  { name: 'pleasant', range: [1, 10] },
  { name: 'painful', range: [11, 20] },
  { name: 'death', range: [21, 30] },
  { name: 'hell', range: [31, 40] },
  { name: 'paradise', range: [41, 50] },
  { name: 'reality', range: [51, 60] },
];

export function useDictionaryItems(itemType: ItemType) {
  const router = useRouter();

  // 0. SYNCHRONOUS HYDRATION: Paint instantly on initial render if cached (0ms cold load)
  const [items, setItems] = useState<DictionaryItem[]>(() => {
    if (typeof window !== 'undefined') {
      try {
        const lastUserId = localStorage.getItem('kanigani_last_user_id');
        if (lastUserId) {
          const localSnapshot = localStorage.getItem(`dict_snap_${itemType}_${lastUserId}`);
          if (localSnapshot) {
            const parsed = JSON.parse(localSnapshot);
            if (Array.isArray(parsed) && parsed.length > 0) {
              return parsed;
            }
          }
        }
      } catch (e) {
        console.error('Initial state localStorage parse error:', e);
      }
    }
    return [];
  });

  const [loading, setLoading] = useState(() => items.length === 0);
  const progressMapRef = useRef<Map<string, any>>(new Map());
  const prefetchStartedRef = useRef(false);

  const [searchQuery, setSearchQuery] = useState(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const query = params.get('search');
      return query ? decodeURIComponent(query) : '';
    }
    return '';
  });

  const [selectedLevel, setSelectedLevel] = useState<string>(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const lvlParam = params.get('level');
      if (lvlParam) return lvlParam;
    }
    return 'all';
  });

  const [selectedTier, setSelectedTier] = useState<string>(() => {
    if (typeof window !== 'undefined') {
      const params = new URLSearchParams(window.location.search);
      const tierParam = params.get('tier');
      if (tierParam) return tierParam.toLowerCase();
      if (params.get('level')) return 'all';
    }
    return 'pleasant';
  });

  const [srsFilter, setSrsFilter] = useState<string>('all');
  const [displayMode, setDisplayMode] = useState<'reading' | 'meaning'>('reading');
  const [selectedItem, setSelectedItem] = useState<DictionaryItem | null>(null);
  const [detailLoading, setDetailLoading] = useState(false);

  useEffect(() => {
    let isCancelled = false;

    async function loadInitialData() {
      try {
        const { data: { user } } = await supabase.auth.getUser();
        if (!user) {
          router.push('/');
          return;
        }

        if (typeof window !== 'undefined') {
          localStorage.setItem('kanigani_last_user_id', user.id);
        }

        const cacheKey = `dict_catalog_${itemType}_${user.id}`;
        const cachedCatalog = memoryCache.get<DictionaryItem[]>(cacheKey);

        // 1. FAST PATH: Return immediately from in-memory cache if available (0ms)
        if (cachedCatalog && cachedCatalog.length > 0) {
          if (!isCancelled) {
            setItems(cachedCatalog);
            setLoading(false);
            checkDeepLink(cachedCatalog);
          }
          return;
        }

        // 1.1 LocalStorage SWR Hydration fallback if not already hydrated
        if (items.length === 0 && typeof window !== 'undefined') {
          const localSnapshot = localStorage.getItem(`dict_snap_${itemType}_${user.id}`);
          if (localSnapshot) {
            try {
              const parsed = JSON.parse(localSnapshot);
              if (Array.isArray(parsed) && parsed.length > 0 && !isCancelled) {
                setItems(parsed);
                setLoading(false);
                checkDeepLink(parsed);
              }
            } catch (e) {
              console.error('Failed to parse local dict snapshot:', e);
            }
          }
        }

        // 2. Determine initial tier to fetch
        let initialRange: [number, number] = [1, 10];
        if (selectedTier !== 'all' && TIER_RANGES[selectedTier]) {
          initialRange = TIER_RANGES[selectedTier];
        } else if (selectedLevel !== 'all') {
          const lvl = parseInt(selectedLevel, 10);
          for (const t of ALL_TIER_LIST) {
            if (lvl >= t.range[0] && lvl <= t.range[1]) {
              initialRange = t.range;
              break;
            }
          }
        }

        // 3. PARALLEL FETCH: Run progress & initial tier queries concurrently!
        const progCacheKey = `user_progress_${user.id}`;
        const cachedProg = memoryCache.get<any[]>(progCacheKey);
        const progPromise = cachedProg
          ? Promise.resolve(cachedProg)
          : fetchAllUserProgress(user.id).then(data => {
              memoryCache.set(progCacheKey, data || [], 3 * 60 * 1000);
              return data || [];
            });

        const tierPromise = fetchDictionaryTierItems(itemType, initialRange[0], initialRange[1]);

        const [progData, initialRaw] = await Promise.all([progPromise, tierPromise]);
        if (isCancelled) return;

        const progMap = new Map((progData || []).map((p: any) => [p.item_id, p]));
        progressMapRef.current = progMap;

        const initialCombined: DictionaryItem[] = initialRaw.map(item => {
          const progress = progMap.get(item.id);
          return {
            ...item,
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            next_review: progress ? progress.next_review : null,
          } as DictionaryItem;
        });

        setItems(initialCombined);
        setLoading(false);
        checkDeepLink(initialCombined);

        // Persist initial tier to localStorage for 0ms cold reload
        if (typeof window !== 'undefined') {
          try {
            localStorage.setItem(`dict_snap_${itemType}_${user.id}`, JSON.stringify(initialCombined.slice(0, 150)));
          } catch (e) {}
        }

        // 5. Background prefetch remaining tiers
        if (!prefetchStartedRef.current) {
          prefetchStartedRef.current = true;
          const remainingTiers = ALL_TIER_LIST.filter(
            t => t.range[0] !== initialRange[0] || t.range[1] !== initialRange[1]
          );

          // Delay slightly so initial render & interactivity is instant
          setTimeout(async () => {
            let runningList = [...initialCombined];
            for (const tier of remainingTiers) {
              if (isCancelled) break;
              try {
                const tierRaw = await fetchDictionaryTierItems(itemType, tier.range[0], tier.range[1]);
                const tierMapped = tierRaw.map(item => {
                  const progress = progMap.get(item.id);
                  return {
                    ...item,
                    srs_stage: progress ? progress.srs_stage : 0,
                    unlocked_at: progress ? progress.unlocked_at : null,
                    next_review: progress ? progress.next_review : null,
                  } as DictionaryItem;
                });

                setItems(prev => {
                  const idSet = new Set(prev.map(p => p.id));
                  const fresh = tierMapped.filter(m => !idSet.has(m.id));
                  const merged = [...prev, ...fresh];
                  runningList = merged;
                  return merged;
                });
              } catch (err) {
                console.warn(`Background prefetch for ${itemType} tier ${tier.name} deferred:`, err);
              }
            }

            // Cache the full catalog for 30 minutes in memory and persist snapshot in localStorage
            if (!isCancelled && runningList.length > 0) {
              memoryCache.set(cacheKey, runningList, 30 * 60 * 1000);
              if (typeof window !== 'undefined') {
                try {
                  localStorage.setItem(`dict_snap_${itemType}_${user.id}`, JSON.stringify(runningList.slice(0, 200)));
                } catch (e) {}
              }
            }
          }, 200);
        }
      } catch (err) {
        console.error(`Error loading ${itemType} items:`, err);
        if (!isCancelled) setLoading(false);
      }
    }

    async function checkDeepLink(currentItems: DictionaryItem[]) {
      if (typeof window === 'undefined') return;
      const params = new URLSearchParams(window.location.search);
      const charParam = params.get('character');
      if (!charParam) return;

      const decoded = decodeURIComponent(charParam);
      let found = currentItems.find(i => i.character === decoded || i.slug?.toLowerCase() === decoded.toLowerCase());

      if (!found) {
        try {
          const { data: directItem } = await supabase
            .from('items')
            .select('id, character, slug, level, type')
            .eq('type', itemType)
            .or(`character.eq.${decoded},slug.ilike.${decoded}`)
            .maybeSingle();
          if (directItem) found = directItem as any;
        } catch {
          // ignore error
        }
      }

      if (found) {
        openItemDetail(found);
      }
    }

    loadInitialData();

    return () => {
      isCancelled = true;
    };
  }, [itemType, router]);

  // On-demand tier fetching if user switches to an unloaded tier before background completes
  useEffect(() => {
    if (loading) return;

    let targetRange: [number, number] | null = null;
    if (selectedTier !== 'all' && TIER_RANGES[selectedTier]) {
      const range = TIER_RANGES[selectedTier];
      const hasTierItems = items.some(i => i.level >= range[0] && i.level <= range[1]);
      if (!hasTierItems) targetRange = range;
    } else if (selectedLevel !== 'all') {
      const lvl = parseInt(selectedLevel, 10);
      const hasLvl = items.some(i => i.level === lvl);
      if (!hasLvl) {
        for (const t of ALL_TIER_LIST) {
          if (lvl >= t.range[0] && lvl <= t.range[1]) {
            targetRange = t.range;
            break;
          }
        }
      }
    }

    if (targetRange) {
      const rangeToFetch = targetRange;
      fetchDictionaryTierItems(itemType, rangeToFetch[0], rangeToFetch[1]).then(tierRaw => {
        const mapped = tierRaw.map(item => {
          const progress = progressMapRef.current.get(item.id);
          return {
            ...item,
            srs_stage: progress ? progress.srs_stage : 0,
            unlocked_at: progress ? progress.unlocked_at : null,
            next_review: progress ? progress.next_review : null,
          } as DictionaryItem;
        });

        setItems(prev => {
          const idSet = new Set(prev.map(p => p.id));
          const fresh = mapped.filter(m => !idSet.has(m.id));
          return [...prev, ...fresh];
        });
      }).catch(err => {
        console.error(`Error on-demand fetching tier [${rangeToFetch}]:`, err);
      });
    }
  }, [selectedTier, selectedLevel, items, itemType, loading]);

  // Load detailed relations dynamically when opening modal
  const openItemDetail = async (target: DictionaryItem | any) => {
    const fullBase = items.find(i => i.id === target.id || (target.character && i.character === target.character)) || target;
    setSelectedItem(fullBase);

    // Sync URL param without refreshing
    if (typeof window !== 'undefined') {
      const url = new URL(window.location.href);
      url.searchParams.set('character', target.character || target.slug || fullBase.character || '');
      window.history.replaceState({}, '', url.toString());
    }

    try {
      setDetailLoading(true);
      const details = await fetchItemFullDetails(target.id);
      setSelectedItem(prev => prev && (prev.id === target.id || prev.character === target.character) ? {
        ...prev,
        meanings: details.meanings.length ? details.meanings : prev.meanings,
        readings: details.readings.length ? details.readings : prev.readings,
        sentences: details.sentences,
        radicals: details.prerequisites.filter((p: any) => p.type === 'radical'),
        kanjis: itemType === 'radical'
          ? details.dependents.filter((d: any) => d.type === 'kanji')
          : details.prerequisites.filter((p: any) => p.type === 'kanji'),
        vocabularies: details.dependents.filter((d: any) => d.type === 'vocabulary'),
        similar_kanji: details.similar_kanji || [],
        audios: (details as any).audios || [],
      } : prev);
    } catch (err) {
      console.error('Error fetching full item details:', err);
    } finally {
      setDetailLoading(false);
    }
  };

  const closeItemDetail = () => {
    setSelectedItem(null);
    if (typeof window !== 'undefined') {
      const url = new URL(window.location.href);
      url.searchParams.delete('character');
      window.history.replaceState({}, '', url.toString());
    }
  };

  // Filtered items
  const filteredItems = useMemo(() => {
    const hasSearch = searchQuery.trim() !== '';

    return items.filter(item => {
      // 1. Search Query Filter (Searches globally across all loaded items)
      if (hasSearch) {
        const q = searchQuery.toLowerCase().trim();
        const charMatch = item.character.toLowerCase().includes(q);
        const slugMatch = item.slug?.toLowerCase().includes(q) || false;
        const meaningMatch = item.primary_meaning?.toLowerCase().includes(q) || false;
        const readingMatch = item.primary_reading?.toLowerCase().includes(q) || false;

        if (!charMatch && !slugMatch && !meaningMatch && !readingMatch) {
          return false;
        }
      } else {
        // Only apply Level & Tier filtering when NOT searching
        if (selectedLevel !== 'all') {
          if (String(item.level) !== selectedLevel) return false;
        } else if (selectedTier !== 'all') {
          const range = TIER_RANGES[selectedTier];
          if (range && (item.level < range[0] || item.level > range[1])) return false;
        }
      }

      // 2. SRS Stage Filter (Applies to both search and normal browse)
      if (srsFilter !== 'all') {
        const s = item.srs_stage || 0;
        if (srsFilter === 'locked' && s !== 0) return false;
        if (srsFilter === 'apprentice' && (s < 1 || s > 4)) return false;
        if (srsFilter === 'guru' && (s < 5 || s > 6)) return false;
        if (srsFilter === 'master' && s !== 7) return false;
        if (srsFilter === 'enlightened' && s !== 8) return false;
        if (srsFilter === 'burned' && s !== 9) return false;
      }

      return true;
    });
  }, [items, selectedLevel, selectedTier, srsFilter, searchQuery]);

  return {
    loading,
    items,
    filteredItems,
    searchQuery,
    setSearchQuery,
    selectedLevel,
    setSelectedLevel,
    selectedTier,
    setSelectedTier,
    srsFilter,
    setSrsFilter,
    displayMode,
    setDisplayMode,
    selectedItem,
    setSelectedItem,
    openItemDetail,
    closeItemDetail,
    detailLoading,
  };
}
