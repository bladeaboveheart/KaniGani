import { supabase } from './supabase.js'

const SRS_INTERVALS = {
  1: 4 * 60,
  2: 8 * 60,
  3: 24 * 60,
  4: 2 * 24 * 60,
  5: 7 * 24 * 60,
  6: 14 * 24 * 60,
  7: 30 * 24 * 60,
  8: 120 * 24 * 60,
}

const SRS_STAGE_NAMES = {
  0: 'Terkunci',
  1: 'Apprentice I',
  2: 'Apprentice II',
  3: 'Apprentice III',
  4: 'Apprentice IV',
  5: 'Guru I',
  6: 'Guru II',
  7: 'Master',
  8: 'Enlightened',
  9: 'Burned',
}

export { SRS_STAGE_NAMES }

export function calculatePenalty(currentStage, wrongCount) {
  if (wrongCount <= 0) return currentStage
  const penaltyFactor = currentStage >= 5 ? 2 : 1
  const penalty = Math.ceil(wrongCount / 2) * penaltyFactor
  return Math.max(1, currentStage - penalty)
}

export function getNextReviewDate(stage) {
  if (stage >= 9) return null
  const intervalMinutes = SRS_INTERVALS[stage]
  if (!intervalMinutes) return null
  const next = new Date()
  next.setMinutes(next.getMinutes() + intervalMinutes)
  return next.toISOString()
}

// Ambil item lengkap beserta meanings, readings, dan context_sentences
async function fetchItemDetails(itemIds) {
  if (!itemIds || itemIds.length === 0) return {}

  const [meaningsRes, readingsRes, sentencesRes] = await Promise.all([
    supabase.from('item_meanings').select('*').in('item_id', itemIds),
    supabase.from('item_readings').select('*').in('item_id', itemIds),
    supabase.from('item_context_sentences').select('*').in('item_id', itemIds),
  ])

  const details = {}
  for (const id of itemIds) {
    details[id] = { meanings: [], readings: [], context_sentences: [] }
  }

  for (const m of meaningsRes.data || []) {
    if (details[m.item_id]) details[m.item_id].meanings.push(m)
  }
  for (const r of readingsRes.data || []) {
    if (details[r.item_id]) details[r.item_id].readings.push(r)
  }
  for (const s of sentencesRes.data || []) {
    if (details[s.item_id]) details[s.item_id].context_sentences.push(s)
  }

  return details
}

// Gabungkan item dengan detail meanings/readings/sentences
function mergeItemDetails(items, details) {
  return items.map((item) => {
    const d = details[item.id] || { meanings: [], readings: [], context_sentences: [] }
    const primaryMeaning = d.meanings.find((m) => m.primary_meaning)
    const primaryReading = d.readings.find((r) => r.primary_reading)
    return {
      ...item,
      meanings: d.meanings,
      readings: d.readings,
      context_sentences: d.context_sentences,
      // shortcut untuk akses cepat di UI
      primary_meaning: primaryMeaning?.meaning || '',
      primary_reading: primaryReading?.reading || null,
      accepted_meanings: d.meanings.filter((m) => m.accepted_answer).map((m) => m.meaning.toLowerCase().trim()),
      accepted_readings: d.readings.filter((r) => r.accepted_answer).map((r) => r.reading.toLowerCase().trim()),
    }
  })
}

export async function getAvailableLessons(userId) {
  const { data, error } = await supabase
    .from('user_progress')
    .select('item_id, srs_stage, unlocked_at, items(*)')
    .eq('user_id', userId)
    .eq('srs_stage', 1)
    .is('next_review', null)

  if (error) throw error
  if (!data || data.length === 0) return []

  const items = data.map((row) => row.items)
  const itemIds = items.map((i) => i.id)
  const details = await fetchItemDetails(itemIds)

  return mergeItemDetails(items, details)
}

