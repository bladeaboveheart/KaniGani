import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';

// Helper to fetch JSON with Authorization headers
async function fetchWaniKani(url: string, token: string) {
  const res = await fetch(url, {
    headers: {
      'Authorization': `Bearer ${token}`,
      'Wanikani-Revision': '20170710',
    },
  });
  if (!res.ok) {
    throw new Error(`WaniKani API returned ${res.status}: ${res.statusText}`);
  }
  return res.json();
}

export async function POST(req: Request) {
  try {
    const token = process.env.WANIKANI_API_TOKEN;
    if (!token) {
      return NextResponse.json(
        { error: 'WANIKANI_API_TOKEN is not configured in server environment' },
        { status: 500 }
      );
    }

    // 1. Fetch all kanji items from Supabase with pagination
    const items: { id: string; wanikani_id: number | null }[] = [];
    let from = 0;
    const pageSize = 1000;
    while (true) {
      const { data, error: itemsError } = await supabase
        .from('items')
        .select('id, wanikani_id')
        .eq('type', 'kanji')
        .range(from, from + pageSize - 1);

      if (itemsError) throw itemsError;
      if (!data || data.length === 0) break;
      items.push(...data);
      if (data.length < pageSize) break;
      from += pageSize;
    }

    const wkToKaniGani = new Map<number, string>();
    for (const it of items) {
      if (it.wanikani_id) {
        wkToKaniGani.set(it.wanikani_id, it.id);
      }
    }

    // 2. Fetch all Kanji subjects from WaniKani API
    let url: string | null = 'https://api.wanikani.com/v2/subjects?types=kanji';
    const wkSubjects: any[] = [];
    while (url) {
      const res = await fetchWaniKani(url, token);
      if (res.data) {
        wkSubjects.push(...res.data);
      }
      url = res.pages?.next_url || null;
    }

    // 3. Extract pairs
    const pairSet = new Set<string>();
    const similarPairs: { item_id: string; similar_item_id: string }[] = [];

    for (const sub of wkSubjects) {
      const similarIds: number[] = sub.data?.visually_similar_subject_ids || [];
      if (similarIds.length === 0) continue;

      const sourceId = wkToKaniGani.get(sub.id);
      if (!sourceId) continue;

      for (const simWkId of similarIds) {
        const targetId = wkToKaniGani.get(simWkId);
        if (!targetId || targetId === sourceId) continue;

        // Pair 1: source -> target
        const key1 = `${sourceId}:${targetId}`;
        if (!pairSet.has(key1)) {
          pairSet.add(key1);
          similarPairs.push({ item_id: sourceId, similar_item_id: targetId });
        }

        // Pair 2: target -> source
        const key2 = `${targetId}:${sourceId}`;
        if (!pairSet.has(key2)) {
          pairSet.add(key2);
          similarPairs.push({ item_id: targetId, similar_item_id: sourceId });
        }
      }
    }

    // 4. Purge existing
    const { error: delError } = await supabase
      .from('item_similar_kanji')
      .delete()
      .neq('item_id', '00000000-0000-0000-0000-000000000000');

    if (delError) throw delError;

    // 5. Batch insert
    const batchSize = 500;
    for (let i = 0; i < similarPairs.length; i += batchSize) {
      const batch = similarPairs.slice(i, i + batchSize);
      const { error: insError } = await supabase
        .from('item_similar_kanji')
        .insert(batch);

      if (insError) throw insError;
    }

    return NextResponse.json({
      success: true,
      totalKanji: items.length,
      syncedPairs: similarPairs.length,
      message: `Berhasil menyinkronkan ${similarPairs.length} relasi kanji mirip dua arah.`,
    });
  } catch (error: any) {
    console.error('Error in sync-similar-kanji API route:', error);
    return NextResponse.json(
      { error: error?.message || 'Terjadi kesalahan saat sinkronisasi' },
      { status: 500 }
    );
  }
}
