/**
 * Master Prompt System for K-12 Education
 * Provides grade-specific, subject-tailored, and difficulty-scaled prompts
 */

// ============================================================================
// GRADE LEVEL DEFINITIONS (K-12)
// ============================================================================

export type GradeLevel = 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12;

export const GRADE_LEVELS = {
  0: { name: 'Kindergarten', abbreviation: 'K', ageRange: '5-6' },
  1: { name: 'First Grade', abbreviation: '1st', ageRange: '6-7' },
  2: { name: 'Second Grade', abbreviation: '2nd', ageRange: '7-8' },
  3: { name: 'Third Grade', abbreviation: '3rd', ageRange: '8-9' },
  4: { name: 'Fourth Grade', abbreviation: '4th', ageRange: '9-10' },
  5: { name: 'Fifth Grade', abbreviation: '5th', ageRange: '10-11' },
  6: { name: 'Sixth Grade', abbreviation: '6th', ageRange: '11-12' },
  7: { name: 'Seventh Grade', abbreviation: '7th', ageRange: '12-13' },
  8: { name: 'Eighth Grade', abbreviation: '8th', ageRange: '13-14' },
  9: { name: 'Ninth Grade (Freshman)', abbreviation: '9th', ageRange: '14-15' },
  10: { name: 'Tenth Grade (Sophomore)', abbreviation: '10th', ageRange: '15-16' },
  11: { name: 'Eleventh Grade (Junior)', abbreviation: '11th', ageRange: '16-17' },
  12: { name: 'Twelfth Grade (Senior)', abbreviation: '12th', ageRange: '17-18' }
} as const;

// ============================================================================
// DIFFICULTY LEVEL SCALING (1-10)
// ============================================================================

export type DifficultyLevel = 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10;

export const DIFFICULTY_DESCRIPTORS = {
  1: { label: 'Beginner', description: 'Basic introduction with heavy scaffolding', bloomLevel: 'Remember' },
  2: { label: 'Early Learner', description: 'Simple concepts with guided examples', bloomLevel: 'Remember/Understand' },
  3: { label: 'Developing', description: 'Building foundational understanding', bloomLevel: 'Understand' },
  4: { label: 'Progressing', description: 'Applying basic concepts independently', bloomLevel: 'Understand/Apply' },
  5: { label: 'Grade Level', description: 'Meeting grade-level expectations', bloomLevel: 'Apply' },
  6: { label: 'Proficient', description: 'Solid grasp with some analysis', bloomLevel: 'Apply/Analyze' },
  7: { label: 'Advanced', description: 'Critical thinking and connections', bloomLevel: 'Analyze' },
  8: { label: 'Accelerated', description: 'Complex problem-solving', bloomLevel: 'Analyze/Evaluate' },
  9: { label: 'Expert', description: 'Synthesis and evaluation', bloomLevel: 'Evaluate/Create' },
  10: { label: 'Mastery', description: 'Creative application and innovation', bloomLevel: 'Create' }
} as const;

// ============================================================================
// SUBJECT DEFINITIONS WITH OUTLINES
// ============================================================================

export interface SubSubject {
  id: string;
  name: string;
  description: string;
  gradeRange: [GradeLevel, GradeLevel]; // [min, max]
  topics: string[];
}

export interface SubjectOutline {
  id: string;
  name: string;
  description: string;
  subSubjects: SubSubject[];
  courseStructure: {
    beginner: string[];
    intermediate: string[];
    advanced: string[];
  };
}

