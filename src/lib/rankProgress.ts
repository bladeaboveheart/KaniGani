import { Rank, UserRankState } from './types';

/**
 * Menambahkan EXP ke pengguna jika item yang direview/dipelajari adalah bagian dari pangkat aktif saat ini.
 * Jika pengguna berada di pangkat akhir dari level JLPT, akumulasi EXP akan membuka Ujian Pangkat (exam_unlocked = true) jika mencapai target.
 */
export async function addExp(userClient: any, userId: string, itemId: string, expAmount: number): Promise<{
  expAdded: number;
  newExp: number;
  examUnlocked: boolean;
  activeRank: Rank | null;
}> {
  // 1. Dapatkan rank state aktif pengguna
  const { data: rankState, error: stateErr } = await userClient
    .from('user_rank_state')
    .select('*, ranks(*)')
    .eq('user_id', userId)
    .maybeSingle();

  if (stateErr || !rankState || !rankState.ranks) {
    return { expAdded: 0, newExp: 0, examUnlocked: false, activeRank: null };
  }

  const activeRank = rankState.ranks as Rank;

  // 2. Cek apakah item yang dipelajari/direview cocok dengan rank aktif pengguna
  const { data: item, error: itemErr } = await userClient
    .from('items')
    .select('rank_id')
    .eq('id', itemId)
    .maybeSingle();

  if (itemErr || !item || item.rank_id !== activeRank.id) {
    // EXP hanya didapat dari item pangkat aktif
    return { expAdded: 0, newExp: rankState.current_exp, examUnlocked: rankState.exam_unlocked, activeRank };
  }

  // 3. Tambahkan EXP
  const newExp = rankState.current_exp + expAmount;
  let examUnlocked = rankState.exam_unlocked;

  // Cek apakah pangkat saat ini adalah pangkat akhir dari level JLPT-nya
  const { data: higherRanksInLevel } = await userClient
    .from('ranks')
    .select('id')
    .eq('jlpt_level', activeRank.jlpt_level)
    .gt('sort_order', activeRank.sort_order);

  const isFinalRankInLevel = !higherRanksInLevel || higherRanksInLevel.length === 0;

  if (isFinalRankInLevel && newExp >= activeRank.exp_required) {
    examUnlocked = true;
  }

  // Update user_rank_state
  await userClient
    .from('user_rank_state')
    .update({
      current_exp: newExp,
      exam_unlocked: examUnlocked,
      updated_at: new Date().toISOString()
    })
    .eq('user_id', userId);

  return {
    expAdded: expAmount,
    newExp,
    examUnlocked,
    activeRank
  };
}

/**
 * Menambahkan EXP secara batch ke pengguna untuk item-item yang dipelajari/direview.
 */
export async function addExpBatch(userClient: any, userId: string, itemIds: string[], expPerItem: number): Promise<{
  expAdded: number;
  newExp: number;
  examUnlocked: boolean;
  activeRank: Rank | null;
}> {
  if (itemIds.length === 0) {
    return { expAdded: 0, newExp: 0, examUnlocked: false, activeRank: null };
  }

  // 1. Dapatkan rank state aktif pengguna
  const { data: rankState, error: stateErr } = await userClient
    .from('user_rank_state')
    .select('*, ranks(*)')
    .eq('user_id', userId)
    .maybeSingle();

  if (stateErr || !rankState || !rankState.ranks) {
    return { expAdded: 0, newExp: 0, examUnlocked: false, activeRank: null };
  }

  const activeRank = rankState.ranks as Rank;

  // 2. Cek item mana saja yang cocok dengan rank aktif pengguna
  const { data: items, error: itemsErr } = await userClient
    .from('items')
    .select('id, rank_id')
    .in('id', itemIds);

  if (itemsErr || !items) {
    return { expAdded: 0, newExp: rankState.current_exp, examUnlocked: rankState.exam_unlocked, activeRank };
  }

  const matchingItems = items.filter((item: any) => item.rank_id === activeRank.id);
  if (matchingItems.length === 0) {
    return { expAdded: 0, newExp: rankState.current_exp, examUnlocked: rankState.exam_unlocked, activeRank };
  }

  const expAdded = matchingItems.length * expPerItem;
  const newExp = rankState.current_exp + expAdded;
  let examUnlocked = rankState.exam_unlocked;

  // Cek apakah pangkat saat ini adalah pangkat akhir dari level JLPT-nya
  const { data: higherRanksInLevel } = await userClient
    .from('ranks')
    .select('id')
    .eq('jlpt_level', activeRank.jlpt_level)
    .gt('sort_order', activeRank.sort_order);

  const isFinalRankInLevel = !higherRanksInLevel || higherRanksInLevel.length === 0;

  if (isFinalRankInLevel && newExp >= activeRank.exp_required) {
    examUnlocked = true;
  }

  // Update user_rank_state
  await userClient
    .from('user_rank_state')
    .update({
      current_exp: newExp,
      exam_unlocked: examUnlocked,
      updated_at: new Date().toISOString()
    })
    .eq('user_id', userId);

  return {
    expAdded,
    newExp,
    examUnlocked,
    activeRank
  };
}

