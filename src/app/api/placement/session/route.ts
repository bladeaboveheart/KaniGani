import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

const JLPT_ORDER = ['N5', 'N4', 'N3', 'N2', 'N1'];

export async function POST(request: Request) {
  try {
    const authHeader = request.headers.get('Authorization');
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
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
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const { level, answers } = await request.json();
    const activeLevel = level || 'N5';

    // Jika user belum mensubmit jawaban, sajikan soal baru untuk level ini
    if (!answers || Object.keys(answers).length === 0) {
      const { data: questions, error: qErr } = await userClient
        .from('placement_test_bank')
        .select('id, jlpt_level, question, options')
        .eq('jlpt_level', activeLevel);

      if (qErr) {
        return NextResponse.json({ error: 'Gagal mengambil bank soal: ' + qErr.message }, { status: 500 });
      }

      // Acak soal dan ambil maksimal 20 soal
      const shuffled = (questions || []).sort(() => 0.5 - Math.random()).slice(0, 20);

      return NextResponse.json({
        status: 'quiz',
        level: activeLevel,
        questions: shuffled
      });
    }

    // Hitung skor dari jawaban yang dikirim
    const questionIds = Object.keys(answers);
    const { data: correctAnswers, error: ansErr } = await userClient
      .from('placement_test_bank')
      .select('id, correct_answer')
      .in('id', questionIds);

    if (ansErr) {
      return NextResponse.json({ error: 'Gagal mencocokkan kunci jawaban: ' + ansErr.message }, { status: 500 });
    }

    let correctCount = 0;
    const ansMap = new Map((correctAnswers || []).map(a => [a.id, a.correct_answer]));

    questionIds.forEach(qId => {
      const userAnswer = answers[qId];
      const correctAnswer = ansMap.get(qId);
      if (userAnswer === correctAnswer) {
        correctCount++;
      }
    });

    const totalQuestions = questionIds.length;
    const scorePercentage = totalQuestions > 0 ? (correctCount / totalQuestions) * 100 : 0;
    const passed = scorePercentage >= 80;

    // Logika Adaptif:
    const currentIndex = JLPT_ORDER.indexOf(activeLevel);

    if (passed) {
      // Jika lulus N1 (maksimum)
      if (activeLevel === 'N1') {
        const { data: maxRank } = await userClient
          .from('ranks')
          .select('id, name')
          .eq('jlpt_level', 'N1')
          .order('sort_order', { ascending: false })
          .limit(1)
          .maybeSingle();

        return NextResponse.json({
          status: 'completed',
          score: scorePercentage,
          correctCount,
          totalQuestions,
          targetRankId: maxRank?.id,
          targetRankName: maxRank?.name || 'N1 - Pangkat 6'
        });
      }

      // Berikan level berikutnya
      const nextLevel = JLPT_ORDER[currentIndex + 1];
      const { data: nextQuestions, error: nextQErr } = await userClient
        .from('placement_test_bank')
        .select('id, jlpt_level, question, options')
        .eq('jlpt_level', nextLevel);

      if (nextQErr) {
        return NextResponse.json({ error: 'Gagal mengambil soal level berikutnya' }, { status: 500 });
      }

      const shuffledNext = (nextQuestions || []).sort(() => 0.5 - Math.random()).slice(0, 20);

      return NextResponse.json({
        status: 'next_level',
        score: scorePercentage,
        correctCount,
        totalQuestions,
        nextLevel,
        questions: shuffledNext
      });
    } else {
      // Jika tidak lulus pada paket pertama (N5) -> Kunci ke level terendah
      if (activeLevel === 'N5') {
        const { data: minRank } = await userClient
          .from('ranks')
          .select('id, name')
          .eq('jlpt_level', 'N5')
          .order('sort_order', { ascending: true })
          .limit(1)
          .maybeSingle();

        return NextResponse.json({
          status: 'completed',
          score: scorePercentage,
          correctCount,
          totalQuestions,
          targetRankId: minRank?.id,
          targetRankName: minRank?.name || 'N5 - Pangkat 1'
        });
      }

      // Jika tidak lulus pada level yang lebih tinggi, tempatkan di level sebelumnya yang lulus
      // Target pangkat adalah pangkat terendah (sort_order terkecil) dari level yang tidak lulus
      // Contoh: Lulus N5, tapi gagal N4 -> Masuk ke N4 - Pangkat 1
      const failedLevel = activeLevel;
      const { data: targetRank } = await userClient
        .from('ranks')
        .select('id, name')
        .eq('jlpt_level', failedLevel)
        .order('sort_order', { ascending: true })
        .limit(1)
        .maybeSingle();

      return NextResponse.json({
        status: 'completed',
        score: scorePercentage,
        correctCount,
        totalQuestions,
        targetRankId: targetRank?.id,
        targetRankName: targetRank?.name || `${failedLevel} - Pangkat 1`
      });
    }
  } catch (err: any) {
    return NextResponse.json({ error: err.message }, { status: 500 });
  }
}
