import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { verifyWaniKaniToken } from '@/lib/wanikani';

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

    const { apiKey } = await request.json();
    if (!apiKey || typeof apiKey !== 'string' || apiKey.trim().length === 0) {
      return NextResponse.json({ error: 'WaniKani API Token wajib diisi.' }, { status: 400 });
    }

    // 1. Verifikasi token ke WaniKani API
    const verification = await verifyWaniKaniToken(apiKey.trim());
    if (!verification.valid || !verification.user) {
      return NextResponse.json({ error: verification.error || 'Token WaniKani tidak valid.' }, { status: 400 });
    }

    const wkUser = verification.user;

    // 2. Simpan ke tabel user_integrations (RLS aman)
    const { error: upsertError } = await userClient
      .from('user_integrations')
      .upsert({
        user_id: user.id,
        wanikani_api_key: apiKey.trim(),
        wanikani_username: wkUser.username,
        wanikani_level: wkUser.level,
        updated_at: new Date().toISOString(),
      });

    if (upsertError) {
      return NextResponse.json({ error: `Gagal menyimpan integrasi: ${upsertError.message}` }, { status: 500 });
    }

    return NextResponse.json({
      success: true,
      user: {
        username: wkUser.username,
        level: wkUser.level,
        profileUrl: wkUser.profile_url,
        subscriptionType: wkUser.subscription?.type || 'free',
      },
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || 'Server error' }, { status: 500 });
  }
}
