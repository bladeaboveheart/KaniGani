import { supabase } from '@/lib/supabase';
import { UserProgress } from '@/lib/types';

/**
 * Fetches all user_progress records for a user across all 60 levels (up to 10,000 items)
 * bypassing the default PostgREST 1,000 rows limit via parallel chunking.
 */
export async function fetchAllUserProgress(
  userId: string,
  selectQuery: string = 'item_id, srs_stage, unlocked_at, next_review',
  activeOnly: boolean = true
): Promise<UserProgress[]> {
  const chunkRanges = [
    [0, 999],
    [1000, 1999],
    [2000, 2999],
    [3000, 3999],
    [4000, 4999],
    [5000, 5999],
  ];

  let baseQuery = supabase
    .from('user_progress')
    .select(selectQuery as any)
    .eq('user_id', userId)
    .order('item_id', { ascending: true });

  if (activeOnly) {
    baseQuery = baseQuery.gt('srs_stage', 0);
  }

  // Fast single fetch for normal datasets (< 1000 active items)
  const firstChunk = await baseQuery.range(0, 999);
  if (firstChunk.error) throw firstChunk.error;
  const firstData = (firstChunk.data as unknown as UserProgress[]) || [];

  if (firstData.length < 1000) {
    return firstData;
  }

  // If there are 1000+ items, fetch remaining in parallel
  const remainingRanges = chunkRanges.slice(1);
  const remainingResults = await Promise.all(
    remainingRanges.map(([from, to]) =>
      baseQuery.range(from, to)
    )
  );

  const allRows: UserProgress[] = [...firstData];
  for (const res of remainingResults) {
    if (res.error) throw res.error;
    if (res.data && res.data.length > 0) {
      allRows.push(...(res.data as unknown as UserProgress[]));
    }
  }

  return allRows;
}

/**
 * Updates or inserts a single item progress record for a user.
 */
export async function upsertUserProgress(
  userId: string,
  itemId: string,
  progressData: Partial<UserProgress>
) {
  const { data, error } = await supabase
    .from('user_progress')
    .upsert({
      user_id: userId,
      item_id: itemId,
      ...progressData,
      updated_at: new Date().toISOString(),
    })
    .select()
    .single();

  if (error) throw error;
  return data;
}

/**
 * Resets user progress back to Level 1.
 */
export async function resetAllUserProgress(userId: string) {
  // Delete existing progress
  const { error: delError } = await supabase
    .from('user_progress')
    .delete()
    .eq('user_id', userId);

  if (delError) throw delError;

  // Reset profile to level 1
  const { error: profileError } = await supabase
    .from('profiles')
    .update({ level: 1 })
    .eq('id', userId);

  if (profileError) throw profileError;

  return true;
}
