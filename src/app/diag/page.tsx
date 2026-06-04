'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';

export default function DiagPage() {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function runDiag() {
      try {
        const { data: { session } } = await supabase.auth.getSession();
        if (!session) {
          setError('User belum login. Silakan login terlebih dahulu di halaman utama.');
          setLoading(false);
          return;
        }

        const res = await fetch('/api/diag', {
          headers: {
            'Authorization': `Bearer ${session.access_token}`
          }
        });
        const json = await res.json();
        setData(json);
      } catch (err: any) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    }
    runDiag();
  }, []);

  if (loading) {
    return <div style={{ padding: 24, fontFamily: 'monospace' }}>Mengeksekusi diagnosa database...</div>;
  }

  if (error) {
    return (
      <div style={{ padding: 24, fontFamily: 'monospace', color: 'red' }}>
        <h3>Error Diagnosa</h3>
        <p>{error}</p>
      </div>
    );
  }

  return (
    <div style={{ padding: 24, fontFamily: 'monospace' }}>
      <h2>Laporan Diagnosa Database KaniGani</h2>
      <pre style={{ background: '#f4f4f4', padding: 16, borderRadius: 8, overflow: 'auto', maxHeight: '80vh' }}>
        {JSON.stringify(data, null, 2)}
      </pre>
    </div>
  );
}