export const SUBJECT_OUTLINES: Record<string, SubjectOutline> = {
  math: {
    id: 'math',
    name: 'Mathematics',
    description: 'Build mathematical thinking from counting to calculus',
    subSubjects: [
      {
        id: 'number-sense',
        name: 'Number Sense & Operations',
        description: 'Understanding numbers, counting, addition, subtraction, multiplication, division',
        gradeRange: [0, 5],
        topics: ['Counting', 'Place Value', 'Addition & Subtraction', 'Multiplication & Division', 'Fractions', 'Decimals']
      },
      {
        id: 'algebra',
        name: 'Algebra',
        description: 'Variables, equations, functions, and algebraic thinking',
        gradeRange: [3, 12],
        topics: ['Variables & Expressions', 'Linear Equations', 'Systems of Equations', 'Quadratic Functions', 'Polynomials', 'Exponential Functions']
      },
      {
        id: 'geometry',
        name: 'Geometry',
        description: 'Shapes, spatial reasoning, measurement, and proofs',
        gradeRange: [0, 12],
        topics: ['Shapes & Properties', 'Measurement', 'Angles', 'Pythagorean Theorem', 'Transformations', 'Proofs', 'Trigonometry']
      },
      {
        id: 'data-statistics',
        name: 'Data & Statistics',
        description: 'Data collection, analysis, probability, and interpretation',
        gradeRange: [2, 12],
        topics: ['Graphs & Charts', 'Mean/Median/Mode', 'Probability', 'Statistical Analysis', 'Sampling', 'Inference']
      },
      {
        id: 'calculus',
        name: 'Calculus',
        description: 'Limits, derivatives, integrals, and applications',
        gradeRange: [11, 12],
        topics: ['Limits', 'Derivatives', 'Integration', 'Applications', 'Series']
      }
    ],
    courseStructure: {
      beginner: ['Number Sense', 'Basic Operations', 'Simple Shapes', 'Counting Money'],
      intermediate: ['Fractions & Decimals', 'Pre-Algebra', 'Geometry Basics', 'Data Graphs'],
      advanced: ['Algebra I/II', 'Trigonometry', 'Statistics', 'Calculus']
    }
  },
  science: {
    id: 'science',
    name: 'Science',
    description: 'Explore the natural world through observation and experimentation',
    subSubjects: [
      {
        id: 'life-science',
        name: 'Life Science & Biology',
        description: 'Living organisms, ecosystems, cells, genetics, and evolution',
        gradeRange: [0, 12],
        topics: ['Living vs Non-Living', 'Animal Habitats', 'Plant Life Cycles', 'Human Body', 'Cells', 'Genetics', 'Evolution', 'Ecology']
      },
      {
        id: 'earth-science',
        name: 'Earth & Space Science',
        description: 'Planets, weather, rocks, natural resources, and Earth systems',
        gradeRange: [0, 12],
        topics: ['Weather & Seasons', 'Rocks & Minerals', 'Water Cycle', 'Solar System', 'Climate', 'Plate Tectonics', 'Astronomy']
      },
      {
        id: 'physical-science',
        name: 'Physical Science',
        description: 'Matter, energy, forces, motion, and chemical reactions',
        gradeRange: [3, 12],
        topics: ['States of Matter', 'Forces & Motion', 'Energy', 'Simple Machines', 'Atoms & Molecules', 'Chemical Reactions']
      },
      {
        id: 'chemistry',
        name: 'Chemistry',
        description: 'Atomic structure, chemical bonds, reactions, and stoichiometry',
        gradeRange: [9, 12],
        topics: ['Periodic Table', 'Chemical Bonding', 'Reactions', 'Stoichiometry', 'Acids & Bases', 'Organic Chemistry']
      },
      {
        id: 'physics',
        name: 'Physics',
        description: 'Laws of motion, energy, waves, electricity, and modern physics',
        gradeRange: [9, 12],
        topics: ['Kinematics', 'Dynamics', 'Energy & Work', 'Waves', 'Electricity', 'Magnetism', 'Modern Physics']
      }
    ],
    courseStructure: {
      beginner: ['Animals & Plants', 'Weather', 'Simple Machines', 'Magnets & Electricity Basics'],
      intermediate: ['Life Cycles', 'Earth Systems', 'Matter & Energy', 'Scientific Method'],
      advanced: ['Biology', 'Chemistry', 'Physics', 'Environmental Science']
    }
  },
  reading: {
    id: 'reading',
    name: 'English Language Arts',
    description: 'Reading, writing, grammar, and literary analysis',
    subSubjects: [
      {
        id: 'phonics-reading',
        name: 'Phonics & Early Reading',
        description: 'Letter sounds, decoding, sight words, and reading fluency',
        gradeRange: [0, 3],
        topics: ['Letter Recognition', 'Phonics', 'Sight Words', 'Decoding', 'Reading Fluency']
      },
      {
        id: 'reading-comprehension',
        name: 'Reading Comprehension',
        description: 'Understanding texts, main ideas, inference, and critical reading',
        gradeRange: [1, 12],
        topics: ['Main Idea', 'Supporting Details', 'Inference', 'Context Clues', 'Text Structures', 'Critical Reading']
      },
      {
        id: 'writing',
        name: 'Writing',
        description: 'Composition, narrative, expository, persuasive, and research writing',
        gradeRange: [1, 12],
        topics: ['Sentences & Paragraphs', 'Narrative Writing', 'Expository Writing', 'Persuasive Writing', 'Research Papers', 'Creative Writing']
      },
      {
        id: 'grammar-mechanics',
        name: 'Grammar & Mechanics',
        description: 'Parts of speech, sentence structure, punctuation, and conventions',
        gradeRange: [2, 12],
        topics: ['Parts of Speech', 'Sentence Structure', 'Punctuation', 'Capitalization', 'Usage', 'Style']
      },
      {
        id: 'literature',
        name: 'Literature & Analysis',
        description: 'Literary elements, genres, themes, and textual analysis',
        gradeRange: [4, 12],
        topics: ['Plot & Character', 'Theme', 'Figurative Language', 'Literary Devices', 'Genre Study', 'Critical Analysis']
      }
    ],
    courseStructure: {
      beginner: ['Phonics', 'Simple Stories', 'Sentence Writing', 'Basic Grammar'],
      intermediate: ['Chapter Books', 'Paragraph Writing', 'Grammar Skills', 'Vocabulary'],
      advanced: ['Literary Analysis', 'Essay Writing', 'Research Skills', 'Advanced Grammar']
    }
  },
  history: {
    id: 'history',
    name: 'Social Studies & History',
    description: 'Understanding cultures, events, geography, and civics',
    subSubjects: [
      {
        id: 'community-geography',
        name: 'Community & Geography',
        description: 'Local community, maps, cultures, and basic geography',
        gradeRange: [0, 5],
        topics: ['My Community', 'Maps & Globes', 'Cultures', 'Geography Basics', 'Resources']
      },
      {
        id: 'american-history',
        name: 'American History',
        description: 'U.S. history from colonial times to present',
        gradeRange: [3, 12],
        topics: ['Colonial America', 'Revolution', 'Constitution', 'Civil War', 'Industrialization', 'Modern America']
      },
      {
        id: 'world-history',
        name: 'World History',
        description: 'Ancient civilizations through modern global events',
        gradeRange: [6, 12],
        topics: ['Ancient Civilizations', 'Middle Ages', 'Renaissance', 'World Wars', 'Cold War', 'Modern Era']
      },
      {
        id: 'civics-government',
        name: 'Civics & Government',
        description: 'How government works, citizenship, and civic responsibility',
        gradeRange: [3, 12],
        topics: ['Branches of Government', 'Constitution', 'Rights & Responsibilities', 'Elections', 'Local Government']
      },
      {
        id: 'economics',
        name: 'Economics',
        description: 'Economic systems, trade, money, and personal finance',
        gradeRange: [6, 12],
        topics: ['Supply & Demand', 'Economic Systems', 'Trade', 'Personal Finance', 'Macroeconomics']
      }
    ],
    courseStructure: {
      beginner: ['Community Helpers', 'Simple Maps', 'Holidays & Traditions', 'Rules & Laws'],
      intermediate: ['State History', 'U.S. Geography', 'Early American History', 'Basic Economics'],
      advanced: ['U.S. History', 'World History', 'Government', 'Economics']
    }
  }
};

