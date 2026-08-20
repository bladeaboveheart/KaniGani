import { supabase } from './supabase';

/**
 * Fetches all user_progress records for a user across all 60 levels (up to 10,000 items)
 * bypassing the default PostgREST 1,000 rows limit via parallel chunking.
 */
export async function fetchAllUserProgress(
  userId: string,
  selectQuery: string = 'item_id, srs_stage, unlocked_at, next_review',
  activeOnly: boolean = true
): Promise<any[]> {
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
  const firstData = (firstChunk.data as any[]) || [];

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

  const allRows: any[] = [...firstData];
  for (const res of remainingResults) {
    if (res.error) throw res.error;
    if (res.data && res.data.length > 0) {
      allRows.push(...(res.data as any[]));
    }
  }

  return allRows;
}

/**
 * Fetches all kanji items (up to 3,000 items) bypassing 1,000 rows cap.
 */
export async function fetchAllKanjiItems(selectQuery: string = 'id, level, character, slug, type'): Promise<any[]> {
  const [c1, c2, c3] = await Promise.all([
    supabase.from('items').select(selectQuery as any).eq('type', 'kanji').order('level', { ascending: true }).order('lesson_position', { ascending: true }).range(0, 999),
    supabase.from('items').select(selectQuery as any).eq('type', 'kanji').order('level', { ascending: true }).order('lesson_position', { ascending: true }).range(1000, 1999),
    supabase.from('items').select(selectQuery as any).eq('type', 'kanji').order('level', { ascending: true }).order('lesson_position', { ascending: true }).range(2000, 2999),
  ]);

  if (c1.error) throw c1.error;
  if (c2.error) throw c2.error;
  if (c3.error) throw c3.error;

  return [...((c1.data as any[]) || []), ...((c2.data as any[]) || []), ...((c3.data as any[]) || [])];
}

/**
 * Fetches all item prerequisites (up to 7,000 relations) bypassing 1,000 rows cap.
 */
export async function fetchAllPrerequisites(selectQuery: string = 'item_id, requires_item_id, items!requires_item_id(id, character, slug, level, type)'): Promise<any[]> {
  const chunkRanges = [
    [0, 999],
    [1000, 1999],
    [2000, 2999],
    [3000, 3999],
    [4000, 4999],
    [5000, 5999],
    [6000, 6999],
  ];

  const results = await Promise.all(
    chunkRanges.map(([from, to]) =>
      supabase
        .from('item_prerequisites')
        .select(selectQuery as any)
        .order('item_id', { ascending: true })
        .order('requires_item_id', { ascending: true })
        .range(from, to)
    )
  );

  const allRows: any[] = [];
  for (const res of results) {
    if (res.error) throw res.error;
    if (res.data && res.data.length > 0) {
      allRows.push(...(res.data as any[]));
    }
  }

  return allRows;
}
