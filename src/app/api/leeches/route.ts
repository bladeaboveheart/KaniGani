import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { processLeechList } from '@/lib/leechLogic';

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
        headers: {
          Authorization: `Bearer ${token}`,
        },
      },
    });

    const { data: { user }, error: userError } = await userClient.auth.getUser();
    if (userError || !user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    // Ambil item progres pengguna yang aktif dan memiliki kesalahan minimal 2 kali
    const { data, error } = await userClient
      .from('user_progress')
      .select(`
        id,
        item_id,
        srs_stage,
        incorrect_count,
        correct_count,
        current_streak,
        max_streak,
        meaning_incorrect,
        reading_incorrect,
        last_reviewed_at,
        items (
          id,
          character,
          type,
          level,
          item_meanings (
            meaning,
            is_primary
          ),
          item_readings (
            reading,
            is_primary
          )
        )
      `)
      .eq('user_id', user.id)
      .gte('srs_stage', 1)
      .lte('srs_stage', 8)
      .gte('incorrect_count', 2);

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    const leeches = processLeechList(data || []);

    return NextResponse.json({
      success: true,
      leeches,
      count: leeches.length,
    });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || 'Internal Server Error' }, { status: 500 });
  }
}
