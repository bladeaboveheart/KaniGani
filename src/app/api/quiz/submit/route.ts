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

// Fungsi mengecek dan membuka item dependen yang terkunci
async function checkAndUnlockItems(userClient: any, userId: string, updatedItemId: string) {
  const unlockedItems: string[] = [];

  // 1. Ambil item-item yang membutuhkan updatedItemId sebagai prasyarat (tabel items bersifat read-only bagi auth)
  const { data: dependents, error: depError } = await userClient
    .from('item_prerequisites')
    .select('item_id')
    .eq('requires_item_id', updatedItemId);

  if (depError || !dependents || dependents.length === 0) return unlockedItems;

  for (const dep of dependents) {
    // 2. Ambil semua prasyarat yang dibutuhkan oleh item dependen ini
    const { data: prereqs, error: prereqError } = await userClient
      .from('item_prerequisites')
      .select('requires_item_id')
      .eq('item_id', dep.item_id);

    if (prereqError || !prereqs || prereqs.length === 0) continue;

    const prereqIds = prereqs.map((p: any) => p.requires_item_id);

    // 3. Coba dapatkan status progres pengguna untuk semua prasyarat ini
    const { data: progresses, error: progError } = await userClient
      .from('user_progress')
      .select('item_id, srs_stage')
      .eq('user_id', userId)
      .in('item_id', prereqIds);

    if (progError || !progresses) continue;

    // Pastikan pengguna sudah memiliki record untuk semua prasyarat dan semuanya sudah mencapai minimal Stage 5 (Guru)
    const allGuru =
      progresses.length === prereqIds.length &&
      progresses.every((p: any) => p.srs_stage >= 5);

    if (allGuru) {
      // 4. Buka item dependen tersebut! Set srs_stage = 1, unlocked_at = now, next_review = null
      const { error: unlockError } = await userClient
        .from('user_progress')
        .upsert({
          user_id: userId,
          item_id: dep.item_id,
          srs_stage: 1,
          unlocked_at: new Date().toISOString(),
          next_review: null,
        }, { onConflict: 'user_id,item_id' });

      if (!unlockError) {
        unlockedItems.push(dep.item_id);
      } else {
        console.error('Gagal membuka item prasyarat:', dep.item_id, unlockError);
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

    // 4. Jika item naik ke Guru (Stage >= 5) dari non-Guru, cek item dependent
    let unlockedDependents: string[] = [];
    if (newStage >= 5 && currentStage < 5) {
      unlockedDependents = await checkAndUnlockItems(userClient, user.id, itemId);
    }

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