// ============================================================================
// MASTER PROMPT TEMPLATES
// ============================================================================

// ============================================================================
// TEACHER PERSONAS
// ============================================================================

export type TeacherGender = 'male' | 'female' | 'neutral';
export type TeacherPersonality = 'tough' | 'straightforward' | 'precise' | 'encouraging' | 'gentle' | 'playful' | 'formal';

export interface TeacherPersona {
  id: string;
  name: string;
  gender: TeacherGender;
  personality: TeacherPersonality;
  description: string;
  teachingStyle: string;
  feedbackStyle: string;
  motivationalApproach: string;
}

export const TEACHER_PERSONAS: Record<string, TeacherPersona> = {
  'coach-mike': {
    id: 'coach-mike',
    name: 'Coach Mike',
    gender: 'male',
    personality: 'tough',
    description: 'No-nonsense coach who pushes you to be your best',
    teachingStyle: 'Direct and challenging. Sets high expectations and holds students accountable. Uses sports and competition analogies.',
    feedbackStyle: 'Honest and blunt. Points out mistakes clearly but always believes in your potential. "You can do better than this."',
    motivationalApproach: 'Challenge-based. "I know you can handle this." Celebrates effort and grit over perfection.'
  },
  'prof-martinez': {
    id: 'prof-martinez',
    name: 'Professor Martinez',
    gender: 'male',
    personality: 'straightforward',
    description: 'Clear, logical teacher who breaks down complex topics simply',
    teachingStyle: 'Systematic and organized. Explains concepts step-by-step with logical progression. Uses real-world applications.',
    feedbackStyle: 'Clear and constructive. Identifies exactly what went wrong and why, then shows the correct approach.',
    motivationalApproach: 'Progress-focused. Shows you how far you\'ve come and the clear path forward.'
  },
  'dr-kim': {
    id: 'dr-kim',
    name: 'Dr. Kim',
    gender: 'female',
    personality: 'precise',
    description: 'Detail-oriented professor who values accuracy and thoroughness',
    teachingStyle: 'Meticulous and comprehensive. Covers every detail and nuance. Emphasizes correct terminology and precision.',
    feedbackStyle: 'Detailed analysis of errors. Explains the why behind every mistake and the importance of accuracy.',
    motivationalApproach: 'Mastery-oriented. "Let\'s get this exactly right." Celebrates precision and attention to detail.'
  },
  'mr-jackson': {
    id: 'mr-jackson',
    name: 'Mr. Jackson',
    gender: 'male',
    personality: 'encouraging',
    description: 'Supportive teacher who believes every student can succeed',
    teachingStyle: 'Positive and patient. Builds confidence while teaching. Relates material to students\' interests and strengths.',
    feedbackStyle: 'Sandwich approach: praise, correction, encouragement. "Great effort! Let\'s refine this part. You\'re on the right track!"',
    motivationalApproach: 'Growth mindset focused. Celebrates improvement and effort. Makes learning feel achievable.'
  },
  'ms-thompson': {
    id: 'ms-thompson',
    name: 'Ms. Thompson',
    gender: 'female',
    personality: 'gentle',
    description: 'Warm, nurturing teacher who creates a safe learning environment',
    teachingStyle: 'Patient and supportive. Takes time to ensure understanding. Uses gentle guidance and lots of reassurance.',
    feedbackStyle: 'Kind and understanding. "It\'s okay to make mistakes - that\'s how we learn!" Focuses on what you did right first.',
    motivationalApproach: 'Emotion-aware. Recognizes when students are frustrated and provides emotional support alongside academic help.'
  },
  'mx-rivera': {
    id: 'mx-rivera',
    name: 'Mx. Rivera',
    gender: 'neutral',
    personality: 'playful',
    description: 'Fun, energetic teacher who makes learning an adventure',
    teachingStyle: 'Dynamic and interactive. Uses games, stories, and humor. Makes every lesson an exciting discovery.',
    feedbackStyle: 'Enthusiastic and fun. "Ooh, interesting mistake! Let\'s detective this out!" Turns corrections into learning games.',
    motivationalApproach: 'Joy-based. Learning should be fun! Uses excitement and curiosity to drive engagement.'
  },
  'professor-chen': {
    id: 'professor-chen',
    name: 'Professor Chen',
    gender: 'female',
    personality: 'formal',
    description: 'Traditional, scholarly teacher who values academic excellence',
    teachingStyle: 'Classic lecture style with Socratic questioning. Emphasizes critical thinking and intellectual rigor.',
    feedbackStyle: 'Academic and professional. Provides thorough written-style feedback with citations and deeper context.',
    motivationalApproach: 'Excellence-driven. "Strive for mastery." Appeals to intellectual curiosity and academic achievement.'
  },
  'coach-sarah': {
    id: 'coach-sarah',
    name: 'Coach Sarah',
    gender: 'female',
    personality: 'tough',
    description: 'Determined coach who demands excellence but deeply cares',
    teachingStyle: 'High expectations with unwavering support. "I push you because I believe in you." Direct but caring.',
    feedbackStyle: 'Tough love. Won\'t accept excuses but will work tirelessly to help you succeed. "Let\'s go again, you\'ve got this."',
    motivationalApproach: 'Resilience-building. Teaches that struggle is part of growth. Celebrates perseverance.'
  },
  'mr-patel': {
    id: 'mr-patel',
    name: 'Mr. Patel',
    gender: 'male',
    personality: 'precise',
    description: 'Engineering-minded teacher who loves structure and accuracy',
    teachingStyle: 'Methodical and systematic. Everything builds logically. Uses diagrams, formulas, and structured frameworks.',
    feedbackStyle: 'Analytical. Points to exact line/step where error occurred. Walks through the correct procedure systematically.',
    motivationalApproach: 'Problem-solving focused. Frames challenges as puzzles to solve. Values logical thinking.'
  }
};

