-- =========================================================================
-- KaniGani Database Patch: Admin Level Override with SRS 5 Upgrade & Revert Snapshot
-- =========================================================================

-- 1. Tabel Riwayat Override Level Pengguna untuk Revert Snapshot
CREATE TABLE IF NOT EXISTS public.user_level_override_history (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    admin_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
    previous_level INT,
    new_level INT,
    affected_items_count INT DEFAULT 0,
    snapshot_data JSONB NOT NULL DEFAULT '[]'::jsonb,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    reverted_at TIMESTAMPTZ DEFAULT NULL
);

-- Index pencarian cepat riwayat aktif yang belum di-revert
CREATE INDEX IF NOT EXISTS idx_user_level_override_user_active 
ON public.user_level_override_history(user_id, created_at DESC) 
WHERE reverted_at IS NULL;

-- Enable RLS
ALTER TABLE public.user_level_override_history ENABLE ROW LEVEL SECURITY;

-- Policy agar user terotentikasi (admin) dapat membaca dan menulis riwayat override
DROP POLICY IF EXISTS "Allow authenticated read and insert for override history" ON public.user_level_override_history;
CREATE POLICY "Allow authenticated read and insert for override history"
ON public.user_level_override_history
FOR ALL
TO authenticated
USING (true)
WITH CHECK (true);

-- 2. RPC apply_admin_level_override
CREATE OR REPLACE FUNCTION public.apply_admin_level_override(
    p_user_id UUID,
    p_new_level INT,
    p_admin_id UUID DEFAULT NULL
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_previous_level INT;
    v_snapshot_data JSONB := '[]'::jsonb;
    v_affected_count INT := 0;
    v_history_id UUID := NULL;
BEGIN
    -- Ambil level profil pengguna saat ini
    SELECT level INTO v_previous_level FROM public.profiles WHERE id = p_user_id;

    -- Jika new_level IS NULL (Kembali ke dinamis/otomatis tanpa upgrade)
    IF p_new_level IS NULL THEN
        UPDATE public.profiles
        SET level = NULL
        WHERE id = p_user_id;

        RETURN jsonb_build_object(
            'success', true,
            'message', 'Level dikembalikan ke mode dinamis',
            'previous_level', v_previous_level,
            'new_level', NULL,
            'affected_items_count', 0
        );
    END IF;

    -- Validasi level 1 s/d 60
    IF p_new_level < 1 OR p_new_level > 60 THEN
        RAISE EXCEPTION 'Level tidak valid. Harus antara 1 dan 60.';
    END IF;

    -- Kumpulkan data snapshot dari item-item yang akan berubah
    -- 1) Item level < p_new_level yang belum mencapai Guru (srs_stage < 5 atau belum ada row)
    -- 2) Radikal level = p_new_level yang masih srs_stage = 0 atau belum ada row
    WITH target_lower_items AS (
        SELECT id as item_id, level, type
        FROM public.items
        WHERE level < p_new_level
    ),
    existing_lower_progress AS (
        SELECT 
            ti.item_id,
            ti.level,
            ti.type,
            up.srs_stage,
            up.unlocked_at,
            up.next_review,
            (up.item_id IS NOT NULL) AS existed
        FROM target_lower_items ti
        LEFT JOIN public.user_progress up 
            ON up.item_id = ti.item_id AND up.user_id = p_user_id
        WHERE up.srs_stage IS NULL OR up.srs_stage < 5
    ),
    target_current_radicals AS (
        SELECT 
            i.id as item_id,
            i.level,
            i.type,
            up.srs_stage,
            up.unlocked_at,
            up.next_review,
            (up.item_id IS NOT NULL) AS existed
        FROM public.items i
        LEFT JOIN public.user_progress up
            ON up.item_id = i.id AND up.user_id = p_user_id
        WHERE i.level = p_new_level 
          AND i.type = 'radical'
          AND (up.srs_stage IS NULL OR up.srs_stage = 0)
    ),
    all_to_change AS (
        SELECT * FROM existing_lower_progress
        UNION ALL
        SELECT * FROM target_current_radicals
    )
    SELECT 
        COALESCE(
            jsonb_agg(
                jsonb_build_object(
                    'item_id', item_id,
                    'srs_stage', COALESCE(srs_stage, 0),
                    'unlocked_at', unlocked_at,
                    'next_review', next_review,
                    'existed', existed,
                    'action', CASE WHEN level = p_new_level THEN 'unlocked_radical' ELSE 'upgraded_to_guru' END
                )
            ),
            '[]'::jsonb
        ),
        COUNT(*)::INT
    INTO v_snapshot_data, v_affected_count
    FROM all_to_change;

    -- Catat riwayat snapshot jika ada item yang terdampak atau level berubah
    IF v_affected_count > 0 OR v_previous_level IS DISTINCT FROM p_new_level THEN
        INSERT INTO public.user_level_override_history (
            user_id,
            admin_id,
            previous_level,
            new_level,
            affected_items_count,
            snapshot_data
        ) VALUES (
            p_user_id,
            p_admin_id,
            v_previous_level,
            p_new_level,
            v_affected_count,
            v_snapshot_data
        ) RETURNING id INTO v_history_id;
    END IF;

    -- 1. Upgrade item level < p_new_level menjadi SRS stage 5 (Guru 1) dengan next_review = NOW()
    -- Hanya menyentuh yang srs_stage < 5, mempertahankan yang sudah stage >= 5
    INSERT INTO public.user_progress (user_id, item_id, srs_stage, unlocked_at, next_review)
    SELECT 
        p_user_id,
        i.id,
        5,
        NOW(),
        NOW()
    FROM public.items i
    WHERE i.level < p_new_level
    ON CONFLICT (user_id, item_id) DO UPDATE
    SET 
        srs_stage = 5,
        unlocked_at = COALESCE(public.user_progress.unlocked_at, NOW()),
        next_review = NOW()
    WHERE public.user_progress.srs_stage < 5;

    -- 2. Buka Radikal pada level target (level = p_new_level) untuk lesson (srs_stage = 1, next_review = NULL)
    INSERT INTO public.user_progress (user_id, item_id, srs_stage, unlocked_at, next_review)
    SELECT 
        p_user_id,
        i.id,
        1,
        NOW(),
        NULL
    FROM public.items i
    WHERE i.level = p_new_level AND i.type = 'radical'
    ON CONFLICT (user_id, item_id) DO UPDATE
    SET 
        srs_stage = 1,
        unlocked_at = COALESCE(public.user_progress.unlocked_at, NOW()),
        next_review = NULL
    WHERE public.user_progress.srs_stage = 0;

    -- 3. Update level pada tabel profiles
    UPDATE public.profiles
    SET level = p_new_level
    WHERE id = p_user_id;

    RETURN jsonb_build_object(
        'success', true,
        'history_id', v_history_id,
        'previous_level', v_previous_level,
        'new_level', p_new_level,
        'affected_items_count', v_affected_count
    );
