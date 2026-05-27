import { createClient } from "https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2/+esm";

const SUPABASE_URL = "https://stscynyhbalcudgtwkie.supabase.co";
const SUPABASE_ANON_KEY = "sb_publishable_ft4RsPzEdPonRQIsonUYjQ_22dfT0ED";

export const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