export async function getDueReviews(userId) {
  const now = new Date().toISOString()
  const { data, error } = await supabase
    .from('user_progress')
    .select('item_id, srs_stage, next_review, items(*)')
    .eq('user_id', userId)
    .lte('next_review', now)
    .gte('srs_stage', 1)
    .lte('srs_stage', 8)

  if (error) throw error
  if (!data || data.length === 0) return []

  const itemIds = data.map((row) => row.items.id)
  const details = await fetchItemDetails(itemIds)

  return data.map((row) => {
    const merged = mergeItemDetails([row.items], details)[0]
    return { ...row, items: merged }
  })
}

export async function getDashboardStats(userId) {
  const { data, error } = await supabase
    .from('user_progress')
    .select('srs_stage, items(type, level)')
    .eq('user_id', userId)

  if (error) throw error

  const now = new Date().toISOString()
  const { data: reviewData, error: reviewError } = await supabase
    .from('user_progress')
    .select('item_id')
    .eq('user_id', userId)
    .lte('next_review', now)
    .gte('srs_stage', 1)
    .lte('srs_stage', 8)

  if (reviewError) throw reviewError

  const { data: lessonData, error: lessonError } = await supabase
    .from('user_progress')
    .select('item_id')
    .eq('user_id', userId)
    .eq('srs_stage', 1)
    .is('next_review', null)

  if (lessonError) throw lessonError

  const stats = {
    lessonsAvailable: lessonData ? lessonData.length : 0,
    reviewsDue: reviewData ? reviewData.length : 0,
    distribution: { 0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0 },
    byType: {
      radical: { total: 0, guru: 0 },
      kanji: { total: 0, guru: 0 },
      vocabulary: { total: 0, burned: 0 },
    },
  }

  if (data) {
    for (const row of data) {
      const stage = row.srs_stage
      const type = row.items?.type
      stats.distribution[stage] = (stats.distribution[stage] || 0) + 1
      if (type && stats.byType[type]) {
        stats.byType[type].total++
        if (type === 'vocabulary' && stage === 9) stats.byType[type].burned++
        if ((type === 'radical' || type === 'kanji') && stage >= 5) stats.byType[type].guru++
      }
    }
  }

  return stats
}

export async function completeLesson(userId, itemIds) {
  const now = new Date().toISOString()
  const nextReview = getNextReviewDate(1)

  const updates = itemIds.map((itemId) => ({
    user_id: userId,
    item_id: itemId,
    srs_stage: 1,
    unlocked_at: now,
    next_review: nextReview,
  }))

  const { error } = await supabase.from('user_progress').upsert(updates, {
    onConflict: 'user_id,item_id',
  })

  if (error) throw error
}

export async function updateProgress(userId, itemId, newStage) {
  const nextReview = newStage >= 9 ? null : getNextReviewDate(newStage)

  const { error } = await supabase
    .from('user_progress')
    .update({ srs_stage: newStage, next_review: nextReview })
    .eq('user_id', userId)
    .eq('item_id', itemId)

  if (error) throw error

  if (newStage >= 5) {
    await checkAndUnlockItems(userId, itemId)
  }
}

export async function checkAndUnlockItems(userId, updatedItemId) {
  const { data: dependents, error: depError } = await supabase
    .from('item_prerequisites')
    .select('item_id')
    .eq('requires_item_id', updatedItemId)

  if (depError || !dependents || dependents.length === 0) return

  for (const dep of dependents) {
    const { data: prereqs, error: prereqError } = await supabase
      .from('item_prerequisites')
      .select('requires_item_id')
      .eq('item_id', dep.item_id)

    if (prereqError || !prereqs) continue

    const prereqIds = prereqs.map((p) => p.requires_item_id)

    const { data: progresses, error: progError } = await supabase
      .from('user_progress')
      .select('item_id, srs_stage')
      .eq('user_id', userId)
      .in('item_id', prereqIds)

    if (progError || !progresses) continue

    const allGuru =
      progresses.length === prereqIds.length &&
      progresses.every((p) => p.srs_stage >= 5)

    if (allGuru) {
      const { error: unlockError } = await supabase
        .from('user_progress')
        .update({ srs_stage: 1, unlocked_at: new Date().toISOString() })
        .eq('user_id', userId)
        .eq('item_id', dep.item_id)
        .eq('srs_stage', 0)

      if (unlockError) console.error('Gagal unlock item:', dep.item_id, unlockError)
    }
  }
}
