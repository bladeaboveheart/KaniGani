import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import {
  verifyWaniKaniToken,
  fetchAllWaniKaniAssignments,
} from '@/lib/wanikani';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

export async function POST(request: Request) {
  try {
    const authHeader = request.headers.get('Authorization');
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }
    const token = authHeader.substring(7);

    const userClient = createClient(supabaseUrl, supabaseAnonKey, {
      global: {
        headers: { Authorization: `Bearer ${token}` },
      },
    });

    const { data: { user }, error: userError } = await userClient.auth.getUser();
    if (userError || !user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    // Ambil API key dari body jika ada, atau dari database
    let apiKey = '';
    try {
      const body = await request.json();
      if (body.apiKey && typeof body.apiKey === 'string') {
        apiKey = body.apiKey.trim();
      }
    } catch {
      // Body kosong
    }

    if (!apiKey) {
      const { data: integration } = await userClient
        .from('user_integrations')
        .select('wanikani_api_key')
        .eq('user_id', user.id)
        .maybeSingle();

      apiKey = integration?.wanikani_api_key || '';
    }

    if (!apiKey) {
      return NextResponse.json({ error: 'WaniKani API token tidak ditemukan.' }, { status: 400 });
    }

    // 1. Verifikasi User WaniKani & Ambil Level Akun
    const userRes = await verifyWaniKaniToken(apiKey);
    if (!userRes.valid || !userRes.user) {
      return NextResponse.json({ error: userRes.error || 'Token WaniKani tidak valid.' }, { status: 400 });
    }

    const wkUser = userRes.user;

    // 2. Fetch seluruh assignments WaniKani
    const assignments = await fetchAllWaniKaniAssignments(apiKey);

    // 3. Format payload untuk RPC bulk sync
    // Memetakan subject_id, srs_stage, unlocked_at, dan available_at (next_review)
    const progressPayload = assignments.map(a => ({
      wk_id: a.data.subject_id,
      srs_stage: a.data.srs_stage,
      unlocked_at: a.data.unlocked_at,
      next_review: a.data.available_at,
    }));

    // 4. Panggil Supabase RPC sync_wanikani_progress
    const { data: syncResult, error: syncError } = await userClient.rpc('sync_wanikani_progress', {
      p_user_id: user.id,
      p_user_level: wkUser.level,
      p_progress: progressPayload,
    });

    if (syncError) {
      return NextResponse.json({ error: `Gagal menyinkronkan data ke Supabase: ${syncError.message}` }, { status: 500 });
    }

    // 5. Fetch review statistics untuk melengkapi data Leech Tracker
    try {
      const { fetchAllWaniKaniReviewStatistics } = await import('@/lib/wanikani');
      const reviewStats = await fetchAllWaniKaniReviewStatistics(apiKey);
      if (reviewStats && reviewStats.length > 0) {
        const { data: itemMap } = await userClient
          .from('items')
          .select('id, wanikani_id')
          .not('wanikani_id', 'is', null);

        if (itemMap && itemMap.length > 0) {
          const wkToItemId = new Map(itemMap.map((it: any) => [it.wanikani_id, it.id]));
          const updates: any[] = [];
          for (const stat of reviewStats) {
            const itemId = wkToItemId.get(stat.data.subject_id);
            if (itemId) {
              const d = stat.data;
              const totalIncorrect = (d.meaning_incorrect || 0) + (d.reading_incorrect || 0);
              const totalCorrect = (d.meaning_correct || 0) + (d.reading_correct || 0);
              const currentStreak = Math.min(d.meaning_current_streak || 0, d.reading_current_streak || 0);
              const maxStreak = Math.max(d.meaning_max_streak || 0, d.reading_max_streak || 0);
              updates.push({
                user_id: user.id,
                item_id: itemId,
                incorrect_count: totalIncorrect,
                correct_count: totalCorrect,
                current_streak: currentStreak,
                max_streak: maxStreak,
                meaning_incorrect: d.meaning_incorrect || 0,
                reading_incorrect: d.reading_incorrect || 0,
              });
            }
          }
          if (updates.length > 0) {
            for (let i = 0; i < updates.length; i += 200) {
              const chunk = updates.slice(i, i + 200);
              await userClient.from('user_progress').upsert(chunk, { onConflict: 'user_id,item_id' });
            }
          }
        }
      }
    } catch (statErr) {
      console.warn('Non-critical: Failed to sync review statistics:', statErr);
    }

    // 6. Update metadata integrasi (last_synced_at)
    await userClient
      .from('user_integrations')
      .upsert({
        user_id: user.id,
        wanikani_api_key: apiKey,
        wanikani_username: wkUser.username,
        wanikani_level: wkUser.level,
        last_synced_at: new Date().toISOString(),
        updated_at: new Date().toISOString(),
      });

    return NextResponse.json({
      success: true,
      user: {
        username: wkUser.username,
        level: wkUser.level,
      },
      stats: syncResult,
      totalSynced: assignments.length,
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || 'Gagal menjalankan sinkronisasi WaniKani.' }, { status: 500 });
  }
}
