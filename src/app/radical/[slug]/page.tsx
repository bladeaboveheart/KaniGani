'use client';

import React, { useEffect, useState, use } from 'react';
import { useParams } from 'next/navigation';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import ItemFullPageView from '@/components/dictionary/ItemFullPageView';
import { fetchItemByIdentifier, fetchAdjacentItems } from '@/services/itemsService';
import { supabase } from '@/lib/supabase';
import { Loader2 } from 'lucide-react';

interface PageProps {
  params?: Promise<{ slug: string }>;
}

export default function RadicalDetailPage({ params }: PageProps) {
  const routeParams = useParams<{ slug: string }>();
  const resolvedParams = params ? use(params) : null;
  const slugParam = resolvedParams?.slug || routeParams?.slug || '';

  const [item, setItem] = useState<any | null>(null);
  const [prevItem, setPrevItem] = useState<any | null>(null);
  const [nextItem, setNextItem] = useState<any | null>(null);
  const [userProgress, setUserProgress] = useState<any | null>(null);
  const [loading, setLoading] = useState<boolean>(true);

  useEffect(() => {
    if (!slugParam) return;

    let isMounted = true;
    async function loadItem() {
      try {
        setLoading(true);
        const data = await fetchItemByIdentifier('radical', slugParam);

        if (!isMounted) return;
        setItem(data);

        if (data) {
          // Fetch user and run adjacent items + user progress queries in parallel
          const userPromise = supabase.auth.getUser();
          const adjPromise = fetchAdjacentItems('radical', data.level, data.id);

          const [{ data: { user } }, adj] = await Promise.all([userPromise, adjPromise]);
          if (!isMounted) return;

          setPrevItem(adj.prev);
          setNextItem(adj.next);

          if (user) {
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
        console.error('Error loading radical detail page:', err);
      } finally {
        if (isMounted) setLoading(false);
      }
    }

    loadItem();
    return () => {
      isMounted = false;
    };
  }, [slugParam]);

  if (loading) {
    return (
      <div className="min-h-screen flex flex-col bg-background text-primary">
        <Navbar />
        <div className="flex-1 flex flex-col items-center justify-center py-24 space-y-4">
          <Loader2 className="w-10 h-10 text-radical animate-spin" />
          <p className="font-semibold text-xs text-muted">
            Memuat Rincian Radikal...
          </p>
        </div>
        <Footer />
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-background text-primary transition-colors duration-300">
      <Navbar />
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
