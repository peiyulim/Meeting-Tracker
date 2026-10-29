# Meeting Tracker

A single-page meeting action tracker. Add actions with an owner and due date, group them by salesperson, tick them off, and see overdue items in red. Data is stored in Supabase and syncs live between everyone who has the page open.

## Files

- `index.html` – the whole app (HTML, CSS and JS; loads `supabase-js` from a CDN)
- `vercel.json` – static-site settings for Vercel (no build step)
- `lock-down.sql` – one-time SQL that removes the old open-access policies

## Deploy to Vercel

1. Push this repo to GitHub.
2. In Vercel choose **Add New → Project**, import the repo.
3. Framework Preset: **Other**. Leave Build Command and Output Directory empty.
4. Click **Deploy**.

## Supabase

The app uses the Supabase project set at the top of the script in `index.html` (`SUPABASE_URL`, `SUPABASE_KEY` – a publishable key, safe to expose).

- **Sign-in:** Supabase Auth (`auth.users`). Usernames map to `<username>@example.com`.
- **Tables:** `meeting_actions`, `salespeople`, `profiles` (linked to `auth.users`, holds display name and role `admin`/`member`).
- **Edge function `manage-users`:** admin-only; creates users with an initial password and resets passwords.
- **Row Level Security:** only signed-in users can read or write. Run `lock-down.sql` once if the old open policies are still present.
- Admins get a **Users** button in the app to add people and reset passwords. Everyone can change their own password with **Password**.
