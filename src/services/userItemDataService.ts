import { supabase } from '@/lib/supabase';
import { UserItemData } from '@/lib/types';

/**
 * Service for managing user custom item data:
 * - meaning_synonyms (user custom alternative meanings for review acceptance)
 * - meaning_note (user custom meaning mnemonic/note)
 * - reading_note (user custom reading mnemonic/note)
 */

export async function getCurrentUserId(): Promise<string | null> {
  const { data: { user } } = await supabase.auth.getUser();
  return user?.id || null;
}

export async function getUserItemData(itemId: string): Promise<UserItemData | null> {
  const userId = await getCurrentUserId();
  if (!userId || !itemId) return null;

  const { data, error } = await supabase
    .from('user_item_data')
    .select('*')
    .eq('user_id', userId)
    .eq('item_id', itemId)
    .maybeSingle();

  if (error) {
    console.error('Error fetching user_item_data:', error);
    return null;
  }

  return data as UserItemData | null;
}

export async function getUserItemDataBatch(itemIds: string[]): Promise<Record<string, UserItemData>> {
  const userId = await getCurrentUserId();
  if (!userId || !itemIds || itemIds.length === 0) return {};

  const { data, error } = await supabase
    .from('user_item_data')
    .select('*')
    .eq('user_id', userId)
    .in('item_id', itemIds);

  if (error) {
    console.error('Error fetching user_item_data batch:', error);
    return {};
  }

  const map: Record<string, UserItemData> = {};
  if (data) {
    for (const row of data) {
      map[row.item_id] = row as UserItemData;
    }
  }

  return map;
}

export async function addUserSynonym(itemId: string, synonym: string): Promise<string[]> {
  const userId = await getCurrentUserId();
  if (!userId) throw new Error('Pengguna belum login');

  const cleanSynonym = synonym.trim();
  if (!cleanSynonym) throw new Error('Sinonim tidak boleh kosong');

  // Fetch current data
  const existing = await getUserItemData(itemId);
  const currentSynonyms: string[] = existing?.meaning_synonyms || [];

  // Check duplicate (case-insensitive)
  if (currentSynonyms.some(s => s.toLowerCase() === cleanSynonym.toLowerCase())) {
    return currentSynonyms; // Already exists
  }

  const updatedSynonyms = [...currentSynonyms, cleanSynonym];

  const { error } = await supabase
    .from('user_item_data')
    .upsert({
      user_id: userId,
      item_id: itemId,
      meaning_synonyms: updatedSynonyms,
      updated_at: new Date().toISOString(),
    }, {
      onConflict: 'user_id,item_id',
    });

  if (error) {
    console.error('Error adding user synonym:', error);
    throw error;
  }

  return updatedSynonyms;
}

export async function updateUserSynonym(
  itemId: string,
  oldSynonym: string,
  newSynonym: string
): Promise<string[]> {
  const userId = await getCurrentUserId();
  if (!userId) throw new Error('Pengguna belum login');

  const cleanNew = newSynonym.trim();
  if (!cleanNew) throw new Error('Sinonim baru tidak boleh kosong');

  const existing = await getUserItemData(itemId);
  const currentSynonyms: string[] = existing?.meaning_synonyms || [];

  const updatedSynonyms = currentSynonyms.map(s => 
    s.toLowerCase() === oldSynonym.trim().toLowerCase() ? cleanNew : s
  );

  const { error } = await supabase
    .from('user_item_data')
    .upsert({
      user_id: userId,
      item_id: itemId,
      meaning_synonyms: updatedSynonyms,
      updated_at: new Date().toISOString(),
    }, {
      onConflict: 'user_id,item_id',
    });

  if (error) {
    console.error('Error updating user synonym:', error);
    throw error;
  }

  return updatedSynonyms;
}

export async function removeUserSynonym(itemId: string, synonym: string): Promise<string[]> {
  const userId = await getCurrentUserId();
  if (!userId) throw new Error('Pengguna belum login');

  const existing = await getUserItemData(itemId);
  const currentSynonyms: string[] = existing?.meaning_synonyms || [];

  const updatedSynonyms = currentSynonyms.filter(
    s => s.toLowerCase() !== synonym.trim().toLowerCase()
  );

  const { error } = await supabase
    .from('user_item_data')
    .upsert({
      user_id: userId,
      item_id: itemId,
      meaning_synonyms: updatedSynonyms,
      updated_at: new Date().toISOString(),
    }, {
      onConflict: 'user_id,item_id',
    });

  if (error) {
    console.error('Error removing user synonym:', error);
    throw error;
  }

  return updatedSynonyms;
}

export async function saveUserNote(
  itemId: string,
  type: 'meaning' | 'reading',
  note: string | null
): Promise<string | null> {
  const userId = await getCurrentUserId();
  if (!userId) throw new Error('Pengguna belum login');

  const cleanNote = note && note.trim().length > 0 ? note.trim() : null;
  const column = type === 'meaning' ? 'meaning_note' : 'reading_note';

  const { error } = await supabase
    .from('user_item_data')
    .upsert({
      user_id: userId,
      item_id: itemId,
      [column]: cleanNote,
      updated_at: new Date().toISOString(),
    }, {
      onConflict: 'user_id,item_id',
    });

  if (error) {
    console.error(`Error saving user ${type} note:`, error);
    throw error;
  }

  return cleanNote;
}
