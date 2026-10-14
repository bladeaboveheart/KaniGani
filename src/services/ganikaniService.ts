import { supabase } from '@/lib/supabase';
import { Item } from '@/lib/types';
import { calculatePenalty, getNextReviewDate } from '@/lib/levelLogic';
import { generateChunkRanges } from '@/lib/userProgress';

export interface GanikaniSettings {
  user_id: string;
  follow: boolean;
  unlock_stage: number;
  auto_expand_details: boolean;
  auto_play_audio: boolean;
  keyboard_shortcuts: boolean;
}

export interface GanikaniDashboardStats {
  lessonsAvailable: number;
  reviewsDue: number;
  distribution: {
    apprentice: number; // 1-4
    guru: number;       // 5-6
    master: number;     // 7
    enlightened: number;// 8
    burned: number;     // 9
  };
  byStage: Record<number, number>;
  nextReviewAt: string | null;
}

export const DEFAULT_GANIKANI_SETTINGS: Omit<GanikaniSettings, 'user_id'> = {
  follow: true,
  unlock_stage: 5, // Guru 1 default
  auto_expand_details: false,
  auto_play_audio: false,
  keyboard_shortcuts: true,
};

/**
 * Mengambil preferensi GaniKani pengguna. Jika belum ada, otomatis membuat default.
 */
export async function getGanikaniSettings(userId: string): Promise<GanikaniSettings> {
  const { data, error } = await supabase
    .from('ganikani_settings')
    .select('*')
    .eq('user_id', userId)
    .maybeSingle();

  if (error) {
    console.error('Error fetching ganikani settings:', error);
  }

  if (data) {
    return data as GanikaniSettings;
  }

  // Buat default settings
  const newSettings: GanikaniSettings = {
    user_id: userId,
    ...DEFAULT_GANIKANI_SETTINGS,
  };

  await supabase.from('ganikani_settings').upsert(newSettings);
  return newSettings;
}

/**
 * Memperbarui pengaturan GaniKani pengguna
 */
export async function updateGanikaniSettings(
  userId: string,
  updates: Partial<Omit<GanikaniSettings, 'user_id'>>
): Promise<GanikaniSettings | null> {
  const { data, error } = await supabase
    .from('ganikani_settings')
    .upsert({
      user_id: userId,
      ...updates,
      updated_at: new Date().toISOString(),
    })
    .select()
    .single();

  if (error) {
    console.error('Error updating ganikani settings:', error);
    return null;
  }

  return data as GanikaniSettings;
}

/**
 * Mengambil semua baris ganikani_progress pengguna tanpa batasan 1000 rows PostgREST
 */
async function fetchAllGanikaniProgress(userId: string) {
  const buildQuery = () =>
    supabase
      .from('ganikani_progress')
      .select('item_id, srs_stage, next_review_at')
      .eq('user_id', userId)
      .order('item_id', { ascending: true });

  const firstChunk = await buildQuery().range(0, 999);
  if (firstChunk.error) {
    console.error('Error fetching ganikani progress:', firstChunk.error);
    return [];
  }
  const firstData = firstChunk.data || [];
  if (firstData.length < 1000) return firstData;

  const { count } = await supabase
    .from('ganikani_progress')
    .select('*', { count: 'exact', head: true })
    .eq('user_id', userId);

  const total = count || 12000;
  const ranges = generateChunkRanges(total, 1000, 1000);
  const remaining = await Promise.all(
    ranges.map(([from, to]) => buildQuery().range(from, to))
  );

  const all = [...firstData];
  for (const res of remaining) {
    if (res.data) all.push(...res.data);
  }
  return all;
}

/**
 * Mengambil semua kosakata KaniGani yang memenuhi syarat unlock_stage tanpa batasan 1000 rows PostgREST
 */