// ============================================================================
// TEACHING METHODS / PEDAGOGICAL APPROACHES
// ============================================================================

export type TeachingMethod =
  | 'play-based'
  | 'montessori'
  | 'direct-instruction'
  | 'inquiry-based'
  | 'scaffolding'
  | 'positive-reinforcement'
  | 'multi-sensory'
  | 'cooperative'
  | 'modeling'
  | 'repetition-routine';

export interface TeachingMethodInfo {
  id: TeachingMethod;
  name: string;
  description: string;
  implementation: string;
  bestFor: string;
  gradeRange: [GradeLevel, GradeLevel];
}

export const TEACHING_METHODS: Record<TeachingMethod, TeachingMethodInfo> = {
  'play-based': {
    id: 'play-based',
    name: 'Play-Based Learning',
    description: 'Children learn through structured and unstructured play',
    implementation: 'Frame lessons as games, explorations, and imaginative scenarios. Use playful language and encourage experimentation.',
    bestFor: 'Young children (K-3) learning foundational concepts',
    gradeRange: [0, 3]
  },
  'montessori': {
    id: 'montessori',
    name: 'Montessori Method',
    description: 'Self-directed activity with hands-on learning',
    implementation: 'Present materials then allow student to choose approach. Guide rather than direct. Emphasize independence.',
    bestFor: 'Independent learners who thrive with autonomy',
    gradeRange: [0, 8]
  },
  'direct-instruction': {
    id: 'direct-instruction',
    name: 'Direct Instruction',
    description: 'Teacher explicitly teaches step-by-step',
    implementation: 'Model skills explicitly. Guide practice with feedback. Highly structured and systematic.',
    bestFor: 'Teaching foundational skills and building mastery',
    gradeRange: [0, 12]
  },
  'inquiry-based': {
    id: 'inquiry-based',
    name: 'Inquiry-Based Learning',
    description: 'Children explore through investigation',
    implementation: 'Pose questions. Facilitate student-led investigation. Guide discovery without direct answers.',
    bestFor: 'Developing critical thinking and deeper understanding',
    gradeRange: [2, 12]
  },
  'scaffolding': {
    id: 'scaffolding',
    name: 'Scaffolding',
    description: 'Temporary support gradually removed',
    implementation: 'Provide hints and models matched to needs. Gradually fade support as competence grows.',
    bestFor: 'All learners; particularly effective for new material',
    gradeRange: [0, 12]
  },
  'positive-reinforcement': {
    id: 'positive-reinforcement',
    name: 'Positive Reinforcement',
    description: 'Encouraging through praise and rewards',
    implementation: 'Acknowledge effort and progress with specific praise. Build intrinsic motivation.',
    bestFor: 'Building confidence and motivation',
    gradeRange: [0, 12]
  },
  'multi-sensory': {
    id: 'multi-sensory',
    name: 'Multi-Sensory Teaching',
    description: 'Engaging multiple senses simultaneously',
    implementation: 'Present through visual, verbal, and hands-on activities simultaneously.',
    bestFor: 'Diverse learners and complex concepts',
    gradeRange: [0, 12]
  },
  'cooperative': {
    id: 'cooperative',
    name: 'Cooperative Learning',
    description: 'Children work together in groups',
    implementation: 'Structure collaborative tasks. Encourage peer teaching. Build interdependence.',
    bestFor: 'Social skills and deeper understanding',
    gradeRange: [1, 12]
  },
  'modeling': {
    id: 'modeling',
    name: 'Modeling',
    description: 'Demonstrating skills for imitation',
    implementation: 'Think aloud while solving problems. Demonstrate procedures step-by-step.',
    bestFor: 'Teaching new procedures and strategies',
    gradeRange: [0, 12]
  },
  'repetition-routine': {
    id: 'repetition-routine',
    name: 'Repetition and Routine',
    description: 'Consistent practice and predictable structures',
    implementation: 'Use consistent lesson structures. Provide regular practice with variation.',
    bestFor: 'Skill automaticity and building confidence',
    gradeRange: [0, 12]
  }
};

