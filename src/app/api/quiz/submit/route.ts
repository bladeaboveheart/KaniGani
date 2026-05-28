import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

const SRS_INTERVALS: Record<number, number> = {
  1: 4 * 60,         // 4 jam
  2: 8 * 60,         // 8 jam
  3: 24 * 60,        // 24 jam (1 hari)
  4: 2 * 24 * 60,    // 48 jam (2 hari)
  5: 7 * 24 * 60,    // 7 hari (1 minggu)
  6: 14 * 24 * 60,   // 14 hari (2 minggu)
  7: 30 * 24 * 60,   // 30 hari (1 bulan)
  8: 120 * 24 * 60,  // 120 hari (4 bulan)
};

function getNextReviewDate(stage: number): string | null {
  if (stage >= 9) return null;
  const intervalMinutes = SRS_INTERVALS[stage];
  if (!intervalMinutes) return null;
  const next = new Date();
  next.setMinutes(next.getMinutes() + intervalMinutes);
  return next.toISOString();
}

// Rumus Penalti SRS:
// Stage Baru = Stage Awal - (ceil(wrongCount / 2) * Faktor Penalti)
// Jika Stage Awal < 5: Faktor = 1
// Jika Stage Awal >= 5: Faktor = 2
// Batas minimum = 1
function calculatePenalty(currentStage: number, wrongCount: number): number {
  if (wrongCount <= 0) {
    return Math.min(9, currentStage + 1);
  }
  const penaltyFactor = currentStage >= 5 ? 2 : 1;
  const penalty = Math.ceil(wrongCount / 2) * penaltyFactor;
  return Math.max(1, currentStage - penalty);
}

// Fungsi mendapatkan level dinamis pengguna berdasarkan progres Kanji (lulus minimal 90% Kanji level L-1 untuk mencapai level L)
async function getUserLevel(userClient: any, userId: string): Promise<number> {
  // 0. Cek apakah ada override level manual di profiles
  const { data: profile } = await userClient
    .from('profiles')
    .select('level')
    .eq('id', userId)
    .maybeSingle();

  if (profile && profile.level !== null && profile.level !== undefined) {
    return profile.level;
  }

  const { data: allKanji, error: kanjiError } = await userClient
    .from('items')
    .select('id, level')
    .eq('type', 'kanji');

  if (kanjiError || !allKanji) return 1;

  const { data: progressList, error: progressError } = await userClient
    .from('user_progress')
    .select('item_id')
    .eq('user_id', userId)
    .gte('srs_stage', 5);

  if (progressError || !progressList) return 1;

  const passedKanjiIds = new Set(progressList.map((p: any) => p.item_id));

  let currentLevel = 1;
  while (currentLevel <= 10) {
    const levelKanji = allKanji.filter((k: any) => k.level === currentLevel);
    if (levelKanji.length === 0) {
      break; // Tidak ada level lebih tinggi lagi
    }

    const passedCount = levelKanji.filter((k: any) => passedKanjiIds.has(k.id)).length;
    const passRatio = passedCount / levelKanji.length;

    if (passRatio >= 0.9) {
      currentLevel++;
    } else {
      break;
    }
  }

  return currentLevel;
}

// Fungsi membuka Radikal dan materi prasyarat yang terpenuhi saat pengguna naik level
async function handleLevelUp(userClient: any, userId: string, newLevel: number): Promise<string[]> {
  const unlockedItems: string[] = [];

  const { data: newLevelItems, error: itemsError } = await userClient
    .from('items')
    .select('id, type')
    .eq('level', newLevel);

  if (itemsError || !newLevelItems) return unlockedItems;

  for (const item of newLevelItems) {
    if (item.type === 'radical') {
      // Radikal tingkat baru langsung dibuka karena tidak mempunyai prasyarat
      const { error: unlockError } = await userClient
        .from('user_progress')
        .upsert({
          user_id: userId,
          item_id: item.id,
          srs_stage: 1,
          unlocked_at: new Date().toISOString(),
          next_review: null,
        }, { onConflict: 'user_id,item_id' });

      if (!unlockError) unlockedItems.push(item.id);
    } else {
      // Kanji / Kosakata tingkat baru: cek jika prasyaratnya sudah terpenuhi
      const { data: prereqs, error: prereqError } = await userClient
        .from('item_prerequisites')
        .select('requires_item_id')
        .eq('item_id', item.id);

      if (prereqError || !prereqs || prereqs.length === 0) {
        // Jika tidak ada prasyarat (safety fallback), langsung buka
        const { error: unlockError } = await userClient
          .from('user_progress')
          .upsert({
            user_id: userId,
            item_id: item.id,
            srs_stage: 1,
            unlocked_at: new Date().toISOString(),
            next_review: null,
          }, { onConflict: 'user_id,item_id' });

        if (!unlockError) unlockedItems.push(item.id);
        continue;
      }

      const prereqIds = prereqs.map((p: any) => p.requires_item_id);

      const { data: progresses, error: progError } = await userClient
        .from('user_progress')
        .select('item_id, srs_stage')
        .eq('user_id', userId)
        .in('item_id', prereqIds);

      if (progError || !progresses) continue;

      const allGuru =
        progresses.length === prereqIds.length &&
        progresses.every((p: any) => p.srs_stage >= 5);

      if (allGuru) {
        const { error: unlockError } = await userClient
          .from('user_progress')
          .upsert({
            user_id: userId,
            item_id: item.id,
            srs_stage: 1,
            unlocked_at: new Date().toISOString(),
            next_review: null,
          }, { onConflict: 'user_id,item_id' });

        if (!unlockError) unlockedItems.push(item.id);
      }
    }
  }

  return unlockedItems;
}

