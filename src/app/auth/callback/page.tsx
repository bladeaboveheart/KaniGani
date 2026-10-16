'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { Loader2 } from 'lucide-react';

export default function AuthCallbackPage() {
  const router = useRouter();
  const [errorMsg, setErrorMsg] = useState('');

  useEffect(() => {
    // shortcut: client-side OAuth token exchange via Supabase detectSessionInUrl, upgrade to @supabase/ssr if switching to server cookies
    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if ((event === 'SIGNED_IN' || event === 'INITIAL_SESSION') && session) {
        router.replace('/dashboard');
      }
    });

    supabase.auth.getSession().then(({ data: { session }, error }) => {
      if (error) {
        setErrorMsg(error.message);
        setTimeout(() => router.replace('/?error=' + encodeURIComponent(error.message)), 2500);
        return;
      }
      if (session) {
        router.replace('/dashboard');
      }
    });

    return () => {
      subscription.unsubscribe();
    };
  }, [router]);

  return (
    <div className="min-h-screen flex flex-col items-center justify-center bg-background text-primary px-4">
      {errorMsg ? (
        <div className="text-center space-y-2">
          <p className="text-sm font-semibold text-rose-500">Gagal masuk dengan Google: {errorMsg}</p>
          <p className="text-xs text-muted">Mengarahkan kembali ke halaman utama...</p>
        </div>
      ) : (
        <div className="flex flex-col items-center space-y-3">
          <Loader2 className="w-8 h-8 animate-spin text-rose-500" />
          <p className="text-sm font-medium text-muted">Menyelesaikan autentikasi Google...</p>
        </div>
      )}
    </div>
  );
}