// ============================================================================
// FEEDBACK METHODS
// ============================================================================

export type FeedbackMethod =
  | 'immediate-verbal'
  | 'delayed-verbal'
  | 'marginal-comments'
  | 'global-summary'
  | 'rubric-based'
  | 'formative'
  | 'summative'
  | 'descriptive'
  | 'prescriptive'
  | 'feedback-sandwich'
  | 'two-stars-wish'
  | 'grow-model';

export interface FeedbackMethodInfo {
  id: FeedbackMethod;
  name: string;
  category: 'verbal' | 'written' | 'structured' | 'intent-based';
  description: string;
  implementation: string;
  bestFor: string;
  principles: string[];
}

export const FEEDBACK_METHODS: Record<FeedbackMethod, FeedbackMethodInfo> = {
  'immediate-verbal': {
    id: 'immediate-verbal',
    name: 'Immediate Verbal Feedback',
    category: 'verbal',
    description: 'Comments given in the moment during an activity',
    implementation: 'Provide quick, in-the-moment corrections and reinforcement. Acknowledge correct responses instantly and gently redirect mistakes as they occur.',
    bestFor: 'Real-time learning, skill practice, live problem-solving',
    principles: ['Timely', 'Specific', 'Encouraging']
  },
  'delayed-verbal': {
    id: 'delayed-verbal',
    name: 'Delayed Verbal Feedback',
    category: 'verbal',
    description: 'Planned discussion after completing a task',
    implementation: 'After the student completes work, provide comprehensive analysis. Allow for deeper reflection on patterns, strategies, and overall performance.',
    bestFor: 'Complex tasks, allowing time for student reflection',
    principles: ['Reflective', 'Comprehensive', 'Thoughtful']
  },
  'marginal-comments': {
    id: 'marginal-comments',
    name: 'Marginal Comments',
    category: 'written',
    description: 'Notes pointing to specific elements in the work',
    implementation: 'Point directly to specific portions of student work. Highlight exact phrases, steps, or solutions that need attention or deserve praise.',
    bestFor: 'Written work, multi-step problems, detailed assignments',
    principles: ['Specific', 'Targeted', 'Clear']
  },
  'global-summary': {
    id: 'global-summary',
    name: 'Global Summary',
    category: 'written',
    description: 'Overview comment at the end summarizing performance',
    implementation: 'Provide a synthesizing comment that addresses overall performance, major strengths, key areas for improvement, and next steps.',
    bestFor: 'Complex projects, essays, comprehensive assessments',
    principles: ['Holistic', 'Balanced', 'Forward-looking']
  },
  'rubric-based': {
    id: 'rubric-based',
    name: 'Rubric-Based Feedback',
    category: 'written',
    description: 'Feedback using predefined criteria and performance levels',
    implementation: 'Use clear criteria with performance levels. Show exactly where the student falls on each dimension. Transparent and objective.',
    bestFor: 'Projects with multiple components, ensuring consistency',
    principles: ['Transparent', 'Objective', 'Comprehensive']
  },
  'formative': {
    id: 'formative',
    name: 'Formative Feedback',
    category: 'intent-based',
    description: 'Feedback during learning to guide improvement',
    implementation: 'Focus on progress, not grades. Identify what is working and what needs adjustment while there is still time to improve. Emphasize growth.',
    bestFor: 'Ongoing practice, skill development, learning process',
    principles: ['Growth-oriented', 'Actionable', 'Encouraging']
  },
  'summative': {
    id: 'summative',
    name: 'Summative Feedback',
    category: 'intent-based',
    description: 'Feedback assessing whether objectives were met',
    implementation: 'Evaluate final performance against learning goals. Indicate level of mastery achieved. Often includes assessment of readiness for next level.',
    bestFor: 'End of unit, final projects, mastery checks',
    principles: ['Evaluative', 'Complete', 'Standards-aligned']
  },
  'descriptive': {
    id: 'descriptive',
    name: 'Descriptive Feedback',
    category: 'intent-based',
    description: 'Precisely describes what was observed without judgment',
    implementation: 'State facts about what you observe. Help students see their work objectively.',
    bestFor: 'Building self-awareness, developing metacognition',
    principles: ['Objective', 'Factual', 'Non-judgmental']
  },
  'prescriptive': {
    id: 'prescriptive',
    name: 'Prescriptive Feedback',
    category: 'intent-based',
    description: 'Indicates exactly what to do to improve',
    implementation: 'Give specific, concrete next steps. Example: "Add a transition sentence between paragraphs 2 and 3" or "Try breaking this problem into two steps."',
    bestFor: 'When students need clear direction, skill-building',
    principles: ['Actionable', 'Specific', 'Clear']
  },
  'feedback-sandwich': {
    id: 'feedback-sandwich',
    name: 'Feedback Sandwich',
    category: 'structured',
    description: 'Positive, improvement area, encouragement',
    implementation: 'Start with genuine praise. Address area for growth in the middle. End with encouragement or confidence-building statement.',
    bestFor: 'Sensitive students, building confidence while addressing errors',
    principles: ['Balanced', 'Encouraging', 'Constructive']
  },
  'two-stars-wish': {
    id: 'two-stars-wish',
    name: 'Two Stars and a Wish',
    category: 'structured',
    description: 'Two strengths (stars) and one growth area (wish)',
    implementation: 'Identify two things done well. Frame the improvement area as a "wish" for next time. Simple structure that maintains positivity.',
    bestFor: 'Younger learners, peer feedback, maintaining motivation',
    principles: ['Positive', 'Simple', 'Balanced']
  },
  'grow-model': {
    id: 'grow-model',
    name: 'GROW Model',
    category: 'structured',
    description: 'Goal, Reality, Options, Way Forward coaching framework',
    implementation: 'Goal - What are you trying to achieve? Reality - Where are you now? Options - What could you do? Way Forward - What will you do?',
    bestFor: 'Developing independence, goal-setting, metacognition',
    principles: ['Student-centered', 'Reflective', 'Empowering']
  }
};

