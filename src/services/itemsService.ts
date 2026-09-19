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
 * Fetches items for a specific level range with meanings and readings joined directly.
 * Extremely fast single query (<150ms) for progressive tier rendering.
 */
export async function fetchDictionaryTierItems(
  type: ItemType,
  minLevel: number,
  maxLevel: number
): Promise<Item[]> {
  const { data, error } = await supabase
    .from('items')
    .select(`
      id,
      character,
      slug,
      level,
      type,
      lesson_position,
      meaning_mnemonic,
      reading_mnemonic,
      description,
      item_meanings(id, meaning, primary_meaning, accepted_answer),
      item_readings(id, reading, reading_type, primary_reading, accepted_answer)
    `)
    .eq('type', type)
    .gte('level', minLevel)
    .lte('level', maxLevel)
    .order('level', { ascending: true })
    .order('lesson_position', { ascending: true });

  if (error) throw error;
  if (!data) return [];

  return data.map((it: any) => {
    const meanings = it.item_meanings || [];
    const readings = it.item_readings || [];
    const pMeaning = meanings.find((m: any) => m.primary_meaning)?.meaning || it.slug || '';
    const pReading = readings.find((r: any) => r.primary_reading)?.reading || '';

    return {
      ...it,
      meanings,
      readings,
      primary_meaning: pMeaning,
      primary_reading: pReading,
      accepted_meanings: meanings.filter((m: any) => m.accepted_answer).map((m: any) => m.meaning.toLowerCase().trim()),
      accepted_readings: readings.filter((r: any) => r.accepted_answer).map((r: any) => r.reading.toLowerCase().trim()),
    };
  });
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
 * Fetches detailed relations for a single item (meanings, readings, context sentences, prerequisites, dependents).
 */
export async function fetchItemFullDetails(itemId: string) {
  const [meaningsRes, readingsRes, sentencesRes, prereqsRes, dependentsRes, similarRes, audiosRes] = await Promise.all([
    supabase.from('item_meanings').select('*').eq('item_id', itemId),
    supabase.from('item_readings').select('*').eq('item_id', itemId),
    supabase.from('item_context_sentences').select('*').eq('item_id', itemId),
    supabase
      .from('item_prerequisites')
      .select('requires_item_id, items!requires_item_id(id, character, slug, level, type)')
      .eq('item_id', itemId),
    supabase
      .from('item_prerequisites')
      .select('item_id, items!item_id(id, character, slug, level, type)')
      .eq('requires_item_id', itemId),
    supabase
      .from('item_similar_kanji')
      .select(`
        similar_item_id,
        items!similar_item_id(
          id, character, slug, level, type,
          item_meanings(meaning, primary_meaning),
          item_readings(reading, primary_reading)
        )
      `)
      .eq('item_id', itemId),
    supabase.from('item_audios').select('*').eq('item_id', itemId),
  ]);

  const similarKanjis = similarRes.data?.map((s: any) => {
    const it = s.items;
    if (!it) return null;
    const primaryMeaning = it.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || it.item_meanings?.[0]?.meaning || it.slug;
    const primaryReading = it.item_readings?.find((r: any) => r.primary_reading)?.reading || it.item_readings?.[0]?.reading || null;
    return {
      id: it.id,
      character: it.character,
      slug: it.slug,
      level: it.level,
      type: it.type,
      primary_meaning: primaryMeaning,
      primary_reading: primaryReading,
    };
  }).filter(Boolean) || [];

  return {
    meanings: meaningsRes.data || [],
    readings: readingsRes.data || [],
    sentences: sentencesRes.data || [],
    prerequisites: prereqsRes.data?.map((p: any) => p.items).filter(Boolean) || [],
    dependents: dependentsRes.data?.map((d: any) => d.items).filter(Boolean) || [],
    similar_kanji: similarKanjis,
    audios: audiosRes.data || [],
  };
}

const itemIdentifierCache = new Map<string, any>();
const adjacentItemsCache = new Map<string, any>();

/**
 * Invalidate in-memory caches for items and adjacent items.
 */
export function invalidateItemCache(key?: string) {
  if (key) {
    itemIdentifierCache.delete(key.toLowerCase());
  } else {
    itemIdentifierCache.clear();
  }
  adjacentItemsCache.clear();
}

/**
 * Fetches an item by character or slug and hydrates its full relations.
 */
export async function fetchItemByIdentifier(type: ItemType, identifier: string) {
  const decoded = decodeURIComponent(identifier).trim();
  const cacheKey = `${type}_${decoded.toLowerCase()}`;

  if (itemIdentifierCache.has(cacheKey)) {
    return itemIdentifierCache.get(cacheKey);
  }

  // Try matching character or slug
  const { data: matched, error } = await supabase
    .from('items')
    .select('*')
    .eq('type', type)
    .or(`character.eq."${decoded}",slug.ilike."${decoded}"`);

  if (error) {
    console.error('Error querying item by identifier:', error);
  }

  let item = matched?.[0] || null;

  // Fallback: try slug case-insensitive alone
  if (!item) {
    const { data: bySlug } = await supabase
      .from('items')
      .select('*')
      .eq('type', type)
      .ilike('slug', decoded)
      .limit(1);
    item = bySlug?.[0] || null;
  }

  if (!item) return null;

  // Fetch full details (meanings, readings, sentences, prereqs, dependents, similar)
  const details = await fetchItemFullDetails(item.id);

  const primaryMeaning = details.meanings.find((m: any) => m.primary_meaning)?.meaning || details.meanings[0]?.meaning || item.slug || '';
  const primaryReading = details.readings.find((r: any) => r.primary_reading)?.reading || details.readings[0]?.reading || '';

  const fullItem = {
    ...item,
    meanings: details.meanings,
    readings: details.readings,
    sentences: details.sentences,
    radicals: details.prerequisites.filter((p: any) => p.type === 'radical'),
    kanjis: type === 'radical'
      ? details.dependents.filter((d: any) => d.type === 'kanji')
      : details.prerequisites.filter((p: any) => p.type === 'kanji'),
    vocabularies: details.dependents.filter((d: any) => d.type === 'vocabulary'),
    similar_kanji: details.similar_kanji,
    audios: details.audios || [],
    primary_meaning: primaryMeaning,
    primary_reading: primaryReading,
  };

  itemIdentifierCache.set(cacheKey, fullItem);
  if (fullItem.character) {
    itemIdentifierCache.set(`${type}_${fullItem.character.toLowerCase()}`, fullItem);
  }
  if (fullItem.slug) {
    itemIdentifierCache.set(`${type}_${fullItem.slug.toLowerCase()}`, fullItem);
  }

  return fullItem;
}

/**
 * Fetches previous and next items of the same type within the same level.
 */
export async function fetchAdjacentItems(type: ItemType, level: number, currentId: string) {
  const cacheKey = `${type}_${level}_${currentId}`;
  if (adjacentItemsCache.has(cacheKey)) {
    return adjacentItemsCache.get(cacheKey);
  }

  const { data: levelItems, error } = await supabase
    .from('items')
    .select('id, character, slug, level, type, lesson_position')
    .eq('type', type)
    .eq('level', level)
    .order('lesson_position', { ascending: true, nullsFirst: false })
    .order('id', { ascending: true });

  if (error || !levelItems || levelItems.length === 0) {
    return { prev: null, next: null };
  }

  const currentIndex = levelItems.findIndex(i => i.id === currentId);
  if (currentIndex === -1) {
    return { prev: null, next: null };
  }

  const prev = currentIndex > 0 ? levelItems[currentIndex - 1] : null;
  const next = currentIndex < levelItems.length - 1 ? levelItems[currentIndex + 1] : null;
  const result = { prev, next };

  adjacentItemsCache.set(cacheKey, result);
  return result;
}

/**
 * Fetches lightweight reference items (radicals & kanjis) for prerequisites selector.
 */
export async function fetchReferenceItems() {
  const { data, error } = await supabase
    .from('items')
    .select('id, character, slug, level, type')
    .in('type', ['radical', 'kanji'])
    .order('level', { ascending: true });

  if (error) {
    console.error('Error fetching reference items:', error);
    return [];
  }
  return data || [];
}

/**
 * Converts an item object into an ItemInput for ItemEditorModal.
 */
export async function mapItemToItemInput(item: any): Promise<import('@/lib/types').ItemInput> {
  let foundInKanjis: string[] = [];
  if (item.type === 'radical' && item.id) {
    try {
      const { data: depData } = await supabase
        .from('item_prerequisites')
        .select('item_id, items!item_id(type)')
        .eq('requires_item_id', item.id);
      if (depData) {
        foundInKanjis = depData
          .filter((d: any) => d.items?.type === 'kanji')
          .map((d: any) => d.item_id);
      }
    } catch (err) {
      console.error('Error fetching radical dependents:', err);
    }
  }

  // Meanings
  const rawMeanings = item.meanings || item.item_meanings || [];
  const meanings = rawMeanings.length > 0
    ? rawMeanings.map((m: any) => ({
        id: m.id,
        meaning: m.meaning || '',
        primary_meaning: Boolean(m.primary_meaning),
        accepted_answer: m.accepted_answer !== false
      }))
    : [{ meaning: item.primary_meaning || item.slug || '', primary_meaning: true, accepted_answer: true }];

  // Readings
  const rawReadings = item.readings || item.item_readings || [];
  const readings = rawReadings.length > 0
    ? rawReadings.map((r: any) => ({
        id: r.id,
        reading: r.reading || '',
        reading_type: r.reading_type || (item.type === 'kanji' ? 'onyomi' : null),
        primary_reading: Boolean(r.primary_reading),
        accepted_answer: r.accepted_answer !== false
      }))
    : (item.type !== 'radical' && item.primary_reading
        ? [{ reading: item.primary_reading, reading_type: item.type === 'kanji' ? 'onyomi' : null, primary_reading: true, accepted_answer: true }]
        : []);

  // Context sentences
  const rawSentences = item.sentences || item.context_sentences || item.item_context_sentences || [];
  const sentences = rawSentences.map((s: any) => ({
    id: s.id,
    japanese: s.japanese || '',
    indonesian: s.indonesian || ''
  }));

  // Prerequisites
  let prerequisites: string[] = [];
  if (item.type === 'kanji') {
    prerequisites = (item.radicals || item.prerequisites || []).map((r: any) => r.id || r.requires_item_id || r);
  } else if (item.type === 'vocabulary') {
    prerequisites = (item.kanjis || item.prerequisites || []).map((k: any) => k.id || k.requires_item_id || k);
  }

  return {
    id: item.id,
    type: item.type,
    character: item.character || '',
    slug: item.slug || '',
    level: item.level || 1,
    lesson_position: item.lesson_position || 0,
    meaning_mnemonic: item.meaning_mnemonic || '',
    reading_mnemonic: item.reading_mnemonic || '',
    description: item.description || '',
    meanings,
    readings,
    context_sentences: sentences,
    prerequisites,
    found_in_kanjis: foundInKanjis,
  };
}

/**
 * Persists item edits to Supabase (items, meanings, readings, sentences, prerequisites).
 */
export async function saveItemFullData(formItem: import('@/lib/types').ItemInput): Promise<{ success: boolean; error?: string; itemId?: string }> {
  if (!formItem.character.trim()) {
    return { success: false, error: 'Karakter tidak boleh kosong!' };
  }
  if (!formItem.slug.trim()) {
    return { success: false, error: 'Nama Slug/Arti Utama tidak boleh kosong!' };
  }

  const filledMeanings = formItem.meanings.filter(m => m.meaning.trim() !== '');
  if (filledMeanings.length === 0) {
    return { success: false, error: 'Harus mengisi minimal satu arti!' };
  }
  const hasPrimaryMeaning = filledMeanings.some(m => m.primary_meaning);
  if (!hasPrimaryMeaning) {
    return { success: false, error: 'Harus menetapkan satu arti sebagai arti utama (Primary Meaning)!' };
  }

  if (formItem.type !== 'radical') {
    const filledReadings = formItem.readings.filter(r => r.reading.trim() !== '');
    if (filledReadings.length === 0) {
      return { success: false, error: 'Kanji atau Kosakata harus memiliki minimal satu cara baca!' };
    }
    const hasPrimaryReading = filledReadings.some(r => r.primary_reading);
    if (!hasPrimaryReading) {
      return { success: false, error: 'Harus menetapkan satu cara baca sebagai utama (Primary Reading)!' };
    }
  }

  try {
    const isEdit = !!formItem.id;
    let itemId = formItem.id;

    const itemData = {
      type: formItem.type,
      character: formItem.character.trim(),
      slug: formItem.slug.trim().toLowerCase(),
      level: Number(formItem.level),
      lesson_position: Number(formItem.lesson_position),
      meaning_mnemonic: formItem.meaning_mnemonic.trim() || null,
      reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || null : null,
      description: formItem.description.trim() || null,
    };

    if (isEdit) {
      const { error: itemErr } = await supabase
        .from('items')
        .update(itemData)
        .eq('id', itemId);

      if (itemErr) throw itemErr;

      const delPromises = [
        supabase.from('item_meanings').delete().eq('item_id', itemId),
        supabase.from('item_readings').delete().eq('item_id', itemId),
        supabase.from('item_context_sentences').delete().eq('item_id', itemId),
        supabase.from('item_prerequisites').delete().eq('item_id', itemId),
      ];

      if (formItem.type === 'radical') {
        delPromises.push(supabase.from('item_prerequisites').delete().eq('requires_item_id', itemId));
      }

      const delResults = await Promise.all(delPromises);
      for (const res of delResults) {
        if (res.error) throw res.error;
      }
    } else {
      const { data: newItem, error: itemErr } = await supabase
        .from('items')
        .insert(itemData)
        .select('id')
        .single();

      if (itemErr) throw itemErr;
      itemId = newItem.id;
    }

    if (itemId) {
      // Meanings
      const meaningsToInsert = filledMeanings.map(m => ({
        item_id: itemId,
        meaning: m.meaning.trim(),
        primary_meaning: m.primary_meaning,
        accepted_answer: m.accepted_answer
      }));
      const { error: mErr } = await supabase.from('item_meanings').insert(meaningsToInsert);
      if (mErr) throw mErr;

      // Readings
      if (formItem.type !== 'radical') {
        const readingsToInsert = formItem.readings
          .filter(r => r.reading.trim() !== '')
          .map(r => ({
            item_id: itemId,
            reading: r.reading.trim(),
            reading_type: formItem.type === 'kanji' ? r.reading_type : null,
            primary_reading: r.primary_reading,
            accepted_answer: r.accepted_answer
          }));

        if (readingsToInsert.length > 0) {
          const { error: rErr } = await supabase.from('item_readings').insert(readingsToInsert);
          if (rErr) throw rErr;
        }
      }

      // Context Sentences
      if (formItem.type === 'vocabulary') {
        const sentencesToInsert = formItem.context_sentences
          .filter(s => s.japanese.trim() !== '' && s.indonesian.trim() !== '')
          .map(s => ({
            item_id: itemId,
            japanese: s.japanese.trim(),
            indonesian: s.indonesian.trim()
          }));

        if (sentencesToInsert.length > 0) {
          const { error: sErr } = await supabase.from('item_context_sentences').insert(sentencesToInsert);
          if (sErr) throw sErr;
        }
      }

      // Prerequisites (Kanji requires Radicals, Vocab requires Kanjis)
      if (formItem.type !== 'radical' && formItem.prerequisites.length > 0) {
        const prereqsToInsert = formItem.prerequisites.map(reqId => ({
          item_id: itemId,
          requires_item_id: reqId
        }));
        const { error: pErr } = await supabase.from('item_prerequisites').insert(prereqsToInsert);
        if (pErr) throw pErr;
      }

      // Radical found in kanjis
      if (formItem.type === 'radical' && formItem.found_in_kanjis && formItem.found_in_kanjis.length > 0) {
        const prereqsToInsert = formItem.found_in_kanjis.map(kanjiId => ({
          item_id: kanjiId,
          requires_item_id: itemId
        }));
        const { error: pErr } = await supabase.from('item_prerequisites').insert(prereqsToInsert);
        if (pErr) throw pErr;
      }
    }

    invalidateItemCache();
    return { success: true, itemId };
  } catch (err: any) {
    console.error('Error in saveItemFullData:', err);
    return { success: false, error: err?.message || String(err) };
  }
}

