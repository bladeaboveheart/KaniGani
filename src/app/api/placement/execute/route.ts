import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

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
        headers: {
          Authorization: `Bearer ${token}`,
        },
      },
    });

    const { data: { user }, error: userError } = await userClient.auth.getUser();
    if (userError || !user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const { targetRankId } = await request.json();
    if (!targetRankId) {
      return NextResponse.json({ error: 'Target Rank ID wajib disertakan' }, { status: 400 });
    }

    // 1. Dapatkan detail target rank
    const { data: targetRank, error: rankErr } = await userClient
      .from('ranks')
      .select('*')
      .eq('id', targetRankId)
      .maybeSingle();

    if (rankErr || !targetRank) {
      return NextResponse.json({ error: 'Rank tidak ditemukan atau error database' }, { status: 500 });
    }

    // 2. Cari semua ranks dengan sort_order di bawah target rank
    const { data: lowerRanks, error: lowerErr } = await userClient
      .from('ranks')
      .select('id')
      .lt('sort_order', targetRank.sort_order);

    if (lowerErr) {
      return NextResponse.json({ error: 'Gagal mengambil data pangkat di bawah target' }, { status: 500 });
    }

    const lowerRankIds = (lowerRanks || []).map(r => r.id);

    // 3. Hapus semua data progres lama user
    const { error: deleteErr } = await userClient
      .from('user_progress')
      .delete()
      .eq('user_id', user.id);

    if (deleteErr) {
      return NextResponse.json({ error: 'Gagal membersihkan data progres lama: ' + deleteErr.message }, { status: 500 });
    }

    // 4. Masukkan semua items dari pangkat yang dilewati dengan srs_stage = 9 (Lulus/Immortal)
    if (lowerRankIds.length > 0) {
      const { data: lowerItems, error: itemsErr } = await userClient
        .from('items')
        .select('id')
        .in('rank_id', lowerRankIds);

      if (itemsErr) {
        return NextResponse.json({ error: 'Gagal mengambil data item dari pangkat yang dilewati' }, { status: 500 });
      }

      if (lowerItems && lowerItems.length > 0) {
        const insertRows = lowerItems.map(item => ({
          user_id: user.id,
          item_id: item.id,
          srs_stage: 9,
          unlocked_at: new Date().toISOString(),
          next_review: null
        }));

        // Batasi ukuran batch insert Supabase jika sangat besar (tapi 200-300 baris masih aman di Supabase)
        const { error: insertErr } = await userClient
          .from('user_progress')
          .insert(insertRows);

        if (insertErr) {
          return NextResponse.json({ error: 'Gagal memasukkan data item yang dilewati: ' + insertErr.message }, { status: 500 });
        }
      }
    }

    // 5. Masukkan materi dari pangkat target sebagai materi aktif baru dengan status srs_stage = 0 (Terkunci)
    // Serta masukkan radikal dari pangkat target dengan status srs_stage = 1 (karena tidak memiliki prasyarat, siap dipelajari)
    // Tunggu, mari pastikan kita konsisten dengan logic asli KaniGani:
    // Radikal di target pangkat dimulai dengan srs_stage = 1 (unlocked_at = NOW), Kanji & Vocab srs_stage = 0.
    const { data: targetItems, error: targetItemsErr } = await userClient
      .from('items')
      .select('id, type')
      .eq('rank_id', targetRankId);

    if (targetItemsErr) {
      return NextResponse.json({ error: 'Gagal mengambil item pangkat target' }, { status: 500 });
    }

    if (targetItems && targetItems.length > 0) {
      const targetRows = targetItems.map(item => {
        // Radikal di pangkat target langsung masuk antrean belajar (srs_stage = 1)
        const isRadical = item.type === 'radical';
        return {
          user_id: user.id,
          item_id: item.id,
          srs_stage: isRadical ? 1 : 0,
          unlocked_at: isRadical ? new Date().toISOString() : null,
          next_review: null
        };
      });

      const { error: targetInsertErr } = await userClient
        .from('user_progress')
        .insert(targetRows);

      if (targetInsertErr) {
        return NextResponse.json({ error: 'Gagal memasukkan item pangkat target: ' + targetInsertErr.message }, { status: 500 });
      }
    }

    // 6. Update user_rank_state
    const { error: stateErr } = await userClient
      .from('user_rank_state')
      .upsert({
        user_id: user.id,
        current_rank_id: targetRankId,
        has_taken_placement: true,
        updated_at: new Date().toISOString()
      }, { onConflict: 'user_id' });

    if (stateErr) {
      return NextResponse.json({ error: 'Gagal memperbarui status pangkat pengguna: ' + stateErr.message }, { status: 500 });
    }

    return NextResponse.json({
      success: true,
      message: `Berhasil menempatkan pengguna di pangkat ${targetRank.name}`,
      targetRankName: targetRank.name
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