export interface PromptContext {
  grade: GradeLevel;
  subject: string;
  subSubject?: string;
  difficulty: DifficultyLevel;
  interestTheme: string;
  learningMode: 'complete-course' | 'focused-material';
  teacher?: TeacherPersona;
  teachingMethod?: TeachingMethod;
  feedbackMethod?: FeedbackMethod;
}

/**
 * Get grade-appropriate language and complexity
 */
export function getGradePromptModifiers(grade: GradeLevel): {
  vocabulary: string;
  sentenceComplexity: string;
  conceptDepth: string;
  examples: string;
} {
  if (grade <= 2) {
    return {
      vocabulary: 'Use very simple words that a young child would know. Avoid complex terms.',
      sentenceComplexity: 'Keep sentences short (5-8 words). Use simple subject-verb-object structure.',
      conceptDepth: 'Explain only the most basic, concrete aspects. Use lots of repetition.',
      examples: 'Use examples from daily life that young children experience (toys, family, pets, playground).'
    };
  } else if (grade <= 5) {
    return {
      vocabulary: 'Use age-appropriate vocabulary. Define new words in simple terms.',
      sentenceComplexity: 'Use clear, moderately simple sentences. Occasional compound sentences.',
      conceptDepth: 'Introduce foundational concepts with clear explanations and visual descriptions.',
      examples: 'Use relatable examples from school, home, and familiar activities.'
    };
  } else if (grade <= 8) {
    return {
      vocabulary: 'Introduce subject-specific terminology with clear definitions.',
      sentenceComplexity: 'Use varied sentence structures. Can include some complex sentences.',
      conceptDepth: 'Develop deeper understanding with connections between ideas.',
      examples: 'Use examples that bridge personal experience with academic concepts.'
    };
  } else {
    return {
      vocabulary: 'Use academic and technical vocabulary appropriate to the subject.',
      sentenceComplexity: 'Use sophisticated sentence structures as appropriate for clarity.',
      conceptDepth: 'Explore nuanced, abstract concepts with critical analysis.',
      examples: 'Use complex, real-world applications and theoretical scenarios.'
    };
  }
}

