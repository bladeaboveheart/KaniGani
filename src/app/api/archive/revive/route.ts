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

    const { itemId } = await request.json();
    if (!itemId) {
      return NextResponse.json({ error: 'Item ID wajib disertakan' }, { status: 400 });
    }

    // Ubah srs_stage = 1 dan next_review = NOW() untuk item yang berstatus stage 9
    const { data: progress, error: fetchErr } = await userClient
      .from('user_progress')
      .select('srs_stage')
      .eq('user_id', user.id)
      .eq('item_id', itemId)
      .maybeSingle();

    if (fetchErr) {
      return NextResponse.json({ error: 'Gagal mencari progres item: ' + fetchErr.message }, { status: 500 });
    }

    if (!progress || progress.srs_stage !== 9) {
      return NextResponse.json({ error: 'Item tidak ditemukan atau tidak berstatus lulus/skipped (Stage 9)' }, { status: 400 });
    }

    const { error: updateErr } = await userClient
      .from('user_progress')
      .update({
        srs_stage: 1,
        next_review: new Date().toISOString(),
        unlocked_at: new Date().toISOString()
      })
      .eq('user_id', user.id)
      .eq('item_id', itemId);

    if (updateErr) {
      return NextResponse.json({ error: 'Gagal menghidupkan kembali item: ' + updateErr.message }, { status: 500 });
    }

    return NextResponse.json({
      success: true,
      message: 'Item berhasil dihidupkan kembali dan dimasukkan ke antrean review harian.'
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
