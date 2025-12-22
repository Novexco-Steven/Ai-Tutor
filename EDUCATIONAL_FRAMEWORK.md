# 🎓 Tulomi Educational Framework

## Overview

A comprehensive, research-based educational system for K-12 personalized learning with AI.

---

## 🎯 Core Components

### 1. Grade-Level System (K-12)

**13 grade levels** from Kindergarten through 12th grade with automatic content adaptation:

- **Language Complexity**: Vocabulary and sentence structure scaled to grade
- **Concept Depth**: From concrete (K-2) to abstract (9-12)
- **Examples**: Age-appropriate scenarios and contexts
- **Reading Level**: Automatic Lexile-equivalent adjustment

**Example:**
- **Grade 2**: "Use very simple words that a young child would know. Keep sentences short (5-8 words)."
- **Grade 12**: "Use academic vocabulary. Complex sentence structures and nuanced concepts."

### 2. Difficulty Scaling (1-10)

**Aligned with Bloom's Taxonomy:**

| Level | Label | Bloom's | Description |
|-------|-------|---------|-------------|
| 1 | Beginner | Remember | Basic intro with heavy scaffolding |
| 2-3 | Early Learner | Understand | Simple concepts with guidance |
| 4-5 | Grade Level | Apply | Meeting grade expectations |
| 6-7 | Advanced | Analyze | Critical thinking |
| 8-9 | Expert | Evaluate | Synthesis and evaluation |
| 10 | Mastery | Create | Creative application |

**Dynamic Adjustments:**
- Question complexity
- Scaffolding level
- Practice type (guided vs. independent)

### 3. Subject Outlines

**4 Core Subjects** with 150+ topics:

#### Mathematics
- Number Sense & Operations (K-5)
- Algebra (3-12)
- Geometry (K-12)
- Data & Statistics (2-12)
- Calculus (11-12)

#### Science
- Life Science & Biology (K-12)
- Earth & Space Science (K-12)
- Physical Science (3-12)
- Chemistry (9-12)
- Physics (9-12)

#### English Language Arts
- Phonics & Early Reading (K-3)
- Reading Comprehension (1-12)
- Writing (1-12)
- Grammar & Mechanics (2-12)
- Literature & Analysis (4-12)

#### Social Studies & History
- Community & Geography (K-5)
- American History (3-12)
- World History (6-12)
- Civics & Government (3-12)
- Economics (6-12)

**Course Modes:**
- **Complete Course**: Comprehensive, sequential curriculum
- **Focused Materials**: Target specific skills/topics

---

## 👨‍🏫 Teacher Personas (9 Teachers)

Students can choose their preferred teaching style:

| Teacher | Gender | Personality | Style |
|---------|--------|-------------|-------|
| Coach Mike | Male | Tough | High expectations, sports analogies |
| Professor Martinez | Male | Straightforward | Logical, systematic |
| Dr. Kim | Female | Precise | Detail-oriented, meticulous |
| Mr. Jackson | Male | Encouraging | Positive, growth mindset |
| Ms. Thompson | Female | Gentle | Warm, nurturing, patient |
| Mx. Rivera | Neutral | Playful | Fun, energetic, games |
| Professor Chen | Female | Formal | Scholarly, rigorous |
| Coach Sarah | Female | Tough | Tough love, resilient |
| Mr. Patel | Male | Precise | Engineering-minded, analytical |

**Each persona includes:**
- Unique teaching style
- Distinct feedback approach
- Specific motivational strategies

---

## 🎯 Teaching Methods (10 Approaches)

Research-based pedagogical strategies:

### 1. **Play-Based Learning** (K-3)
Frame lessons as games and explorations. Natural skill development.

### 2. **Montessori Method** (K-8)
Self-directed, hands-on learning. Student choice within structure.

### 3. **Direct Instruction** (K-12)
Explicit step-by-step teaching. Highly effective for foundational skills.

### 4. **Inquiry-Based Learning** (2-12)
Student-led investigation. Develops critical thinking.

### 5. **Scaffolding** (K-12)
Temporary support gradually removed. Zone of Proximal Development.

### 6. **Positive Reinforcement** (K-12)
Praise and encouragement. Builds intrinsic motivation.

### 7. **Multi-Sensory Teaching** (K-12)
Visual + Auditory + Kinesthetic. Accommodates all learning styles.

### 8. **Cooperative Learning** (1-12)
Peer collaboration. Social skills and deeper understanding.

### 9. **Modeling** (K-12)
Think-alouds and demonstrations. Makes thinking visible.

### 10. **Repetition & Routine** (K-12)
Consistent practice. Builds automaticity and confidence.

---

## 💬 Feedback Methods (12 Types)

### Verbal Feedback
- **Immediate**: In-the-moment corrections
- **Delayed**: Reflective discussions after tasks

### Written Feedback
- **Marginal Comments**: Specific annotations on work
- **Global Summary**: Holistic overview
- **Rubric-Based**: Transparent criteria-aligned assessment

### Intent-Based Feedback
- **Formative**: Progress-focused, growth-oriented
- **Summative**: Final evaluation of mastery
- **Descriptive**: Objective observations without judgment
- **Prescriptive**: Specific next steps

### Structured Approaches
- **Feedback Sandwich**: Positive → Growth → Encouragement
- **Two Stars & Wish**: 2 strengths + 1 improvement area
- **GROW Model**: Goal → Reality → Options → Way Forward

**Key Principles Applied:**
- ✅ Timely
- ✅ Specific
- ✅ Actionable
- ✅ Balanced
- ✅ Growth-oriented