/**
 * Get difficulty-appropriate challenge level
 */
export function getDifficultyPromptModifiers(difficulty: DifficultyLevel): {
  questionComplexity: string;
  scaffolding: string;
  practiceType: string;
} {
  const descriptor = DIFFICULTY_DESCRIPTORS[difficulty];

  if (difficulty <= 3) {
    return {
      questionComplexity: 'Ask straightforward recall and recognition questions.',
      scaffolding: 'Provide heavy scaffolding: hints, multiple choice with clear wrong answers, step-by-step guidance.',
      practiceType: 'Focus on practice with immediate feedback and encouragement.'
    };
  } else if (difficulty <= 6) {
    return {
      questionComplexity: 'Ask questions requiring understanding and application of concepts.',
      scaffolding: 'Provide moderate scaffolding: guided examples, hints available if requested.',
      practiceType: 'Balance practice with some problem-solving challenges.'
    };
  } else {
    return {
      questionComplexity: `Ask questions requiring ${descriptor.bloomLevel} level thinking.`,
      scaffolding: 'Minimal scaffolding. Encourage independent problem-solving and critical thinking.',
      practiceType: 'Challenge with complex problems, open-ended questions, and creative applications.'
    };
  }
}

/**
 * Generate feedback method prompt section
 */
function getFeedbackMethodPrompt(method: FeedbackMethod): string {
  const methodInfo = FEEDBACK_METHODS[method];
  return `
FEEDBACK APPROACH: ${methodInfo.name}
CATEGORY: ${methodInfo.category}
DESCRIPTION: ${methodInfo.description}

IMPLEMENTATION:
${methodInfo.implementation}

KEY PRINCIPLES: ${methodInfo.principles.join(', ')}

YOU MUST provide feedback using the ${methodInfo.name} approach. Your feedback style should reflect these principles.`;
}

/**
 * Generate teaching method prompt section
 */
function getTeachingMethodPrompt(method: TeachingMethod): string {
  const methodInfo = TEACHING_METHODS[method];
  return `
PEDAGOGICAL APPROACH: ${methodInfo.name}
METHOD DESCRIPTION: ${methodInfo.description}

IMPLEMENTATION INSTRUCTIONS:
${methodInfo.implementation}

YOU MUST apply this teaching method throughout the lesson. Your instruction style, activity design, and interaction patterns should reflect ${methodInfo.name} principles.`;
}

/**
 * Generate teacher persona prompt section
 */
function getTeacherPersonaPrompt(teacher: TeacherPersona): string {
  return `
TEACHER PERSONA: ${teacher.name} (${teacher.gender})
PERSONALITY: ${teacher.personality.toUpperCase()}
DESCRIPTION: ${teacher.description}

TEACHING APPROACH:
- Teaching Style: ${teacher.teachingStyle}
- Feedback Style: ${teacher.feedbackStyle}
- Motivational Approach: ${teacher.motivationalApproach}

YOU MUST embody this persona throughout the lesson. Use language, tone, and approaches consistent with ${teacher.name}'s personality.`;
}

/**
 * Generate master prompt for lesson generation
 */