async function fetchAllEligibleKaniGaniVocab(userId: string, unlockStage: number) {
  const buildQuery = () =>
    supabase
      .from('user_progress')
      .select('item_id, srs_stage, items!inner(id, level, lesson_position, type)')
      .eq('user_id', userId)
      .eq('items.type', 'vocabulary')
      .gte('srs_stage', unlockStage)
      .order('item_id', { ascending: true });

  const firstChunk = await buildQuery().range(0, 999);
  if (firstChunk.error) {
    console.error('Error fetching eligible vocab:', firstChunk.error);
    return [];
  }
  const firstData = firstChunk.data || [];
  if (firstData.length < 1000) return firstData;

  const { count } = await supabase
    .from('user_progress')
    .select('*, items!inner(type)', { count: 'exact', head: true })
    .eq('user_id', userId)
    .eq('items.type', 'vocabulary')
    .gte('srs_stage', unlockStage);

  const total = count || 15000;
  const ranges = generateChunkRanges(total, 1000, 1000);
  const remaining = await Promise.all(
    ranges.map(([from, to]) => buildQuery().range(from, to))
  );

  const all = [...firstData];
  for (const res of remaining) {
    if (res.data) all.push(...res.data);
  }
  return all;
}

/**
 * Mengambil semua review GaniKani yang jatuh tempo tanpa batasan 1000 rows
 */
async function fetchAllDueGanikaniReviews(userId: string, now: string) {
  const buildQuery = () =>
    supabase
      .from('ganikani_progress')
      .select('item_id, srs_stage, next_review_at')
      .eq('user_id', userId)
      .lte('next_review_at', now)
      .order('next_review_at', { ascending: true });

  const firstChunk = await buildQuery().range(0, 999);
  if (firstChunk.error) {
    console.error('Error fetching due reviews:', firstChunk.error);
    return [];
  }
  const firstData = firstChunk.data || [];
  if (firstData.length < 1000) return firstData;

  const { count } = await supabase
    .from('ganikani_progress')
    .select('*', { count: 'exact', head: true })
    .eq('user_id', userId)
    .lte('next_review_at', now);

  const total = count || 12000;
  const ranges = generateChunkRanges(total, 1000, 1000);
  const remaining = await Promise.all(
    ranges.map(([from, to]) => buildQuery().range(from, to))
  );

  const all = [...firstData];
  for (const res of remaining) {
    if (res.data) all.push(...res.data);
  }
  return all;
}

/**
 * Mengambil ringkasan statistik Dashboard GaniKani
 */
export async function getGanikaniDashboardStats(userId: string): Promise<GanikaniDashboardStats> {
  const settings = await getGanikaniSettings(userId);
  const now = new Date().toISOString();

  // 1. Ambil semua progres GaniKani pengguna dengan chunking
  const progressRows = await fetchAllGanikaniProgress(userId);

  const learnedItemIds = new Set<string>();
  let reviewsDue = 0;
  let nextReviewAt: string | null = null;
  const byStage: Record<number, number> = {
    1: 0, 2: 0, 3: 0, 4: 0,
    5: 0, 6: 0, 7: 0, 8: 0, 9: 0,
  };

  progressRows.forEach(row => {
    learnedItemIds.add(row.item_id);
    const stage = Number(row.srs_stage) || 1;
    if (byStage[stage] !== undefined) {
      byStage[stage]++;
    }

    if (row.next_review_at && stage >= 1 && stage <= 8) {
      if (row.next_review_at <= now) {
        reviewsDue++;
      } else {
        if (!nextReviewAt || row.next_review_at < nextReviewAt) {
          nextReviewAt = row.next_review_at;
        }
      }
    }
  });

  // 2. Hitung jumlah Lesson yang tersedia dengan chunking (jika Follow ON)
  let lessonsAvailable = 0;
  if (settings.follow) {
    const eligibleKaniGani = await fetchAllEligibleKaniGaniVocab(userId, settings.unlock_stage);
    lessonsAvailable = eligibleKaniGani.filter(
      row => !learnedItemIds.has(row.item_id)
    ).length;
  }

  return {
    lessonsAvailable,
    reviewsDue,
    distribution: {
      apprentice: byStage[1] + byStage[2] + byStage[3] + byStage[4],
      guru: byStage[5] + byStage[6],
      master: byStage[7],
      enlightened: byStage[8],
      burned: byStage[9],
    },
    byStage,
    nextReviewAt,
  };
}

/**
 * Mengambil antrean Lesson GaniKani (vocab yang sudah >= unlock_stage di KaniGani dan belum di-GaniKani)
 */
