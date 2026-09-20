import { supabase } from '@/lib/supabase';
import { UserProgress } from '@/lib/types';
import { generateChunkRanges } from '@/lib/userProgress';

/**
 * Fetches all user_progress records for a user across all 60 levels (up to 12,000+ items)
 * bypassing the default PostgREST 1,000 rows limit via adaptive parallel chunking.
 */
export async function fetchAllUserProgress(
  userId: string,
  selectQuery: string = 'item_id, srs_stage, unlocked_at, next_review',
  activeOnly: boolean = true
): Promise<UserProgress[]> {
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

  // Dynamic chunk sizing based on user_progress count
  let countQuery = supabase
    .from('user_progress')
    .select('*', { count: 'exact', head: true })
    .eq('user_id', userId);

  if (activeOnly) {
    countQuery = countQuery.gt('srs_stage', 0);
  }

  const { count, error: countErr } = await countQuery;
  const totalCount = countErr || count === null || count === undefined ? 12000 : count;

  // Generate dynamic ranges starting from offset 1000
  const remainingRanges = generateChunkRanges(totalCount, 1000, 1000);
  if (remainingRanges.length === 0) {
    return firstData;
  }

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

  // Reset profile to null (dynamic level calculation)
  const { error: profileError } = await supabase
    .from('profiles')
    .update({ level: null })
    .eq('id', userId);

  if (profileError) throw profileError;

  return true;
}
