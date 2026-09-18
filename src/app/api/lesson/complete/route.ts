import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { getNextReviewDate } from '@/lib/levelLogic';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

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

    return NextResponse.json({ success: true, count: itemIds.length });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
