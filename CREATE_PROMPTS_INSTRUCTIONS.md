# Grade 6-8 Math Expanded Teaching Prompts Creation

## Status
- **Grade 6**: 36 of 106 topics completed (Ratios and Rates, Percent Applications, Rational Numbers units)
- **Grade 7**: Not started (103 topics needed)
- **Grade 8**: Not started (125 topics needed)

## File Locations
- Grade 6: `supabase/seeds/prompts/topics/math/6_math_expanded_prompts.sql` (IN PROGRESS)
- Grade 7: `supabase/seeds/prompts/topics/math/7_math_expanded_prompts.sql` (TO CREATE)
- Grade 8: `supabase/seeds/prompts/topics/math/8_math_expanded_prompts.sql` (TO CREATE)

## Completed Grade 6 Units (36/106 topics)
1. ✅ Ratios and Rates (12 topics)
2. ✅ Percent Applications (13 topics)
3. ✅ Rational Numbers (12 topics)

## Remaining Grade 6 Units (70 topics)
4. ⏳ Expressions and Equations (16 topics)
5. ⏳ Coordinate Plane (9 topics)
6. ⏳ Area and Surface Area (10 topics)
7. ⏳ Statistics (14 topics)
8. ⏳ Probability (10 topics)
9. ⏳ Fractions expansion (4 topics)
10. ⏳ Geometry expansion (4 topics)

## Format Template
Each topic follows this exact structure (see completed examples):

```sql
-- Topic Name
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Topic Name' AND grade_level_min = X),
  'Topic Name Topic Guide', 'Brief description',
  'TOPIC NAME - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prerequisite 1
- Prerequisite 2
- Prerequisite 3
- Prerequisite 4

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Objective 1
2. Objective 2
3. Objective 3
4. Objective 4

KEY CONCEPTS:
- Key concept 1
- Key concept 2
- Key concept 3
- Key concept 4
- Key concept 5 (optional)

COMMON MISCONCEPTIONS:
- Misconception 1
- Misconception 2
- Misconception 3
- Misconception 4

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engaging question or scenario

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept step-by-step
   Show examples with clear explanations

3. GUIDED PRACTICE (12 minutes):
   Students practice with teacher support
   Collaborative problem-solving

4. INDEPENDENT PRACTICE (10 minutes):
   Students work independently
   Apply concepts to varied problems

DIFFERENTIATION:
For Struggling Learners:
- Scaffold 1
- Scaffold 2
- Scaffold 3
- Scaffold 4

For Advanced Learners:
- Extension 1
- Extension 2
- Extension 3
- Extension 4

ASSESSMENT INDICATORS:
- Indicator 1
- Indicator 2
- Indicator 3
- Indicator 4', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Topic Name' AND grade_level_min = X)
ON CONFLICT DO NOTHING;
```

## Next Steps

### Option 1: Manual Completion (Recommended for Quality)
Continue creating comprehensive prompts following the established pattern in `6_math_expanded_prompts.sql`.
Each topic requires:
- Grade-appropriate prerequisites
- Specific, measurable learning objectives
- Clear mathematical concepts
- Common student misconceptions
- Detailed 4-part teaching sequence with timing
- Differentiation for struggling and advanced learners
- Observable assessment indicators

### Option 2: Template-Based Generation
Create a script to generate prompts using templates, then manually refine for quality and accuracy.

### Option 3: Iterative Approach
Complete one grade at a time:
1. Finish Grade 6 (70 remaining topics)
2. Create Grade 7 (103 topics) using Grade 6 as model
3. Create Grade 8 (125 topics) using established patterns

## Estimated Scope
- **Total Topics**: 334 (106 + 103 + 125)
- **Lines per Topic**: ~75-85
- **Total Lines**: ~25,000-28,000
- **Estimated Time**: 40-60 hours for high-quality manual creation

## Quality Standards
Each prompt must be:
- Mathematically accurate for the grade level
- Pedagogically sound with research-based strategies
- Specific to the topic (not generic)
- Include realistic examples and contexts
- Address known misconceptions from math education research
- Provide practical differentiation strategies
- Include measurable assessment criteria

## References
- Source migration files for topic lists
- Grade 1 expanded prompts (`1_math_expanded_prompts.sql`) for format
- IXL curriculum alignment for topic sequencing
- Common Core State Standards for grade-level appropriateness
