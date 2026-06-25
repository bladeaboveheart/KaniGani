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

    const { itemIds, durationSeconds } = await request.json();
    if (!itemIds || !Array.isArray(itemIds) || itemIds.length === 0) {
      return NextResponse.json({ error: 'Item IDs are required' }, { status: 400 });
    }

    const now = new Date().toISOString();
    const nextReview = getNextReviewDate(1);

    const updates = itemIds.map((itemId) => ({
      user_id: user.id,
      item_id: itemId,
      srs_stage: 1,
      unlocked_at: now,
      next_review: nextReview,
    }));

    // 1. Dapatkan rank aktif sebelum update
    const { data: beforeState } = await userClient
      .from('user_rank_state')
      .select('current_rank_id')
      .eq('user_id', user.id)
      .maybeSingle();
    const beforeRankId = beforeState?.current_rank_id;

    // Upsert menggunakan client ber-autentikasi user
    const { error } = await userClient.from('user_progress').upsert(updates, {
      onConflict: 'user_id,item_id',
    });

    if (error) {
      return NextResponse.json({ error: 'Gagal memperbarui database: ' + error.message }, { status: 500 });
    }

    // Log aktivitas lesson ke activity_logs
    await userClient.from('activity_logs').insert({
      user_id: user.id,
      activity_type: 'lesson',
      item_count: itemIds.length,
      duration_seconds: durationSeconds || 0,
    });

    // 2. Dapatkan rank aktif setelah update (trigger di database kemungkinan telah menaikkan pangkat)
    const { data: afterState } = await userClient
      .from('user_rank_state')
      .select('current_rank_id, ranks(*)')
      .eq('user_id', user.id)
      .maybeSingle();
    const afterRankId = afterState?.current_rank_id;
    const newRankRaw = afterState?.ranks;
    const newRank = (Array.isArray(newRankRaw) ? newRankRaw[0] : newRankRaw) as any;

    let levelUpOccurred = false;
    let rankUpOccurred = false;

    if (beforeRankId && afterRankId && beforeRankId !== afterRankId) {
      const { data: oldRank } = await userClient
        .from('ranks')
        .select('jlpt_level')
        .eq('id', beforeRankId)
        .maybeSingle();

      if (oldRank && newRank) {
        if (oldRank.jlpt_level !== newRank.jlpt_level) {
          levelUpOccurred = true;
        } else {
          rankUpOccurred = true;
        }
      }
    }

    return NextResponse.json({ 
      success: true, 
      count: itemIds.length,
      levelUpOccurred,
      rankUpOccurred,
      newRankName: newRank ? newRank.name : null
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