---

## 🔧 Technical Implementation

### Master Prompt System

All AI content generation uses context-aware prompts:

```typescript
interface PromptContext {
  grade: GradeLevel;           // K-12
  subject: string;             // Math, Science, etc.
  subSubject?: string;         // Algebra, Biology, etc.
  difficulty: DifficultyLevel; // 1-10
  interestTheme: string;       // Student's interests
  learningMode: 'complete-course' | 'focused-material';
  teacher?: TeacherPersona;    // Optional teacher selection
  teachingMethod?: TeachingMethod; // Optional pedagogy
  feedbackMethod?: FeedbackMethod; // Optional feedback style
}
```

### Prompt Functions

- `buildMasterLessonPrompt()` - Generates lessons
- `buildMasterQuestionPrompt()` - Creates practice questions
- `buildFeedbackAssessmentPrompt()` - Evaluates answers
- `getGradePromptModifiers()` - Age-appropriate language
- `getDifficultyPromptModifiers()` - Challenge calibration

### UI Components

1. **TeacherSelection**
   - Filter by gender and personality
   - Visual teacher cards
   - Teaching style descriptions

2. **TeachingMethodSelection**
   - Grade-appropriate method filtering
   - Implementation details
   - Best-use cases

3. **SubjectOutline**
   - Complete subject navigation
   - Course vs. Focused selection
   - Sub-subject topic picker

---

## 📈 How It Works

### Student Onboarding Flow

1. **Profile Setup**
   - Name, age → determines grade level (K-12)

2. **Interest Selection**
   - Choose interests (sports, art, gaming, etc.)
   - AI themes all content around interests

3. **Teacher Selection** *(NEW)*
   - Browse 9 teacher personas
   - Filter by gender/personality
   - Select preferred teaching style

4. **Learning Style** *(NEW)*
   - Choose teaching method
   - Grade-filtered options

5. **Subject & Topics**
   - Browse subject outlines
   - Choose complete course OR focused topics
   - Select sub-subjects and specific topics

6. **Start Learning**
   - AI generates personalized content
   - Uses grade, difficulty, teacher, method, interests
   - Adapts in real-time

### Content Generation Example

**Student Profile:**
- Grade: 5
- Difficulty: 6 (Proficient)
- Interest: Soccer
- Teacher: Coach Mike (Tough, motivational)
- Method: Direct Instruction
- Subject: Math - Fractions

**AI Generates:**
```
Coach Mike here! Today we're tackling fractions - and I know you can master this!

Think about a soccer game. Your team plays for 90 minutes total.
If you played for 45 minutes, you played 45/90 of the game.

Let's break this down step-by-step...
```

The AI automatically:
- Uses 5th grade vocabulary
- Applies Direct Instruction method
- Embodies Coach Mike's tough-but-supportive tone
- Themes everything around soccer
- Calibrates to Proficient (Level 6) difficulty

---

## 🎯 Benefits

### For Students
- **Personalized**: Matches their grade, interests, and learning style
- **Engaging**: Content themed around what they love
- **Adaptive**: Difficulty adjusts to their performance
- **Empowering**: Choose their own teacher and learning approach

### For Educators/Parents
- **Research-Based**: Built on proven pedagogical methods
- **Comprehensive**: K-12 coverage across all subjects
- **Flexible**: Complete courses or targeted practice
- **Transparent**: Clear feedback methods and progress tracking

### For the Platform
- **Scalable**: One system serves all K-12 grades
- **Consistent**: Same high-quality approach across all content
- **Maintainable**: Centralized prompt system
- **Extensible**: Easy to add more teachers, methods, subjects

---

## 🚀 Next Steps

### Integration Tasks

1. **Add to Onboarding**
   - Insert TeacherSelection after InterestPicker
   - Add TeachingMethodSelection
   - Use SubjectOutline for subject selection

2. **Update AI Services**
   - Modify `generateLesson()` to use `buildMasterLessonPrompt()`
   - Update `generateQuestions()` to use `buildMasterQuestionPrompt()`
   - Enhance `assessAnswer()` to use `buildFeedbackAssessmentPrompt()`

3. **Database Schema**
   - Add `teacher_id` to user_profiles
   - Add `teaching_method` to user_profiles
   - Add `feedback_method` to user_profiles
   - Store course_mode (complete vs. focused)

4. **User Settings**
   - Allow changing teacher/method anytime
   - Save preferences to profile
   - Apply to all future lessons

5. **Analytics**
   - Track which teachers/methods are most popular
   - Measure effectiveness by approach
   - A/B test different combinations

---

## 📊 Stats

- **900+ lines** of educational framework code
- **13 grade levels** (K-12)
- **10 difficulty levels** (1-10)
- **4 subjects** with **25+ sub-subjects**
- **150+ topics** across all subjects
- **9 teacher personas** (diverse genders/styles)
- **10 teaching methods** (research-based)
- **12 feedback approaches** (verbal, written, structured)
- **3 UI components** for selection

---

## 🎓 Educational Philosophy

This system is built on these principles:

1. **Student Agency**: Students choose their learning path
2. **Research-Based**: All methods proven effective
3. **Interest-Driven**: Engagement through personalization
4. **Adaptive**: Meets students where they are
5. **Growth-Oriented**: Emphasizes progress over perfection
6. **Inclusive**: Multiple approaches for diverse learners
7. **Transparent**: Clear goals and feedback

---

**Ready to transform education! 🚀**

See `src/services/prompts.ts` for full implementation.
