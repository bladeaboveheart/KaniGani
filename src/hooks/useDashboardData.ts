'use client';

import { useEffect, useState, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { DashboardStats } from '@/lib/types';
import { fetchAllUserProgress, resetAllUserProgress } from '@/services/progressService';
import { fetchItemsByType, fetchAllItemPrerequisites } from '@/services/itemsService';
import { fetchActivityLogs, fetchLeaderboard, LeaderboardEntry } from '@/services/statsService';
import { getUserProfile } from '@/services/profileService';

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

  const loadDashboard = useCallback(async () => {
    try {
      setLoading(true);
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) {
        router.push('/');
        return;
      }
      setUserId(user.id);

      // Load Profile
      const profile = await getUserProfile(user.id);
      if (profile?.username) {
        setUsername(profile.username);
      }

      const now = new Date().toISOString();

      // 1. Fetch user progress, all kanji, and prerequisites in parallel
      const [progresses, allKanji, prereqs] = await Promise.all([
        fetchAllUserProgress(user.id, 'item_id, srs_stage, unlocked_at, next_review, items(*)'),
        fetchItemsByType('kanji'),
        fetchAllItemPrerequisites(),
      ]);

      const progressGuruSet = new Set(
        (progresses || [])
          .filter((p: any) => p.srs_stage >= 5)
          .map((p: any) => p.item_id)
      );

      let userLevel = 1;
      if (profile && profile.level !== null && profile.level !== undefined) {
        userLevel = profile.level;
      } else {
        while (userLevel <= 60) {
          const levelKanjiItems = allKanji ? allKanji.filter((k: any) => k.level === userLevel) : [];
          if (levelKanjiItems.length === 0) break;

          const passed = levelKanjiItems.filter((k: any) => progressGuruSet.has(k.id)).length;
          const ratio = passed / levelKanjiItems.length;
          if (ratio >= 0.9) {
            userLevel++;
          } else {
            break;
          }
        }
      }

      // Self-healing check: unlock level <= userLevel radicals that are accidentally locked (srs_stage = 0)
      const lockedRadicalsToUnlock = progresses ? progresses.filter((row: any) => {
        const item = (row as any).items;
        return item && item.type === 'radical' && item.level <= userLevel && row.srs_stage === 0;
      }) : [];

      if (lockedRadicalsToUnlock.length > 0) {
        const idsToUnlock = lockedRadicalsToUnlock.map((row: any) => row.item_id);
        const { error: healError } = await supabase
          .from('user_progress')
          .update({
            srs_stage: 1,
            unlocked_at: new Date().toISOString()
          })
          .eq('user_id', user.id)
          .in('item_id', idsToUnlock);

        if (!healError) {
          console.log('Successfully self-healed unlocked missing radicals:', idsToUnlock);
          window.location.reload();
          return;
        }
      }

      // Calculate stats for current active level
      const currentLevelKanji = allKanji ? allKanji.filter((k: any) => k.level === userLevel) : [];
      const totalKanji = currentLevelKanji.length;
      const kanjiIds = currentLevelKanji.map(k => k.id);

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

      if (progresses) {
        progresses.forEach((row: any) => {
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
      }

      const prereqsMap = new Map<string, any[]>();
      if (prereqs) {
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
      }

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
      const activityLogs = await fetchActivityLogs(user.id);
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

      setStats({
        lessonsAvailable,
        reviewsDue,
        distribution,
        byType,
        level: userLevel,
        kanjiPassedInLevel: kanjiPassed,
        kanjiTotalInLevel: totalKanji,
        daysSinceLevelUp,
      });

      // Leaderboard
      const userPoints = progresses ? progresses.filter((i: any) => i.srs_stage >= 5).length * 10 + progresses.filter((i: any) => i.srs_stage > 0).length : 0;
      const lb = await fetchLeaderboard(user.id, profile?.username || username, userLevel, userPoints);
      setLeaderboard(lb);

    } catch (err) {
      console.error('Error loading dashboard data:', err);
    } finally {
      setLoading(false);
    }
  }, [router, username]);

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
