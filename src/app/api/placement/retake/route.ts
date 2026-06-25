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

    // 1. Bersihkan progress lama user
    const { error: deleteErr } = await userClient
      .from('user_progress')
      .delete()
      .eq('user_id', user.id);

    if (deleteErr) {
      return NextResponse.json({ error: 'Gagal membersihkan progres lama: ' + deleteErr.message }, { status: 500 });
    }

    // 2. Reset status user_rank_state agar has_taken_placement = false dan rank kembali ke default N5 Pangkat 1
    const { error: stateErr } = await userClient
      .from('user_rank_state')
      .upsert({
        user_id: user.id,
        current_rank_id: 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d',
        has_taken_placement: false,
        updated_at: new Date().toISOString()
      }, { onConflict: 'user_id' });

    if (stateErr) {
      return NextResponse.json({ error: 'Gagal mereset status pangkat: ' + stateErr.message }, { status: 500 });
    }

    return NextResponse.json({
      success: true,
      message: 'Berhasil mereset data. Anda kini dapat mengulang placement test dari awal.'
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