export async function getGanikaniLessonQueue(
  userId: string,
  limit: number = 5
): Promise<Item[]> {
  const settings = await getGanikaniSettings(userId);
  if (!settings.follow) {
    return [];
  }

  // 1. Ambil ID yang sudah pernah dipelajari di GaniKani
  const existingProgress = await fetchAllGanikaniProgress(userId);
  const existingIds = new Set(existingProgress.map(p => p.item_id));

  // 2. Ambil semua item KaniGani yang memenuhi syarat (type = vocabulary, srs_stage >= unlock_stage)
  const eligibleProgress = await fetchAllEligibleKaniGaniVocab(userId, settings.unlock_stage);

  if (eligibleProgress.length === 0) {
    return [];
  }

  // Filter yang belum pernah di GaniKani
  const targetItemIds = eligibleProgress
    .filter(row => !existingIds.has(row.item_id))
    .sort((a: any, b: any) => {
      // Urutkan level ASC, lalu lesson_position ASC
      if (a.items?.level !== b.items?.level) {
        return (a.items?.level || 0) - (b.items?.level || 0);
      }
      return (a.items?.lesson_position || 0) - (b.items?.lesson_position || 0);
    })
    .slice(0, limit)
    .map(r => r.item_id);

  if (targetItemIds.length === 0) {
    return [];
  }

  // 3. Ambil relasi detail item lengkap untuk kuis
  return fetchDetailedItemsForGanikani(targetItemIds, userId);
}

/**
 * Mengambil antrean Review GaniKani (item yang next_review_at <= NOW)
 */
export async function getGanikaniReviewQueue(userId: string): Promise<Item[]> {
  const now = new Date().toISOString();
  const dueRows = await fetchAllDueGanikaniReviews(userId, now);

  if (dueRows.length === 0) {
    return [];
  }

  const itemIds = dueRows.map(r => r.item_id);
  const items = await fetchDetailedItemsForGanikani(itemIds, userId);

  // Sematkan srs_stage GaniKani ke masing-masing item
  const stageMap = new Map(dueRows.map(r => [r.item_id, r.srs_stage]));
  return items.map(item => ({
    ...item,
    srs_stage: stageMap.get(item.id) || 1,
  }));
}

/**
 * Helper untuk mengambil detail relasional item + sinonim privat pengguna
 */
