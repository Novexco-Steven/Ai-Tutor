# ⚡ Fastest Setup Method (2 Minutes)

## Step 1: Open SQL Editor

Click this link:
👉 https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new

## Step 2: Copy the Schema

In this project, open: `supabase/schema.sql`

Press `Cmd+A` (or `Ctrl+A`) to select all, then `Cmd+C` to copy.

## Step 3: Paste and Run

In the Supabase SQL Editor:
1. Paste the schema (`Cmd+V`)
2. Click the "Run" button (or press `Cmd+Enter`)
3. Wait 5-10 seconds for "Success"

## Step 4: Verify

Run this command:

```bash
npm run db:check
```

You should see all tables marked with ✅

## Step 5: Start the App

```bash
npm run dev
```

Visit: http://localhost:3000

---

## 🎉 That's It!

The onboarding will load:
- 35+ interests from your database
- 4 subjects (Math, Science, Reading, History)
- AI-powered diagnostic quiz

**Total time: 2 minutes**
