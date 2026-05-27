import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';

export async function POST(request: Request) {
  try {
    const { username } = await request.json();
    if (!username || typeof username !== 'string') {
      return NextResponse.json({ error: 'Username wajib diisi' }, { status: 400 });
    }

    // Cari email berdasarkan username di tabel profiles
    const { data, error } = await supabase
      .from('profiles')
      .select('email')
      .eq('username', username.trim())
      .maybeSingle();

    if (error) {
      return NextResponse.json({ error: 'Terjadi kesalahan sistem' }, { status: 500 });
    }

    if (!data) {
      return NextResponse.json({ error: 'Username tidak ditemukan' }, { status: 404 });
    }

    return NextResponse.json({ email: data.email });
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
export async function GET() {
  return NextResponse.json({ error: 'Method not allowed' }, { status: 405 });
}
