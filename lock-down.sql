-- Run this ONCE in Supabase > SQL Editor.
-- Removes the old open-to-anyone policies so only signed-in users can read/write.
drop policy "anon read"   on public.meeting_actions;
drop policy "anon insert" on public.meeting_actions;
drop policy "anon update" on public.meeting_actions;
drop policy "anon delete" on public.meeting_actions;
drop policy "anon read"   on public.salespeople;
drop policy "anon insert" on public.salespeople;
drop policy "anon delete" on public.salespeople;