// Fungsi mengecek dan membuka item dependen yang terkunci (dibatasi level pengguna)
async function checkAndUnlockItems(userClient: any, userId: string, updatedItemId: string) {
  const unlockedItems: string[] = [];

  // 1. Dapatkan level pengguna saat ini
  const userLevel = await getUserLevel(userClient, userId);

  // 2. Ambil item-item yang membutuhkan updatedItemId sebagai prasyarat
  const { data: dependents, error: depError } = await userClient
    .from('item_prerequisites')
    .select('item_id')
    .eq('requires_item_id', updatedItemId);

  if (depError || !dependents || dependents.length === 0) return unlockedItems;

  const depIds = dependents.map((d: any) => d.item_id);
  const { data: depItems, error: itemsError } = await userClient
    .from('items')
    .select('id, level, type')
    .in('id', depIds);

  if (itemsError || !depItems) return unlockedItems;

  for (const depItem of depItems) {
    // BATASI pembukaan: Jangan buka item jika levelnya lebih tinggi dari level pengguna saat ini!
    if (depItem.level > userLevel) {
      continue;
    }

    // 3. Ambil semua prasyarat yang dibutuhkan oleh item dependen ini
    const { data: prereqs, error: prereqError } = await userClient
      .from('item_prerequisites')
      .select('requires_item_id')
      .eq('item_id', depItem.id);

    if (prereqError || !prereqs || prereqs.length === 0) continue;

    const prereqIds = prereqs.map((p: any) => p.requires_item_id);

    // 4. Coba dapatkan status progres pengguna untuk semua prasyarat ini
    const { data: progresses, error: progError } = await userClient
      .from('user_progress')
      .select('item_id, srs_stage')
      .eq('user_id', userId)
      .in('item_id', prereqIds);

    if (progError || !progresses) continue;

    const allGuru =
      progresses.length === prereqIds.length &&
      progresses.every((p: any) => p.srs_stage >= 5);

    if (allGuru) {
      const { error: unlockError } = await userClient
        .from('user_progress')
        .upsert({
          user_id: userId,
          item_id: depItem.id,
          srs_stage: 1,
          unlocked_at: new Date().toISOString(),
          next_review: null,
        }, { onConflict: 'user_id,item_id' });

      if (!unlockError) {
        unlockedItems.push(depItem.id);
      }
    }
  }

  return unlockedItems;
}

export async function POST(request: Request) {
  try {
    const authHeader = request.headers.get('Authorization');
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }
    const token = authHeader.substring(7);

    // Buat client Supabase scoped ke request dengan JWT token user agar RLS bekerja
    const userClient = createClient(supabaseUrl, supabaseAnonKey, {
      global: {
        headers: {
          Authorization: `Bearer ${token}`,
        },
      },
    });

    const { data: { user }, error: userError } = await userClient.auth.getUser();
    if (userError || !user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const { itemId, wrongCount } = await request.json();
    if (!itemId || typeof wrongCount !== 'number') {
      return NextResponse.json({ error: 'Item ID dan wrongCount wajib diisi' }, { status: 400 });
    }

    // 1. Query progres SRS saat ini menggunakan userClient
    const { data: progress, error: progError } = await userClient
      .from('user_progress')
      .select('srs_stage')
      .eq('user_id', user.id)
      .eq('item_id', itemId)
      .maybeSingle();

    if (progError) {
      return NextResponse.json({ error: 'Gagal mengambil progres: ' + progError.message }, { status: 500 });
    }

    // Default ke stage 1 jika belum ada progresnya (atau error)
    const currentStage = progress ? progress.srs_stage : 1;

    // Fetch level before update (to prevent race condition during level up checks)
    const levelBefore = await getUserLevel(userClient, user.id);

    // 2. Hitung stage baru berdasarkan jumlah kesalahan
    const newStage = calculatePenalty(currentStage, wrongCount);
    const nextReview = getNextReviewDate(newStage);

    // 3. Perbarui database menggunakan userClient
    const { error: updateError } = await userClient
      .from('user_progress')
      .upsert({
        user_id: user.id,
        item_id: itemId,
        srs_stage: newStage,
        next_review: nextReview,
        unlocked_at: progress ? undefined : new Date().toISOString()
      }, { onConflict: 'user_id,item_id' });

    if (updateError) {
      return NextResponse.json({ error: 'Gagal memperbarui progres: ' + updateError.message }, { status: 500 });
    }

    // 4. Jika item naik ke Guru (Stage >= 5) dari non-Guru, cek item dependent & naik level
    let unlockedDependents: string[] = [];
    let levelUpOccurred = false;
    let newLevel = 1;

    if (newStage >= 5 && currentStage < 5) {
      // Cek unlock dependen biasa (yang levelnya <= levelBefore)
      unlockedDependents = await checkAndUnlockItems(userClient, user.id, itemId);

      // Dapatkan level setelah progres diupdate
      const levelAfter = await getUserLevel(userClient, user.id);
      newLevel = levelAfter;

      if (levelAfter > levelBefore) {
        levelUpOccurred = true;
        // Tangani pembukaan Radikal/materi level baru saat pengguna berhasil naik level!
        const levelUpUnlocked = await handleLevelUp(userClient, user.id, levelAfter);
        unlockedDependents.push(...levelUpUnlocked);
      }
    }

    // 5. Log aktivitas review ke activity_logs
    await userClient.from('activity_logs').insert({
      user_id: user.id,
      activity_type: 'review',
      item_count: 1,
    });

    return NextResponse.json({
      success: true,
      currentStage,
      newStage,
      nextReview,
      unlockedDependents,
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
