import { supabase } from './supabase';

/**
 * Generates [from, to] chunk ranges of size chunkSize up to totalCount - 1.
 */
export function generateChunkRanges(totalCount: number, chunkSize: number = 1000, startOffset: number = 0): [number, number][] {
  if (totalCount <= startOffset) return [];
  const ranges: [number, number][] = [];
  for (let from = startOffset; from < totalCount; from += chunkSize) {
    const to = Math.min(from + chunkSize - 1, totalCount - 1);
    ranges.push([from, to]);
  }
  return ranges;
}

/**
 * Fetches all user_progress records for a user across all 60 levels (up to 12,000+ items)
 * bypassing the default PostgREST 1,000 rows limit via adaptive parallel chunking.
 */
export async function fetchAllUserProgress(
  userId: string,
  selectQuery: string = 'item_id, srs_stage, unlocked_at, next_review',
  activeOnly: boolean = true
): Promise<any[]> {
  const buildQuery = () => {
    let q = supabase
      .from('user_progress')
      .select(selectQuery as any)
      .eq('user_id', userId)
      .order('item_id', { ascending: true });

    if (activeOnly) {
      q = q.gt('srs_stage', 0);
    }
    return q;
  };

  // Fast single fetch for normal datasets (< 1000 active items)
  const firstChunk = await buildQuery().range(0, 999);
  if (firstChunk.error) throw firstChunk.error;
  const firstData = (firstChunk.data as any[]) || [];

  if (firstData.length < 1000) {
    return firstData;
  }

  // Count total progress records for this user to dynamically size chunks
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
      buildQuery().range(from, to)
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
 * Fetches all kanji items (up to 4,000 items) bypassing 1,000 rows cap.
 */
export async function fetchAllKanjiItems(
  selectQuery: string = 'id, level, character, slug, type',
  customClient: any = supabase
): Promise<any[]> {
  const [c1, c2, c3, c4] = await Promise.all([
    customClient.from('items').select(selectQuery as any).eq('type', 'kanji').order('level', { ascending: true }).order('lesson_position', { ascending: true }).range(0, 999),
    customClient.from('items').select(selectQuery as any).eq('type', 'kanji').order('level', { ascending: true }).order('lesson_position', { ascending: true }).range(1000, 1999),
    customClient.from('items').select(selectQuery as any).eq('type', 'kanji').order('level', { ascending: true }).order('lesson_position', { ascending: true }).range(2000, 2999),
    customClient.from('items').select(selectQuery as any).eq('type', 'kanji').order('level', { ascending: true }).order('lesson_position', { ascending: true }).range(3000, 3999),
  ]);

  if (c1.error) throw c1.error;
  if (c2.error) throw c2.error;
  if (c3.error) throw c3.error;
  if (c4.error) throw c4.error;

  return [
    ...((c1.data as any[]) || []),
    ...((c2.data as any[]) || []),
    ...((c3.data as any[]) || []),
    ...((c4.data as any[]) || [])
  ];
}

/**
 * Fetches all Guru items (stage >= 5) for a user bypassing 1,000 rows cap.
 */
export async function fetchAllGuruItems(userId: string, customClient: any = supabase): Promise<string[]> {
  const baseQuery = customClient
    .from('user_progress')
    .select('item_id')
    .eq('user_id', userId)
    .gte('srs_stage', 5)
    .order('item_id', { ascending: true });

  const firstChunk = await baseQuery.range(0, 999);
  if (firstChunk.error) throw firstChunk.error;
  const firstData = (firstChunk.data as any[]) || [];

  if (firstData.length < 1000) {
    return firstData.map(r => String(r.item_id));
  }

  const { count } = await customClient
    .from('user_progress')
    .select('*', { count: 'exact', head: true })
    .eq('user_id', userId)
    .gte('srs_stage', 5);

  const totalCount = count || 12000;
  const remainingRanges = generateChunkRanges(totalCount, 1000, 1000);

  const remainingResults = await Promise.all(
    remainingRanges.map(([from, to]) => baseQuery.range(from, to))
  );

  const allIds = firstData.map(r => String(r.item_id));
  for (const res of remainingResults) {
    if (res.data) {
      allIds.push(...res.data.map((r: any) => String(r.item_id)));
    }
  }

  return allIds;
}

/**
 * Fetches all item prerequisites across all 60 levels (17,000+ relations)
 * bypassing 1,000 rows cap with adaptive parallel chunking.
 */
export async function fetchAllPrerequisites(
  selectQuery: string = 'item_id, requires_item_id, items!requires_item_id(id, character, slug, level, type)'
): Promise<any[]> {
  // Query exact count of prerequisites to allocate chunks dynamically
  const { count, error: countErr } = await supabase
    .from('item_prerequisites')
    .select('*', { count: 'exact', head: true });

  const totalCount = countErr || count === null || count === undefined ? 22000 : count;
  const chunkRanges = generateChunkRanges(totalCount, 1000, 0);

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

/**
 * Ensures Level 1 radicals are unlocked for a user.
 * Returns the unlocked radical item IDs.
 */
export async function ensureLevel1RadicalsUnlocked(userId: string): Promise<string[]> {
  const { data: rads, error: radErr } = await supabase
    .from('items')
    .select('id')
    .eq('type', 'radical')
    .eq('level', 1);

  if (radErr || !rads || rads.length === 0) return [];

  const nowIso = new Date().toISOString();
  const upsertRows = rads.map((r: { id: string }) => ({
    user_id: userId,
    item_id: r.id,
    srs_stage: 1,
    unlocked_at: nowIso,
    next_review: null,
  }));

  const { error: upsertErr } = await supabase
    .from('user_progress')
    .upsert(upsertRows, { onConflict: 'user_id,item_id', ignoreDuplicates: true });

  if (upsertErr) {
    console.error('Failed to ensure Level 1 radicals unlocked:', upsertErr);
    return [];
  }

  return rads.map((r: { id: string }) => r.id);
}