async function fetchDetailedItemsForGanikani(itemIds: string[], userId: string): Promise<Item[]> {
  if (itemIds.length === 0) return [];

  const [itemsRes, userItemDataRes] = await Promise.all([
    supabase
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
        parts_of_speech,
        item_meanings(id, meaning, primary_meaning, accepted_answer),
        item_readings(id, reading, reading_type, primary_reading, accepted_answer),
        item_context_sentences(id, japanese, indonesian),
        item_audios(id, url, voice_actor_name, gender)
      `)
      .in('id', itemIds),
    supabase
      .from('user_item_data')
      .select('item_id, meaning_synonyms, reading_synonyms')
      .eq('user_id', userId)
      .in('item_id', itemIds),
  ]);

  if (itemsRes.error || !itemsRes.data) {
    console.error('Error fetching item details:', itemsRes.error);
    return [];
  }

  const userItemDataMap = new Map<string, { meaning_synonyms: string[]; reading_synonyms: string[] }>();
  (userItemDataRes.data || []).forEach((row: any) => {
    userItemDataMap.set(row.item_id, {
      meaning_synonyms: row.meaning_synonyms || [],
      reading_synonyms: row.reading_synonyms || [],
    });
  });

  return (itemsRes.data as any[]).map(raw => {
    const userData = userItemDataMap.get(raw.id);
    const meanings = raw.item_meanings || [];
    const readings = raw.item_readings || [];

    const primaryMeaning = meanings.find((m: any) => m.primary_meaning)?.meaning || meanings[0]?.meaning || '';
    const primaryReading = readings.find((r: any) => r.primary_reading)?.reading || readings[0]?.reading || '';

    const acceptedMeanings = meanings
      .filter((m: any) => m.accepted_answer)
      .map((m: any) => m.meaning);

    const acceptedReadings = readings
      .filter((r: any) => r.accepted_answer)
      .map((r: any) => r.reading);

    // Gabungkan sinonim bacaan kustom jika ada
    if (userData?.reading_synonyms && userData.reading_synonyms.length > 0) {
      acceptedReadings.push(...userData.reading_synonyms);
    }

    return {
      id: raw.id,
      character: raw.character,
      slug: raw.slug,
      level: raw.level,
      type: raw.type,
      lesson_position: raw.lesson_position,
      meaning_mnemonic: raw.meaning_mnemonic,
      reading_mnemonic: raw.reading_mnemonic,
      parts_of_speech: raw.parts_of_speech,
      meanings,
      readings,
      context_sentences: raw.item_context_sentences,
      audios: raw.item_audios,
      primary_meaning: primaryMeaning,
      primary_reading: primaryReading,
      accepted_meanings: acceptedMeanings,
      accepted_readings: Array.from(new Set(acceptedReadings)),
      user_synonyms: userData?.meaning_synonyms || [],
    } as Item;
  });
}

/**
 * Menyelesaikan kuis Lesson GaniKani (mengaktifkan item ke SRS Stage 1)
 */
export async function completeGanikaniLesson(userId: string, itemIds: string[]): Promise<void> {
  if (itemIds.length === 0) return;

  const now = new Date();
  // Apprentice 1 review pertama: 4 jam dari sekarang
  const nextReview = getNextReviewDate(1, now);

  const rows = itemIds.map(itemId => ({
    user_id: userId,
    item_id: itemId,
    srs_stage: 1,
    next_review_at: nextReview,
    incorrect_count: 0,
    streak: 0,
    created_at: now.toISOString(),
    updated_at: now.toISOString(),
  }));

  const { error } = await supabase
    .from('ganikani_progress')
    .upsert(rows, { onConflict: 'user_id,item_id' });

  if (error) {
    console.error('Error completing ganikani lesson:', error);
    throw error;
  }

  // Catat aktivitas belajar ke activity_logs bersama
  await supabase.from('activity_logs').insert({
    user_id: userId,
    activity_type: 'lesson',
    item_count: itemIds.length,
    logged_at: now.toISOString(),
  });
}

/**
 * Mengirim hasil ulasan review GaniKani
 */
export async function submitGanikaniReview(
  userId: string,
  itemId: string,
  wrongCount: number
): Promise<{ newStage: number; nextReviewAt: string | null }> {
  // 1. Ambil stage saat ini di ganikani_progress
  const { data: current } = await supabase
    .from('ganikani_progress')
    .select('srs_stage, incorrect_count, streak')
    .eq('user_id', userId)
    .eq('item_id', itemId)
    .maybeSingle();

  const currentStage = current ? Number(current.srs_stage) : 1;
  const prevIncorrect = current ? Number(current.incorrect_count) : 0;
  const prevStreak = current ? Number(current.streak) : 0;

  const isSuccess = wrongCount === 0;
  const newStreak = isSuccess ? prevStreak + 1 : 0;
  const newIncorrect = prevIncorrect + wrongCount;

  // 2. Hitung stage baru
  const newStage = isSuccess
    ? Math.min(9, currentStage + 1)
    : calculatePenalty(currentStage, wrongCount);

  const nextReviewAt = getNextReviewDate(newStage);

  // 3. Simpan pembaruan progres
  await supabase.from('ganikani_progress').upsert({
    user_id: userId,
    item_id: itemId,
    srs_stage: newStage,
    next_review_at: nextReviewAt,
    incorrect_count: newIncorrect,
    streak: newStreak,
    updated_at: new Date().toISOString(),
  }, { onConflict: 'user_id,item_id' });

  // 4. Catat aktivitas ulasan ke activity_logs bersama
  await supabase.from('activity_logs').insert({
    user_id: userId,
    activity_type: 'review',
    item_count: 1,
    logged_at: new Date().toISOString(),
  });

  return { newStage, nextReviewAt };
}

/**
 * Menambahkan sinonim bacaan Jepang privat pengguna (reading_synonyms)
 */
export async function addGanikaniReadingSynonym(
  userId: string,
  itemId: string,
  newReading: string
): Promise<string[]> {
  const trimmed = newReading.trim();
  if (!trimmed) return [];

  // Ambil data user_item_data yang ada
  const { data: existing } = await supabase
    .from('user_item_data')
    .select('reading_synonyms')
    .eq('user_id', userId)
    .eq('item_id', itemId)
    .maybeSingle();

  const currentSynonyms: string[] = existing?.reading_synonyms || [];
  if (!currentSynonyms.includes(trimmed)) {
    currentSynonyms.push(trimmed);
  }

  await supabase.from('user_item_data').upsert({
    user_id: userId,
    item_id: itemId,
    reading_synonyms: currentSynonyms,
    updated_at: new Date().toISOString(),
  }, { onConflict: 'user_id,item_id' });

  return currentSynonyms;
}
