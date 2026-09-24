'use client';

import { useEffect, useState, useCallback, useRef } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { DashboardStats, Item } from '@/lib/types';
import { fetchAllUserProgress, resetAllUserProgress } from '@/services/progressService';
import { fetchActivityLogs, fetchLeaderboard, LeaderboardEntry } from '@/services/statsService';
import { getUserProfile } from '@/services/profileService';
import { calculateUserLevel } from '@/lib/levelLogic';
import { fetchAllKanjiItems } from '@/lib/userProgress';
import { memoryCache } from '@/lib/memoryCache';

export interface DashboardKanjiItem {
  id: string;
  character: string;
  slug: string;
  srs_stage: number;
  next_review: string | null;
  unlearnedPrereqs: { id: string; character: string; slug: string }[];
}

export function useDashboardData() {
  const router = useRouter();
  const [loading, setLoading] = useState(true);
  const [username, setUsername] = useState('Pengguna');
  const [stats, setStats] = useState<DashboardStats | null>(null);
  const [itemDetails, setItemDetails] = useState<any[]>([]);
  const [currentLevelKanjiList, setCurrentLevelKanjiList] = useState<DashboardKanjiItem[]>([]);
  const [availableLessons, setAvailableLessons] = useState<any[]>([]);
  const [leaderboard, setLeaderboard] = useState<LeaderboardEntry[]>([]);
  const [reviewHeatmap, setReviewHeatmap] = useState<Record<string, number>>({});
  const [lessonHeatmap, setLessonHeatmap] = useState<Record<string, number>>({});
  const [durationHeatmap, setDurationHeatmap] = useState<Record<string, number>>({});
  const [userId, setUserId] = useState<string | null>(null);
  const [resetting, setResetting] = useState(false);
  const hasHydratedFromCache = useRef(false);

  const applySnapshot = useCallback((cached: any) => {
    if (!cached) return;
    setUsername(cached.username || 'Pengguna');
    setStats(cached.stats);
    setItemDetails(cached.itemDetails || []);
    setCurrentLevelKanjiList(cached.currentLevelKanjiList || []);
    setAvailableLessons(cached.availableLessons || []);
    setLeaderboard(cached.leaderboard || []);
    setReviewHeatmap(cached.reviewHeatmap || {});
    setLessonHeatmap(cached.lessonHeatmap || {});
    setDurationHeatmap(cached.durationHeatmap || {});
    setLoading(false);
    hasHydratedFromCache.current = true;
  }, []);

  const loadDashboard = useCallback(async (skipLoadingState = false) => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        router.push('/');
        return;
      }
      setUserId(user.id);
      if (typeof window !== 'undefined') {
        localStorage.setItem('kanigani_last_user_id', user.id);
      }

      const cacheKey = `dashboard_snapshot_${user.id}`;

      // 1. FAST SWR HYDRATION (0ms): Check in-memory cache, then persistent localStorage
      let cached = memoryCache.get<any>(cacheKey);
      if (!cached && typeof window !== 'undefined') {
        try {
          const stored = localStorage.getItem(cacheKey);
          if (stored) {
            cached = JSON.parse(stored);
            memoryCache.set(cacheKey, cached, 15 * 60 * 1000);
          }
        } catch (e) {
          console.warn('Failed to parse dashboard localStorage:', e);
        }
      }

      if (cached && !hasHydratedFromCache.current) {
        applySnapshot(cached);
      } else if (!skipLoadingState && !hasHydratedFromCache.current) {
        setLoading(true);
      }

      const now = new Date().toISOString();

      // 2. PARALLEL PHASE 1: Fetch profile, user_progress, kanji catalog, logs, and leaderboard concurrently
      // Cached kanji catalog (check memory -> localStorage -> fetch slim columns)
      let allKanji = memoryCache.get<Item[]>('catalog_kanji_all');
      if (!allKanji && typeof window !== 'undefined') {
        try {
          const storedKanji = localStorage.getItem('catalog_kanji_all');
          if (storedKanji) {
            allKanji = JSON.parse(storedKanji);
            memoryCache.set('catalog_kanji_all', allKanji, 60 * 60 * 1000);
          }
        } catch {}
      }

      const kanjiPromise = allKanji
        ? Promise.resolve(allKanji)
        : fetchAllKanjiItems('id, level, character, slug, lesson_position').then(list => {
            memoryCache.set('catalog_kanji_all', list, 60 * 60 * 1000);
            if (typeof window !== 'undefined') {
              try {
                localStorage.setItem('catalog_kanji_all', JSON.stringify(list));
              } catch {}
            }
            return list;
          });

      const [profile, progresses, kanjiItems, activityLogs, lb] = await Promise.all([
        getUserProfile(user.id),
        fetchAllUserProgress(
          user.id,
          'item_id, srs_stage, unlocked_at, next_review, items(id, character, slug, level, type, lesson_position)'
        ),
        kanjiPromise,
        fetchActivityLogs(user.id),
        fetchLeaderboard(user.id, 'Pengguna', 1, 0),
      ]);

      allKanji = kanjiItems;

      if (profile?.username) {
        setUsername(profile.username);
      }

      const progressGuruSet = new Set(
        (progresses || [])
          .filter((p: any) => p.srs_stage >= 5)
          .map((p: any) => p.item_id)
      );

      const userLevel = calculateUserLevel(allKanji || [], progressGuruSet, profile?.level);

      const currentLevelKanji = allKanji ? allKanji.filter((k: any) => k.level === userLevel) : [];
      const totalKanji = currentLevelKanji.length;
      const kanjiIds = currentLevelKanji.map(k => k.id);

      // 3. PARALLEL PHASE 2: Fetch level radicals, kanji prerequisites, and kana-only vocab concurrently
      const [levelRadicalsRes, prereqRes, levelKanaVocabRes] = await Promise.all([
        supabase
          .from('items')
          .select('id, level, type')
          .eq('type', 'radical')
          .lte('level', userLevel),
        kanjiIds.length > 0
          ? supabase
              .from('item_prerequisites')
              .select('item_id, requires_item_id, items!requires_item_id(id, character, slug, level, type)')
              .in('item_id', kanjiIds)
          : Promise.resolve({ data: [] as any[], error: null }),
        supabase
          .from('items')
          .select('id, level, type, item_prerequisites!item_id(requires_item_id)')
          .eq('type', 'vocabulary')
          .lte('level', userLevel),
      ]);

      const levelRadicals = levelRadicalsRes.data || [];
      const prereqs = prereqRes.data || [];
      const kanaVocabs = (levelKanaVocabRes.data || []).filter(
        (v: any) => !v.item_prerequisites || v.item_prerequisites.length === 0
      );

      // Self-healing check: ensure all radicals & kana-only vocab for fresh Level 1 users are unlocked (srs_stage >= 1)
      const autoUnlockCandidates = userLevel === 1 ? [...levelRadicals, ...kanaVocabs] : [];
      const unlockedItemIds = new Set((progresses || []).map((p: any) => p.item_id));
      const lockedItemsToUnlock = autoUnlockCandidates.filter(
        (item: any) => !unlockedItemIds.has(item.id)
      );

      if (lockedItemsToUnlock.length > 0) {
        const idsToUnlock = lockedItemsToUnlock.map((row: any) => row.id);
        const { error: healError } = await supabase
          .from('user_progress')
          .upsert(idsToUnlock.map(id => ({
            user_id: user.id,
            item_id: id,
            srs_stage: 1,
            unlocked_at: new Date().toISOString()
          })));

        if (!healError) {
          console.log('Successfully self-healed unlocked missing radicals and kana-only vocab:', idsToUnlock);
          const nowIso = new Date().toISOString();
          for (const item of lockedItemsToUnlock) {
            progresses.push({
              user_id: user.id,
              item_id: item.id,
              srs_stage: 1,
              unlocked_at: nowIso,
              next_review: null,
              items: item as Item,
            });
          }
        }
      }

      // Calculate stats for current active level
      let lessonsAvailable = 0;
      let reviewsDue = 0;
      let kanjiPassed = 0;
      const lessonsList: any[] = [];

      const distribution: Record<number, number> = {
        0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0
      };

      const byType = {
        radical: { total: 0, guru: 0 },
        kanji: { total: 0, guru: 0 },
        vocabulary: { total: 0, burned: 0 },
      };

      const loadedItems: any[] = [];

      // Deduplicate progresses by item_id to avoid double counting or duplicate React keys
      const uniqueProgressMap = new Map<string, any>();
      if (progresses) {
        progresses.forEach((p: any) => {
          if (p && p.item_id && !uniqueProgressMap.has(p.item_id)) {
            uniqueProgressMap.set(p.item_id, p);
          }
        });
      }
      const uniqueProgresses = Array.from(uniqueProgressMap.values());

      uniqueProgresses.forEach((row: any) => {
        const stage = row.srs_stage;
        const item = row.items;
        if (!item) return;

        loadedItems.push({
          id: item.id,
          character: item.character,
          type: item.type,
          srs_stage: stage,
          next_review: row.next_review,
          name: item.slug || 'item',
        });

        const isStudied = stage > 1 || (stage === 1 && row.next_review);
        if (isStudied) {
          distribution[stage] = (distribution[stage] || 0) + 1;
        }

        if (item.type === 'radical') {
          byType.radical.total++;
          if (stage >= 5) byType.radical.guru++;
        } else if (item.type === 'kanji') {
          byType.kanji.total++;
          if (stage >= 5) byType.kanji.guru++;
        } else if (item.type === 'vocabulary') {
          byType.vocabulary.total++;
          if (stage === 9) byType.vocabulary.burned++;
        }

        if (stage === 1 && !row.next_review) {
          lessonsAvailable++;
          lessonsList.push({
            id: item.id,
            character: item.character,
            type: item.type,
            level: item.level,
            slug: item.slug,
            lesson_position: item.lesson_position
          });
        }

        if (stage >= 1 && stage <= 8 && row.next_review && row.next_review <= now) {
          reviewsDue++;
        }

        if (item.type === 'kanji' && stage >= 5 && kanjiIds.includes(item.id)) {
          kanjiPassed++;
        }
      });

      // Sort lessonsList: Level ascending -> Type (radical -> kanji -> vocab) -> lesson_position
      lessonsList.sort((a, b) => {
        if (a.level !== b.level) return a.level - b.level;
        const typeOrder: Record<string, number> = { radical: 1, kanji: 2, vocabulary: 3 };
        const orderA = typeOrder[a.type] || 4;
        const orderB = typeOrder[b.type] || 4;
        if (orderA !== orderB) return orderA - orderB;
        return (a.lesson_position || 0) - (b.lesson_position || 0);
      });

      // Map Prerequisites
      const prereqsMap = new Map<string, any[]>();
      prereqs.forEach((row: any) => {
        const reqItem = row.items;
        if (reqItem) {
          const depId = row.item_id;
          if (!prereqsMap.has(depId)) {
            prereqsMap.set(depId, []);
          }
          prereqsMap.get(depId)!.push(reqItem);
        }
      });

      const progressMap = new Map(
        (progresses || []).map((p: any) => [p.item_id, p])
      );

      const kanjiList: DashboardKanjiItem[] = currentLevelKanji.map((k: any) => {
        const progress = progressMap.get(k.id);
        const srs_stage = progress ? progress.srs_stage : 0;
        const next_review = progress ? progress.next_review : null;

        const allPrereqs = prereqsMap.get(k.id) || [];
        const unlearnedPrereqs = allPrereqs.filter((req: any) => {
          const reqProg = progressMap.get(req.id);
          const reqStage = reqProg ? reqProg.srs_stage : 0;
          return reqStage < 5;
        });

        return {
          id: k.id,
          character: k.character,
          slug: k.slug || 'kanji',
          srs_stage,
          next_review,
          unlearnedPrereqs: unlearnedPrereqs.map((u: any) => ({
            id: u.id,
            character: u.character,
            slug: u.slug || 'radical'
          }))
        };
      });

      setCurrentLevelKanjiList(kanjiList);
      setItemDetails(loadedItems);
      lessonsList.sort((a, b) => (a.level - b.level) || (a.lesson_position - b.lesson_position));
      setAvailableLessons(lessonsList);

      // Activity logs & Heatmap
      const reviewMap: Record<string, number> = {};
      const lessonMap: Record<string, number> = {};
      const durationMap: Record<string, number> = {};

      if (activityLogs && activityLogs.length > 0) {
        activityLogs.forEach((log: any) => {
          const dateKey = new Date(log.created_at).toISOString().split('T')[0];
          const count = log.item_count || 1;
          const duration = log.duration_seconds || 0;
          if (log.activity_type === 'review') {
            reviewMap[dateKey] = (reviewMap[dateKey] || 0) + count;
          } else if (log.activity_type === 'lesson') {
            lessonMap[dateKey] = (lessonMap[dateKey] || 0) + count;
          }
          durationMap[dateKey] = (durationMap[dateKey] || 0) + duration;
        });
      }

      if (progresses) {
        progresses.forEach((row: any) => {
          if (row.unlocked_at) {
            const dateKey = new Date(row.unlocked_at).toISOString().split('T')[0];
            lessonMap[dateKey] = (lessonMap[dateKey] || 0) + 1;
          }
        });
      }
      setReviewHeatmap(reviewMap);
      setLessonHeatmap(lessonMap);
      setDurationHeatmap(durationMap);

      let daysSinceLevelUp = 0;
      if (userLevel === 1) {
        const signupDate = profile?.created_at ? new Date(profile.created_at) : new Date(user.created_at);
        const diffMs = new Date().getTime() - signupDate.getTime();
        daysSinceLevelUp = Math.max(0, Math.floor(diffMs / (1000 * 60 * 60 * 24)));
      } else {
        const currentLevelProgresses = progresses ? progresses.filter((p: any) => p.items?.level === userLevel && p.unlocked_at) : [];
        if (currentLevelProgresses.length > 0) {
          const earliestUnlock = new Date(Math.min(...currentLevelProgresses.map((p: any) => new Date(p.unlocked_at).getTime())));
          const diffMs = new Date().getTime() - earliestUnlock.getTime();
          daysSinceLevelUp = Math.max(0, Math.floor(diffMs / (1000 * 60 * 60 * 24)));
        }
      }

      const computedStats: DashboardStats = {
        lessonsAvailable,
        reviewsDue,
        distribution,
        byType,
        level: userLevel,
        kanjiPassedInLevel: kanjiPassed,
        kanjiTotalInLevel: totalKanji,
        daysSinceLevelUp,
      };
      setStats(computedStats);

      // Recompute leaderboard entry for self
      const userPoints = progresses
        ? progresses.filter((i: any) => i.srs_stage >= 5).length * 10 + progresses.filter((i: any) => i.srs_stage > 0).length
        : 0;
      const finalLb = (lb || []).map(entry =>
        entry.isSelf
          ? { ...entry, name: profile?.username || username, level: userLevel, points: userPoints }
          : entry
      );
      setLeaderboard(finalLb);

      // 4. PERSIST SNAPSHOT (RAM + LocalStorage): Enables 0ms render on hard reloads
      const snapshot = {
        username: profile?.username || username,
        stats: computedStats,
        itemDetails: loadedItems,
        currentLevelKanjiList: kanjiList,
        availableLessons: lessonsList,
        leaderboard: finalLb,
        reviewHeatmap: reviewMap,
        lessonHeatmap: lessonMap,
        durationHeatmap: durationMap,
      };

      memoryCache.set(cacheKey, snapshot, 15 * 60 * 1000);
      if (typeof window !== 'undefined') {
        try {
          localStorage.setItem(cacheKey, JSON.stringify(snapshot));
        } catch (e) {
          console.warn('Failed to save dashboard localStorage:', e);
        }
      }

    } catch (err) {
      console.error('Error loading dashboard data:', err);
    } finally {
      setLoading(false);
    }
  }, [router, applySnapshot]);

  useEffect(() => {
    let isMounted = true;
    const fetchDashboard = async () => {
      if (isMounted) {
        await loadDashboard();
      }
    };
    fetchDashboard();
    return () => {
      isMounted = false;
    };
  }, [loadDashboard]);

  const handleResetProgress = async () => {
    if (!userId) return;
    try {
      setResetting(true);
      await resetAllUserProgress(userId);
      await loadDashboard();
    } catch (err) {
      console.error('Error resetting progress:', err);
    } finally {
      setResetting(false);
    }
  };

  return {
    loading,
    username,
    stats,
    itemDetails,
    currentLevelKanjiList,
    availableLessons,
    leaderboard,
    reviewHeatmap,
    lessonHeatmap,
    durationHeatmap,
    resetting,
    handleResetProgress,
    refetchDashboard: loadDashboard,
  };
}