END;
$$;

-- 3. RPC revert_admin_level_override
CREATE OR REPLACE FUNCTION public.revert_admin_level_override(
    p_user_id UUID,
    p_history_id UUID DEFAULT NULL
)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_history RECORD;
    v_restored_count INT := 0;
BEGIN
    -- Cari riwayat snapshot aktif yang belum pernah di-revert
    IF p_history_id IS NOT NULL THEN
        SELECT * INTO v_history
        FROM public.user_level_override_history
        WHERE id = p_history_id AND user_id = p_user_id AND reverted_at IS NULL;
    ELSE
        SELECT * INTO v_history
        FROM public.user_level_override_history
        WHERE user_id = p_user_id AND reverted_at IS NULL
        ORDER BY created_at DESC
        LIMIT 1;
    END IF;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Tidak ditemukan riwayat override aktif untuk pengguna ini.';
    END IF;

    -- Kembalikan status setiap item dari snapshot_data
    WITH snap_items AS (
        SELECT 
            (elem->>'item_id')::UUID AS item_id,
            (elem->>'srs_stage')::INT AS srs_stage,
            CASE 
                WHEN elem->>'unlocked_at' IS NOT NULL THEN (elem->>'unlocked_at')::TIMESTAMPTZ 
                ELSE NULL 
            END AS unlocked_at,
            CASE 
                WHEN elem->>'next_review' IS NOT NULL THEN (elem->>'next_review')::TIMESTAMPTZ 
                ELSE NULL 
            END AS next_review,
            (elem->>'existed')::BOOLEAN AS existed
        FROM jsonb_array_elements(v_history.snapshot_data) AS elem
    )
    UPDATE public.user_progress up
    SET 
        srs_stage = si.srs_stage,
        unlocked_at = si.unlocked_at,
        next_review = si.next_review
    FROM snap_items si
    WHERE up.user_id = p_user_id AND up.item_id = si.item_id;

    GET DIAGNOSTICS v_restored_count = ROW_COUNT;

    -- Kembalikan profiles.level ke level sebelumnya
    UPDATE public.profiles
    SET level = v_history.previous_level
    WHERE id = p_user_id;

    -- Tandai riwayat override sebagai sudah di-revert
    UPDATE public.user_level_override_history
    SET reverted_at = NOW()
    WHERE id = v_history.id;

    RETURN jsonb_build_object(
        'success', true,
        'reverted_history_id', v_history.id,
        'restored_level', v_history.previous_level,
        'restored_items_count', v_history.affected_items_count
    );
END;
$$;