/**
 * Mengecek apakah pengguna berhak mendapatkan kenaikan pangkat general (otomatis)
 * karena seluruh kanji di pangkat aktif saat ini telah selesai dipelajari (srs_stage >= 1 dan next_review IS NOT NULL).
 */
export async function checkAndExecuteGeneralLevelUp(userClient: any, userId: string): Promise<{
  levelUpOccurred: boolean;
  oldRank: Rank | null;
  newRank: Rank | null;
}> {
  // 1. Dapatkan rank state aktif pengguna
  const { data: rankState, error: stateErr } = await userClient
    .from('user_rank_state')
    .select('*, ranks(*)')
    .eq('user_id', userId)
    .maybeSingle();

  if (stateErr || !rankState || !rankState.ranks) {
    return { levelUpOccurred: false, oldRank: null, newRank: null };
  }

  const activeRank = rankState.ranks as Rank;

  // Cek apakah pangkat saat ini adalah pangkat akhir dari level JLPT-nya
  // Kenaikan pangkat otomatis hanya berlaku untuk non-pangkat akhir
  const { data: higherRanksInLevel } = await userClient
    .from('ranks')
    .select('id')
    .eq('jlpt_level', activeRank.jlpt_level)
    .gt('sort_order', activeRank.sort_order);

  const isFinalRankInLevel = !higherRanksInLevel || higherRanksInLevel.length === 0;
  if (isFinalRankInLevel) {
    // Pangkat akhir membutuhkan Ujian Pangkat (Milestone Exam)
    return { levelUpOccurred: false, oldRank: activeRank, newRank: null };
  }

  // 2. Ambil seluruh kanji di pangkat aktif
  const { data: rankKanjis, error: kanjiErr } = await userClient
    .from('items')
    .select('id')
    .eq('rank_id', activeRank.id)
    .eq('type', 'kanji');

  if (kanjiErr || !rankKanjis || rankKanjis.length === 0) {
    return { levelUpOccurred: false, oldRank: activeRank, newRank: null };
  }

  const kanjiIds: string[] = rankKanjis.map((k: any) => k.id as string);

  // 3. Ambil progress belajar user untuk kanji-kanji tersebut
  const { data: progresses, error: progErr } = await userClient
    .from('user_progress')
    .select('item_id, srs_stage, next_review')
    .eq('user_id', userId)
    .in('item_id', kanjiIds);

  if (progErr || !progresses) {
    return { levelUpOccurred: false, oldRank: activeRank, newRank: null };
  }

  const progressMap = new Map<string, any>(progresses.map((p: any) => [p.item_id, p]));

  // Syarat: Seluruh kanji harus sudah selesai lesson (srs_stage >= 1 dan next_review tidak null)
  const allKanjisLearned = kanjiIds.every((id: string) => {
    const prog = progressMap.get(id);
    return prog && prog.srs_stage >= 1 && prog.next_review !== null;
  });

  if (!allKanjisLearned) {
    return { levelUpOccurred: false, oldRank: activeRank, newRank: null };
  }

  // 4. Lakukan Kenaikan Pangkat General Otomatis ke pangkat berikutnya
  const { data: nextRank, error: nextRankErr } = await userClient
    .from('ranks')
    .select('*')
    .gt('sort_order', activeRank.sort_order)
    .order('sort_order', { ascending: true })
    .limit(1)
    .maybeSingle();

  if (nextRankErr || !nextRank) {
    return { levelUpOccurred: false, oldRank: activeRank, newRank: null };
  }

  // Aktifkan materi dari pangkat berikutnya
  // Radikal langsung srs_stage = 1, Kanji & Vocab srs_stage = 0
  const { data: nextItems } = await userClient
    .from('items')
    .select('id, type')
    .eq('rank_id', nextRank.id);

  if (nextItems && nextItems.length > 0) {
    const insertRows = nextItems.map((item: any) => {
      const isRadical = item.type === 'radical';
      return {
        user_id: userId,
        item_id: item.id,
        srs_stage: isRadical ? 1 : 0,
        unlocked_at: isRadical ? new Date().toISOString() : null,
        next_review: null
      };
    });

    const { error: upsertError } = await userClient
      .from('user_progress')
      .upsert(insertRows, {
        onConflict: 'user_id,item_id',
        ignoreDuplicates: true
      });

    if (upsertError) {
      console.error('Error unlocking next rank items:', upsertError);
    }
  }

  // Update user_rank_state
  await userClient
    .from('user_rank_state')
    .update({
      current_rank_id: nextRank.id,
      current_exp: 0,
      exam_unlocked: false,
      updated_at: new Date().toISOString()
    })
    .eq('user_id', userId);

  return {
    levelUpOccurred: true,
    oldRank: activeRank,
    newRank: nextRank as Rank
  };
}