export function buildMasterLessonPrompt(context: PromptContext): string {
  const gradeMods = getGradePromptModifiers(context.grade);
  const diffMods = getDifficultyPromptModifiers(context.difficulty);
  const gradeInfo = GRADE_LEVELS[context.grade];
  const difficultyInfo = DIFFICULTY_DESCRIPTORS[context.difficulty];
  const currentYear = new Date().getFullYear();

  const teacherIntro = context.teacher
    ? `You are ${context.teacher.name}, a ${context.teacher.personality} ${context.subject} teacher.`
    : `You are an expert ${context.subject} teacher.`;

  return `${teacherIntro} You're creating a lesson for ${gradeInfo.name} students (ages ${gradeInfo.ageRange}) who love ${context.interestTheme}.
${context.teacher ? getTeacherPersonaPrompt(context.teacher) : ''}
${context.teachingMethod ? getTeachingMethodPrompt(context.teachingMethod) : ''}

GRADE LEVEL: ${gradeInfo.name}
DIFFICULTY: ${difficultyInfo.label} (Level ${context.difficulty}/10) - ${difficultyInfo.description}
SUBJECT: ${context.subject}${context.subSubject ? ` - ${context.subSubject}` : ''}
INTEREST THEME: ${context.interestTheme}
LEARNING MODE: ${context.learningMode === 'complete-course' ? 'Complete comprehensive course' : 'Focused on specific topics'}

CURRENT YEAR: ${currentYear} (Use up-to-date, current information and examples)

LANGUAGE & COMPLEXITY REQUIREMENTS:
- Vocabulary: ${gradeMods.vocabulary}
- Sentence Structure: ${gradeMods.sentenceComplexity}
- Concept Depth: ${gradeMods.conceptDepth}
- Examples: ${gradeMods.examples}
- Theme Integration: Weave ${context.interestTheme} throughout all examples and explanations

DIFFICULTY CALIBRATION:
- Question Complexity: ${diffMods.questionComplexity}
- Support Level: ${diffMods.scaffolding}
- Practice Approach: ${diffMods.practiceType}
- Bloom's Taxonomy Level: ${difficultyInfo.bloomLevel}

${context.learningMode === 'complete-course'
  ? 'COURSE MODE: Design a comprehensive, sequential learning path covering all major concepts for this subject at this grade level. Structure as a multi-week course with progressive skill building.'
  : 'FOCUSED MODE: Target specific skills or topics the student needs practice with. Go deep rather than broad.'}

Create an engaging, age-appropriate lesson that meets these exact specifications.`;
}

/**
 * Generate master prompt for question generation
 */
export function buildMasterQuestionPrompt(context: PromptContext, topic: string): string {
  const gradeMods = getGradePromptModifiers(context.grade);
  const diffMods = getDifficultyPromptModifiers(context.difficulty);
  const gradeInfo = GRADE_LEVELS[context.grade];
  const difficultyInfo = DIFFICULTY_DESCRIPTORS[context.difficulty];

  const teacherContext = context.teacher
    ? `\nAs ${context.teacher.name}, use your ${context.teacher.personality} teaching style to craft these questions.`
    : '';

  return `Generate practice questions for ${gradeInfo.name} students about: ${topic}${teacherContext}

SPECIFICATIONS:
- Grade: ${gradeInfo.name} (${gradeInfo.ageRange} years old)
- Difficulty: ${difficultyInfo.label} (${context.difficulty}/10)
- Interest Theme: ${context.interestTheme}
- Bloom's Level: ${difficultyInfo.bloomLevel}

REQUIREMENTS:
${gradeMods.vocabulary}
${diffMods.questionComplexity}
${diffMods.scaffolding}

All questions must incorporate ${context.interestTheme} into the context, examples, or scenarios.`;
}

/**
 * Generate prompt for answer assessment with feedback
 */
export function buildFeedbackAssessmentPrompt(
  question: string,
  studentAnswer: string,
  correctAnswer: string,
  concept: string,
  feedbackMethod?: FeedbackMethod
): string {
  const feedbackPrompt = feedbackMethod
    ? getFeedbackMethodPrompt(feedbackMethod)
    : `FEEDBACK APPROACH: Encouraging and constructive\nProvide specific, actionable feedback that builds confidence while addressing errors.`;

  return `Evaluate this student's answer:
${feedbackPrompt}

Question: ${question}
Student's answer: "${studentAnswer}"
Correct answer: "${correctAnswer}"
Concept being tested: ${concept}

Provide:
1. Whether the answer is correct (be lenient with spelling/phrasing if meaning is right)
2. Feedback following the specified approach above
3. If incorrect: what concept gap exists
4. If incorrect: brief re-teaching suggestion

Format as valid JSON:
{
  "isCorrect": boolean,
  "feedback": "Your feedback message here - following the specified feedback approach",
  "conceptGap": "What they're missing (if incorrect)",
  "reteachingSuggestion": "Brief re-teaching (if incorrect)"
}

IMPORTANT: Return ONLY valid JSON, no markdown formatting.`;
}

/**
 * Get subject outline for a specific grade
 */
export function getSubjectOutlineForGrade(subjectId: string, grade: GradeLevel): SubSubject[] {
  const outline = SUBJECT_OUTLINES[subjectId];
  if (!outline) return [];

  return outline.subSubjects.filter(
    sub => grade >= sub.gradeRange[0] && grade <= sub.gradeRange[1]
  );
}

/**
 * Get recommended course path based on current knowledge level
 */
export function getRecommendedCoursePath(
  subjectId: string,
  currentLevel: 'beginner' | 'intermediate' | 'advanced' = 'beginner'
): string[] {
  const outline = SUBJECT_OUTLINES[subjectId];
  if (!outline) return [];

  return outline.courseStructure[currentLevel];
}
