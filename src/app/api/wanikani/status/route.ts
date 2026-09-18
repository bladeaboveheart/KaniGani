import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

export async function GET(request: Request) {
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

    const { data: integration, error: intError } = await userClient
      .from('user_integrations')
      .select('wanikani_username, wanikani_level, last_synced_at, wanikani_api_key')
      .eq('user_id', user.id)
      .maybeSingle();

    if (intError) {
      return NextResponse.json({ error: intError.message }, { status: 500 });
    }

    if (!integration || !integration.wanikani_api_key) {
      return NextResponse.json({
        connected: false,
      });
    }

    // Return masked key for UI display
    const rawKey = integration.wanikani_api_key;
    const maskedKey = rawKey.length > 8 ? `${rawKey.slice(0, 4)}••••••••${rawKey.slice(-4)}` : '••••••••';

    return NextResponse.json({
      connected: true,
      username: integration.wanikani_username,
      level: integration.wanikani_level,
      lastSyncedAt: integration.last_synced_at,
      maskedApiKey: maskedKey,
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || 'Server error' }, { status: 500 });
  }
}
