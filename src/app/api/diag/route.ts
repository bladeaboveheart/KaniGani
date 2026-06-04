import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

export async function GET(request: Request) {
  try {
    const authHeader = request.headers.get('Authorization');
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      return NextResponse.json({ error: 'Unauthorized: missing authorization header' }, { status: 401 });
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
      return NextResponse.json({ error: 'Unauthorized: invalid token', details: userError }, { status: 401 });
    }

    // 1. Get user_rank_state
    const { data: rankState, error: stateErr } = await userClient
      .from('user_rank_state')
      .select('*, ranks(*)')
      .eq('user_id', user.id)
      .maybeSingle();

    // 2. Count user_progress
    const { data: progressList, error: progErr } = await userClient
      .from('user_progress')
      .select('item_id, srs_stage, next_review, items(character, type, rank_id)')
      .eq('user_id', user.id);

    // 3. Count items
    const { data: allItems, error: itemsErr } = await userClient
      .from('items')
      .select('id, type, rank_id');

    // 4. Count ranks
    const { data: allRanks, error: ranksErr } = await userClient
      .from('ranks')
      .select('*');

    const totalProgressCount = progressList ? progressList.length : 0;
    const unlockedLessons = progressList
      ? progressList.filter((p: any) => p.srs_stage === 1 && p.next_review === null)
      : [];

    return NextResponse.json({
      userId: user.id,
      userEmail: user.email,
      rankState,
      stateError: stateErr,
      totalProgressCount,
      progressError: progErr,
      unlockedLessonsCount: unlockedLessons.length,
      unlockedLessonsSample: unlockedLessons.slice(0, 10),
      totalItemsInDb: allItems ? allItems.length : 0,
      itemsSample: allItems ? allItems.slice(0, 5) : [],
      itemsError: itemsErr,
      totalRanksInDb: allRanks ? allRanks.length : 0,
      ranksError: ranksErr
    });

  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
