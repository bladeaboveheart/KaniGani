import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import {
  verifyWaniKaniToken,
  fetchAllWaniKaniAssignments,
  calculatePreviewStats,
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

    // Ambil API key dari body jika disediakan, atau fallback ke database
    let apiKey = '';
    try {
      const body = await request.json();
      if (body.apiKey && typeof body.apiKey === 'string') {
        apiKey = body.apiKey.trim();
      }
    } catch {
      // Body kosong, lanjut ambil dari DB
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

    // 1. Verifikasi User WaniKani
    const userRes = await verifyWaniKaniToken(apiKey);
    if (!userRes.valid || !userRes.user) {
      return NextResponse.json({ error: userRes.error || 'Token WaniKani tidak valid.' }, { status: 400 });
    }

    // 2. Fetch seluruh assignments WaniKani
    const assignments = await fetchAllWaniKaniAssignments(apiKey);

    // 3. Hitung ringkasan statistik
    const stats = calculatePreviewStats(userRes.user, assignments);

    return NextResponse.json({
      success: true,
      stats,
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || 'Gagal memproses pratinjau WaniKani.' }, { status: 500 });
  }
}
