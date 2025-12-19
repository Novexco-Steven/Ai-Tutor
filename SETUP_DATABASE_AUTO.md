# Automatic Database Setup

Since you have the service role key, you can set up the database automatically on your local machine!

## 🎯 Quick Automatic Setup

### Option 1: Using Bash Script (Mac/Linux)

```bash
./setup-database.sh
```

### Option 2: Using Node Script

```bash
SUPABASE_SERVICE_ROLE_KEY="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inlyb2Jja3lsZm52bWtrcGJ5Z2dlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2NjA5MjY5MCwiZXhwIjoyMDgxNjY4NjkwfQ.PUnwkbcJ4onLJAHXuknywg_mtEM8Pri" node scripts/setup-db-local.js
```

### Option 3: Manual (Most Reliable - 2 minutes)

This is still the recommended approach:

1. **Open Supabase SQL Editor**:
   https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new

2. **Copy this file**: `supabase/schema.sql` (all 400+ lines)

3. **Paste and Run** in the SQL Editor

4. **Verify**: Run `npm run db:check`

## ⚠️ Important Security Note

The service role key (`eyJhbGci...`) has **full admin access** to your database.

**DO NOT**:
- ❌ Commit it to git
- ❌ Share it publicly
- ❌ Use it in client-side code
- ❌ Deploy it to frontend

**DO**:
- ✅ Keep it in `.env.local` (already gitignored)
- ✅ Use it only for setup scripts
- ✅ Use the `anon` key for the app

## 🔍 Why Automatic Setup Might Not Work

If the automatic scripts fail, it's because:

1. **Network Issues**: Can't reach Supabase from this environment
2. **API Limitations**: Supabase REST API doesn't support raw DDL execution
3. **Sandbox Restrictions**: Development environment blocks external requests

**Solution**: Use the manual method (Option 3 above) - it's actually faster and more reliable!

## ✅ After Setup

Run this to verify:

```bash
npm run db:check
```

You should see:
```
✅ Interests        - Ready (35+ rows)
✅ Subjects         - Ready (4 rows)
✅ Users            - Ready
... etc
```

Then start the app:

```bash
npm run dev
```

---

**The manual method (copy/paste) works 100% of the time and takes 2 minutes!**
