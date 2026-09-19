'use client';

import React, { useEffect, useState } from 'react';
import { useParams } from 'next/navigation';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import WaniKaniSubNav from '@/components/dictionary/WaniKaniSubNav';
import ItemFullPageView from '@/components/dictionary/ItemFullPageView';
import { fetchItemByIdentifier, fetchAdjacentItems } from '@/services/itemsService';
import { supabase } from '@/lib/supabase';
import { Loader2 } from 'lucide-react';

interface PageProps {
  params?: Promise<{ character: string }>;
}

export default function VocabularyDetailPage({ params }: PageProps) {
  const routeParams = useParams<{ character: string }>();
  const [characterParam, setCharacterParam] = useState<string>(routeParams?.character || '');
  const [item, setItem] = useState<any | null>(null);
  const [prevItem, setPrevItem] = useState<any | null>(null);
  const [nextItem, setNextItem] = useState<any | null>(null);
  const [userProgress, setUserProgress] = useState<any | null>(null);
  const [loading, setLoading] = useState<boolean>(true);

  // Unwrap params if passed as a promise (Next.js 15/16 App Router standard)
  useEffect(() => {
    if (params) {
      params.then((res) => {
        if (res?.character) {
          setCharacterParam(res.character);
        }
      });
    } else if (routeParams?.character) {
      setCharacterParam(routeParams.character);
    }
  }, [params, routeParams?.character]);

  useEffect(() => {
    if (!characterParam) return;

    let isMounted = true;
    async function loadItem() {
      try {
        setLoading(true);
        const data = await fetchItemByIdentifier('vocabulary', characterParam);

        if (!isMounted) return;
        setItem(data);

        if (data) {
          // Fetch adjacent items in the same level
          const adj = await fetchAdjacentItems('vocabulary', data.level, data.id);
          if (isMounted) {
            setPrevItem(adj.prev);
            setNextItem(adj.next);
          }

          // Fetch user progress for this item
          const { data: { user } } = await supabase.auth.getUser();
          if (user && isMounted) {
            const { data: prog } = await supabase
              .from('user_progress')
              .select('srs_stage, unlocked_at, next_review')
              .eq('user_id', user.id)
              .eq('item_id', data.id)
              .maybeSingle();

            if (isMounted && prog) {
              setUserProgress(prog);
            }
          }
        }
      } catch (err) {
        console.error('Error loading vocabulary detail page:', err);
      } finally {
        if (isMounted) setLoading(false);
      }
    }

    loadItem();
    return () => {
      isMounted = false;
    };
  }, [characterParam]);

  if (loading) {
    return (
      <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100">
        <Navbar />
        <WaniKaniSubNav currentType="vocabulary" />
        <div className="flex-1 flex flex-col items-center justify-center py-24 space-y-4">
          <Loader2 className="w-10 h-10 text-vocab animate-spin" />
          <p className="font-semibold text-xs text-slate-500 dark:text-slate-400">
            Memuat Rincian Kosakata...
          </p>
        </div>
        <Footer />
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-slate-55 text-slate-900 dark:bg-slate-950 dark:text-slate-100 transition-colors duration-300">
      <Navbar />
      <WaniKaniSubNav currentType="vocabulary" />
      <main className="flex-1">
        <ItemFullPageView
          item={item}
          prevItem={prevItem}
          nextItem={nextItem}
          userProgress={userProgress}
        />
      </main>
      <Footer />
    </div>
  );
}
