'use client';

import { useState, useEffect } from 'react';
import { supabase } from '@/lib/supabase';
import { Item, SimilarKanji } from '@/lib/types';
import ItemEditorModal, { ItemInput } from '@/components/admin/ItemEditorModal';

interface QuickItemEditorModalProps {
  isOpen: boolean;
  setIsOpen: (open: boolean) => void;
  item: Item | null;
  onItemUpdated: (updatedItem: Item) => void;
}

export default function QuickItemEditorModal({
  isOpen,
  setIsOpen,
  item,
  onItemUpdated,
}: QuickItemEditorModalProps) {
  const [formLoading, setFormLoading] = useState(false);

  const initialFormState: ItemInput = {
    type: 'radical',
    character: '',
    slug: '',
    level: 1,
    lesson_position: 0,
    meaning_mnemonic: '',
    reading_mnemonic: '',
    description: '',
    meanings: [{ meaning: '', primary_meaning: true, accepted_answer: true }],
    readings: [],
    context_sentences: [],
    prerequisites: [],
    found_in_kanjis: [],
    similar_kanjis: [],
  };

  const [formItem, setFormItem] = useState<ItemInput>(initialFormState);

  useEffect(() => {
    if (!isOpen || !item) return;

    let isMounted = true;

    async function fetchFullItemDetails() {
      try {
        setFormLoading(true);

        const [meaningsRes, readingsRes, sentencesRes, prereqsRes, similarRes] = await Promise.all([
          supabase.from('item_meanings').select('*').eq('item_id', item!.id),
          supabase.from('item_readings').select('*').eq('item_id', item!.id),
          supabase.from('item_context_sentences').select('*').eq('item_id', item!.id),
          supabase.from('item_prerequisites').select('*').eq('item_id', item!.id),
          item!.type === 'kanji'
            ? supabase.from('item_similar_kanji').select('similar_item_id').eq('item_id', item!.id)
            : Promise.resolve({ data: [] }),
        ]);

        let foundInKanjis: string[] = [];
        if (item!.type === 'radical') {
          const { data: depData } = await supabase
            .from('item_prerequisites')
            .select('item_id')
            .eq('requires_item_id', item!.id);
          if (depData) {
            foundInKanjis = depData.map((d: any) => d.item_id);
          }
        }

        if (!isMounted) return;

        const similarIds = (similarRes.data || []).map((s: any) => s.similar_item_id);

        setFormItem({
          id: item!.id,
          type: item!.type,
          character: item!.character,
          slug: item!.slug || '',
          level: item!.level || 1,
          lesson_position: item!.lesson_position || 0,
          meaning_mnemonic: item!.meaning_mnemonic || '',
          reading_mnemonic: item!.reading_mnemonic || '',
          description: item!.description || '',
          meanings: (meaningsRes.data && meaningsRes.data.length > 0)
            ? meaningsRes.data.map((m: any) => ({
                id: m.id,
                meaning: m.meaning,
                primary_meaning: m.primary_meaning,
                accepted_answer: m.accepted_answer,
              }))
            : [{ meaning: item!.primary_meaning || item!.slug || '', primary_meaning: true, accepted_answer: true }],
          readings: (readingsRes.data && readingsRes.data.length > 0)
            ? readingsRes.data.map((r: any) => ({
                id: r.id,
                reading: r.reading,
                reading_type: r.reading_type,
                primary_reading: r.primary_reading,
                accepted_answer: r.accepted_answer,
              }))
            : [],
          context_sentences: (sentencesRes.data && sentencesRes.data.length > 0)
            ? sentencesRes.data.map((s: any) => ({
                id: s.id,
                japanese: s.japanese,
                indonesian: s.indonesian,
              }))
            : [],
          prerequisites: (prereqsRes.data && prereqsRes.data.length > 0)
            ? prereqsRes.data.map((p: any) => p.requires_item_id)
            : [],
          found_in_kanjis: foundInKanjis,
          similar_kanjis: similarIds,
        });
      } catch (err) {
        console.error('Error fetching full item details for edit:', err);
      } finally {
        if (isMounted) setFormLoading(false);
      }
    }

    fetchFullItemDetails();

    return () => {
      isMounted = false;
    };
  }, [isOpen, item]);

  const handleSaveItem = async () => {
    if (!formItem.character.trim()) {
      alert('Karakter tidak boleh kosong!');
      return;
    }
    if (!formItem.slug.trim()) {
      alert('Nama Slug/Arti Utama tidak boleh kosong!');
      return;
    }

    const filledMeanings = formItem.meanings.filter((m) => m.meaning.trim() !== '');
    if (filledMeanings.length === 0) {
      alert('Harus mengisi minimal satu arti!');
      return;
    }
    const hasPrimaryMeaning = filledMeanings.some((m) => m.primary_meaning);
    if (!hasPrimaryMeaning) {
      alert('Harus menetapkan satu arti sebagai arti utama (Primary Meaning)!');
      return;
    }

    if (formItem.type !== 'radical') {
      const filledReadings = formItem.readings.filter((r) => r.reading.trim() !== '');
      if (filledReadings.length === 0) {
        alert('Kanji atau Kosakata harus memiliki minimal satu cara baca!');
        return;
      }
      const hasPrimaryReading = filledReadings.some((r) => r.primary_reading);
      if (!hasPrimaryReading) {
        alert('Harus menetapkan satu cara baca sebagai utama (Primary Reading)!');
        return;
      }
    }

    setFormLoading(true);
    try {
      const itemId = formItem.id || item?.id;
      if (!itemId) throw new Error('Item ID missing');

      const itemData = {
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || null,
        reading_mnemonic: formItem.type !== 'radical' ? formItem.reading_mnemonic.trim() || null : null,
        description: formItem.description.trim() || null,
      };

      // 1. Update items table
      const { error: itemErr } = await supabase
        .from('items')
        .update(itemData)
        .eq('id', itemId);

      if (itemErr) throw itemErr;

      // 2. Clear existing child relations
      const delPromises = [
        supabase.from('item_meanings').delete().eq('item_id', itemId),
        supabase.from('item_readings').delete().eq('item_id', itemId),
        supabase.from('item_context_sentences').delete().eq('item_id', itemId),
        supabase.from('item_prerequisites').delete().eq('item_id', itemId),
      ];

      if (formItem.type === 'radical') {
        delPromises.push(supabase.from('item_prerequisites').delete().eq('requires_item_id', itemId));
      }

      const delResults = await Promise.all(delPromises);
      for (const res of delResults) {
        if (res.error) throw res.error;
      }

      // 3. Insert Meanings
      const meaningsToInsert = filledMeanings.map((m) => ({
        item_id: itemId,
        meaning: m.meaning.trim(),
        primary_meaning: m.primary_meaning,
        accepted_answer: m.accepted_answer,
      }));
      const { error: mErr } = await supabase.from('item_meanings').insert(meaningsToInsert);
      if (mErr) throw mErr;

      // 4. Insert Readings
      if (formItem.type !== 'radical') {
        const readingsToInsert = formItem.readings
          .filter((r) => r.reading.trim() !== '')
          .map((r) => ({
            item_id: itemId,
            reading: r.reading.trim(),
            reading_type: formItem.type === 'kanji' ? r.reading_type : null,
            primary_reading: r.primary_reading,
            accepted_answer: r.accepted_answer,
          }));

        if (readingsToInsert.length > 0) {
          const { error: rErr } = await supabase.from('item_readings').insert(readingsToInsert);
          if (rErr) throw rErr;
        }
      }

      // 5. Insert Sentences
      if (formItem.type === 'vocabulary') {
        const sentencesToInsert = formItem.context_sentences
          .filter((s) => s.japanese.trim() !== '' && s.indonesian.trim() !== '')
          .map((s) => ({
            item_id: itemId,
            japanese: s.japanese.trim(),
            indonesian: s.indonesian.trim(),
          }));

        if (sentencesToInsert.length > 0) {
          const { error: sErr } = await supabase.from('item_context_sentences').insert(sentencesToInsert);
          if (sErr) throw sErr;
        }
      }

      // 6. Insert Prerequisites
      if (formItem.type !== 'radical' && formItem.prerequisites.length > 0) {
        const prereqsToInsert = formItem.prerequisites.map((reqId) => ({
          item_id: itemId,
          requires_item_id: reqId,
        }));
        const { error: pErr } = await supabase.from('item_prerequisites').insert(prereqsToInsert);
        if (pErr) throw pErr;
      }

      if (formItem.type === 'radical' && formItem.found_in_kanjis && formItem.found_in_kanjis.length > 0) {
        const prereqsToInsert = formItem.found_in_kanjis.map((kanjiId) => ({
          item_id: kanjiId,
          requires_item_id: itemId,
        }));
        const { error: pErr } = await supabase.from('item_prerequisites').insert(prereqsToInsert);
        if (pErr) throw pErr;
      }

      // 7. Insert Bidirectional Similar Kanji
      let updatedSimilarKanjis: SimilarKanji[] = [];
      if (formItem.type === 'kanji') {
        // Delete existing bidirectional pairs
        await supabase
          .from('item_similar_kanji')
          .delete()
          .or(`item_id.eq.${itemId},similar_item_id.eq.${itemId}`);

        const selectedSimilarIds = formItem.similar_kanjis || [];
        const pairsToInsert: { item_id: string; similar_item_id: string }[] = [];
        const pairSet = new Set<string>();

        for (const simId of selectedSimilarIds) {
          if (simId === itemId) continue;
          const p1 = `${itemId}:${simId}`;
          const p2 = `${simId}:${itemId}`;
          if (!pairSet.has(p1)) {
            pairSet.add(p1);
            pairsToInsert.push({ item_id: itemId, similar_item_id: simId });
          }
          if (!pairSet.has(p2)) {
            pairSet.add(p2);
            pairsToInsert.push({ item_id: simId, similar_item_id: itemId });
          }
        }

        if (pairsToInsert.length > 0) {
          const { error: simErr } = await supabase.from('item_similar_kanji').insert(pairsToInsert);
          if (simErr) throw simErr;

          // Fetch updated similar kanji for local state
          const { data: simItems } = await supabase
            .from('items')
            .select(`
              id, character, slug, level, type,
              item_meanings (meaning, primary_meaning),
              item_readings (reading, primary_reading)
            `)
            .in('id', selectedSimilarIds);

          if (simItems) {
            updatedSimilarKanjis = simItems.map((it: any) => ({
              id: it.id,
              character: it.character,
              slug: it.slug,
              level: it.level,
              type: it.type,
              primary_meaning: it.item_meanings?.find((m: any) => m.primary_meaning)?.meaning || it.slug,
              primary_reading: it.item_readings?.find((r: any) => r.primary_reading)?.reading || null,
            }));
          }
        }
      }

      // 8. Construct complete updated Item object
      const primaryMeaning = filledMeanings.find((m) => m.primary_meaning)?.meaning || filledMeanings[0]?.meaning || formItem.slug;
      const acceptedMeanings = filledMeanings
        .filter((m) => m.accepted_answer)
        .map((m) => m.meaning.toLowerCase().trim());

      const filledReadings = formItem.readings.filter((r) => r.reading.trim() !== '');
      const primaryReading = filledReadings.find((r) => r.primary_reading)?.reading || filledReadings[0]?.reading || null;
      const acceptedReadings = filledReadings
        .filter((r) => r.accepted_answer)
        .map((r) => r.reading.toLowerCase().trim());

      const updatedItem: Item = {
        ...(item || {}),
        id: itemId,
        type: formItem.type,
        character: formItem.character.trim(),
        slug: formItem.slug.trim().toLowerCase(),
        level: Number(formItem.level),
        lesson_position: Number(formItem.lesson_position),
        meaning_mnemonic: formItem.meaning_mnemonic.trim() || undefined,
        reading_mnemonic: formItem.reading_mnemonic.trim() || undefined,
        description: formItem.description.trim() || undefined,
        primary_meaning: primaryMeaning,
        accepted_meanings: acceptedMeanings,
        primary_reading: primaryReading || undefined,
        accepted_readings: acceptedReadings,
        meanings: filledMeanings.map((m) => ({
          id: m.id || '',
          item_id: itemId,
          meaning: m.meaning,
          primary_meaning: m.primary_meaning,
          accepted_answer: m.accepted_answer,
        })),
        readings: filledReadings.map((r) => ({
          id: r.id || '',
          item_id: itemId,
          reading: r.reading,
          reading_type: r.reading_type || null,
          primary_reading: r.primary_reading,
          accepted_answer: r.accepted_answer,
        })),
        context_sentences: formItem.context_sentences
          .filter((s) => s.japanese.trim() !== '' && s.indonesian.trim() !== '')
          .map((s) => ({
            id: s.id || '',
            item_id: itemId,
            japanese: s.japanese,
            indonesian: s.indonesian,
          })),
        similar_kanjis: updatedSimilarKanjis,
      };

      onItemUpdated(updatedItem);
      setIsOpen(false);
    } catch (err: any) {
      console.error('Error saving item via QuickItemEditor:', err);
      alert('Terjadi kesalahan saat menyimpan: ' + (err?.message || String(err)));
    } finally {
      setFormLoading(false);
    }
  };

  return (
    <ItemEditorModal
      isOpen={isOpen}
      setIsOpen={setIsOpen}
      formItem={formItem}
      setFormItem={setFormItem}
      handleSaveItem={handleSaveItem}
      formLoading={formLoading}
      items={[]}
    />
  );
}
