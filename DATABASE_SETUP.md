# Database Setup Instructions

## Why Manual Setup is Needed

I can't run the SQL schema automatically because:

1. **Security**: The `anon` (public) key doesn't have permission to create tables
2. **DDL Operations**: Creating tables requires the `service_role` key (which should stay private)
3. **Best Practice**: Schema changes should be reviewed and run manually for safety

## 🚀 Quick Setup (2 Minutes)

### Step 1: Copy the Schema

Open the file: `supabase/schema.sql`

**Important**: Copy **ALL 400+ lines** - from the top to the very bottom!

### Step 2: Run in Supabase Dashboard

1. **Open SQL Editor**:
   https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql/new

2. **Paste** the entire schema

3. **Run** by clicking the "Run" button or pressing `Cmd/Ctrl + Enter`

4. **Wait** for the success message (takes 5-10 seconds)

### Step 3: Verify

Run this command to check if setup was successful:

\`\`\`bash
npm run db:check
\`\`\`

You should see:
```
✅ Interests        - Ready (35+ rows)
✅ Subjects         - Ready (4 rows)
✅ Users            - Ready
✅ Topics           - Ready
... etc
```

## 📊 What Gets Created

The schema creates:

### Tables (9 total)
- `users` - Student profiles
- `interests` - Available interests for personalization
- `user_interests` - Student-selected interests
- `subjects` - Main subjects (Math, Science, Reading, History)
- `topics` - Individual lessons/topics
- `user_progress` - Student progress tracking
- `session_logs` - Learning session records
- `question_responses` - Question answers and performance
- `generated_content` - Cached AI-generated content

### Seed Data
- **35+ Interests** across 6 categories:
  - Animals (Dogs, Cats, Dinosaurs, Ocean Animals, etc.)
  - Entertainment (Video Games, Anime, Movies, Music)
  - Sports (Soccer, Basketball, Swimming, etc.)
  - Science (Space, Robots, Chemistry, Weather)
  - Creative (Art, Cooking, Building, Fashion)
  - Vehicles (Cars, Trucks, Planes, Boats)
  - Fantasy (Superheroes, Magic, Dragons, etc.)

- **4 Subjects**:
  - Math 🔢
  - Science 🔬
  - Reading 📚
  - History 🏛️

### Security (RLS)
- Row Level Security enabled on all user tables
- Users can only access their own data
- Public read access for interests, subjects, topics

### Indexes
- Optimized queries for:
  - User progress lookups
  - Topic browsing
  - Session tracking
  - Question history

## 🔍 Verification Queries

After running the schema, you can verify in Supabase SQL Editor:

\`\`\`sql
-- Check interests count (should be 35+)
SELECT COUNT(*) FROM interests;

-- View all subjects (should be 4)
SELECT * FROM subjects;

-- Check RLS is enabled
SELECT tablename, rowsecurity
FROM pg_tables
WHERE schemaname = 'public'
  AND tablename IN ('users', 'user_interests', 'user_progress');
\`\`\`

Expected results:
- Interests: 35+ rows
- Subjects: 4 rows
- RLS: All tables show `true`

## ❌ Common Issues

### "Permission denied for table"
→ RLS is working correctly! This is expected for unauthenticated requests.

### "Relation already exists"
→ Schema was already run. You're good to go!

### "Syntax error near line X"
→ Make sure you copied the ENTIRE schema file (all 400+ lines)

### Script shows "fetch failed"
→ This is a sandboxed environment issue. Run `npm run db:check` after you deploy.

## 🎯 Next Steps After Setup

Once the schema is applied:

1. **Start the app**: `npm run dev`
2. **Test onboarding**: Go through the full flow
3. **Check interests load**: Should see 35+ options
4. **Try diagnostic quiz**: AI-generated questions
5. **View dashboard**: See subjects and progress

## 🔐 Security Notes

Your credentials are safe:
- ✅ `anon` key is public (safe to commit)
- ✅ Schema is safe to share
- ❌ Never share your `service_role` key
- ❌ Never commit `.env` to git (already in .gitignore)

## 📚 Additional Resources

- **Supabase Docs**: https://supabase.com/docs/guides/database
- **SQL Editor**: https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/sql
- **Table Editor**: https://supabase.com/dashboard/project/yrobckylfnvmkkpbygge/editor

---

**Need help?** Check the Supabase documentation or open an issue in the repo.
