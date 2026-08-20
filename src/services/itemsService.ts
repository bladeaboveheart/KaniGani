import { supabase } from '@/lib/supabase';
import { Item, ItemType } from '@/lib/types';

/**
 * Fetches all items of a given type in parallel chunks to bypass PostgREST 1000 row limits.
 */
export async function fetchItemsByType(type: ItemType): Promise<Item[]> {
  const chunkRanges = [
    [0, 999],
    [1000, 1999],
    [2000, 2999],
    [3000, 3999],
    [4000, 4999],
  ];

  const results = await Promise.all(
    chunkRanges.map(([from, to]) =>
      supabase
        .from('items')
        .select('*')
        .eq('type', type)
        .order('level', { ascending: true })
        .order('lesson_position', { ascending: true })
        .range(from, to)
    )
  );

  const allItems: Item[] = [];
  for (const res of results) {
    if (res.error) throw res.error;
    if (res.data && res.data.length > 0) {
      allItems.push(...(res.data as Item[]));
    }
  }

  return allItems;
}

/**
 * Fetches all item prerequisites across the platform (up to 7000 rows in chunks).
 */
export async function fetchAllItemPrerequisites(): Promise<any[]> {
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
        .select('item_id, requires_item_id, items!item_id(id, character, slug, level, type)')
        .order('item_id', { ascending: true })
        .order('requires_item_id', { ascending: true })
        .range(from, to)
    )
  );

  const allRows: any[] = [];
  for (const res of results) {
    if (res.error) throw res.error;
    if (res.data && res.data.length > 0) {
      allRows.push(...res.data);
    }
  }

  return allRows;
}

/**
 * Fetches item meanings by item IDs in chunks.
 */
export async function fetchItemMeanings(itemIds: string[]): Promise<any[]> {
  if (!itemIds.length) return [];
  const { data, error } = await supabase
    .from('item_meanings')
    .select('*')
    .in('item_id', itemIds);

  if (error) throw error;
  return data || [];
}

/**
 * Fetches item readings by item IDs in chunks.
 */
export async function fetchItemReadings(itemIds: string[]): Promise<any[]> {
  if (!itemIds.length) return [];
  const { data, error } = await supabase
    .from('item_readings')
    .select('*')
    .in('item_id', itemIds);

  if (error) throw error;
  return data || [];
}

/**
 * Fetches context sentences for vocabulary items.
 */
export async function fetchContextSentences(itemIds: string[]): Promise<any[]> {
  if (!itemIds.length) return [];
  const { data, error } = await supabase
    .from('item_context_sentences')
    .select('*')
    .in('item_id', itemIds);

  if (error) throw error;
  return data || [];
}

/**
 * Fetches detailed relations for a single item (meanings, readings, context sentences, prerequisites).
 */
export async function fetchItemFullDetails(itemId: string) {
  const [meaningsRes, readingsRes, sentencesRes, prereqsRes] = await Promise.all([
    supabase.from('item_meanings').select('*').eq('item_id', itemId),
    supabase.from('item_readings').select('*').eq('item_id', itemId),
    supabase.from('item_context_sentences').select('*').eq('item_id', itemId),
    supabase
      .from('item_prerequisites')
      .select('requires_item_id, items!requires_item_id(id, character, slug, level, type)')
      .eq('item_id', itemId),
  ]);

  return {
    meanings: meaningsRes.data || [],
    readings: readingsRes.data || [],
    sentences: sentencesRes.data || [],
    prerequisites: prereqsRes.data?.map((p: any) => p.items).filter(Boolean) || [],
  };
}
