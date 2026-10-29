# Meeting Tracker

A single-page meeting action tracker. Add actions with an owner and due date, group them by salesperson, tick them off, and see overdue items in red. Data is stored in Supabase and syncs live between everyone who has the page open.

## Files

- `index.html` – the whole app (HTML, CSS and JS; loads `supabase-js` from a CDN)
- `vercel.json` – static-site settings for Vercel (no build step)

## Deploy to Vercel

1. Push this repo to GitHub.
2. In Vercel choose **Add New → Project**, import the repo.
3. Framework Preset: **Other**. Leave Build Command and Output Directory empty.
4. Click **Deploy**.

## Supabase

The app talks to the Supabase project set at the top of the script in `index.html` (`SUPABASE_URL` and `SUPABASE_KEY`). The key is a publishable key, which is designed to be public. Tables used:

- `meeting_actions` (id, text, owner, due, done, created_at)
- `salespeople` (id, name, created_at)

Both tables have Row Level Security enabled with open policies, so anyone with the link can read and edit. To restrict access, add Supabase Auth and tighten the policies.
