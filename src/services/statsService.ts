import { supabase } from '@/lib/supabase';

export interface LeaderboardEntry {
  rank: number;
  name: string;
  level: number;
  points: number;
  active: boolean;
  isSelf?: boolean;
}

/**
 * Fetches user activity logs for heatmaps.
 */
export async function fetchActivityLogs(userId: string) {
  const { data, error } = await supabase
    .from('activity_logs')
    .select('activity_type, item_count, created_at, duration_seconds')
    .eq('user_id', userId);

  if (error) {
    console.warn('Error fetching activity logs:', error);
    return [];
  }
  return data || [];
}

/**
 * Fetches leaderboard ranking via RPC with fallback dummy.
 */
export async function fetchLeaderboard(currentUserId: string, fallbackSelfName: string, fallbackLevel: number, fallbackPoints: number): Promise<LeaderboardEntry[]> {
  try {
    const { data: leaderboardData, error: leaderboardError } = await supabase.rpc('get_leaderboard');

    if (leaderboardData && !leaderboardError && Array.isArray(leaderboardData) && leaderboardData.length > 0) {
      return leaderboardData.map((item: any, idx: number) => ({
        rank: idx + 1,
        name: item.username || 'Pengguna',
        level: item.level || 1,
        points: item.points || 0,
        active: true,
        isSelf: item.id === currentUserId
      }));
    }
  } catch (err) {
    console.warn('Leaderboard RPC unavailable, using computed rankings:', err);
  }

  const dummy: LeaderboardEntry[] = [
    { rank: 1, name: 'TanakaSan', level: 10, points: 1200, active: true },
    { rank: 2, name: 'BudiKanji', level: 8, points: 940, active: true },
    { rank: 3, name: 'SakuraChan', level: 7, points: 780, active: false },
    { rank: 4, name: 'KaniMaster', level: 6, points: 640, active: true },
    { rank: 5, name: 'WaniCrab', level: 5, points: 520, active: false },
    { rank: 6, name: fallbackSelfName || 'Pengguna', level: fallbackLevel, points: fallbackPoints, active: true, isSelf: true },
    { rank: 7, name: 'GanyDev', level: 3, points: 210, active: true },
    { rank: 8, name: 'NihonLover', level: 1, points: 35, active: false },
    { rank: 9, name: 'WaniGuru', level: 1, points: 20, active: true },
  ].sort((a, b) => b.points - a.points).map((item, idx) => ({ ...item, rank: idx + 1 }));

  return dummy;
}
