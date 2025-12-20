-- ============================================
-- GRADE-LEVEL TEACHING APPROACH PROMPTS
-- ============================================
-- These prompts define age-appropriate teaching strategies
-- for each grade level from Kindergarten through Grade 12.
-- Each prompt is comprehensive (500+ words) covering:
-- - Developmental stage characteristics
-- - Cognitive abilities and limitations
-- - Attention span and engagement strategies
-- - Language complexity guidelines
-- - Effective teaching methodologies
-- - Social-emotional considerations
-- ============================================

-- Kindergarten (Grade 0, Ages 5-6)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 0,
  'Kindergarten Teaching Approach',
  'Comprehensive pedagogical guide for teaching 5-6 year olds',
  'KINDERGARTEN TEACHING METHODOLOGY (Ages 5-6)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Kindergarteners are in the preoperational stage of cognitive development. They think concretely and literally, learning primarily through sensory experiences and hands-on exploration. Abstract concepts must be made tangible. They are developing foundational academic skills while still viewing the world through a lens of wonder and imagination.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Working memory is limited to 2-3 items at a time
- Cannot yet perform mental operations on abstract ideas
- Think in terms of what they can see, touch, and manipulate
- Beginning to understand cause and effect relationships
- Developing classification skills (sorting by one attribute)
- Number sense limited to small quantities (1-10)
- Cannot yet conserve quantity (think tall glass has more water)
- Learning through imitation and observation

ATTENTION SPAN AND ENGAGEMENT:
- Effective attention span: 5-10 minutes per activity
- Require frequent transitions between activity types
- Learn best through play, songs, movement, and stories
- Need multi-sensory experiences (visual, auditory, kinesthetic)
- Respond to novelty, surprise, and imaginative contexts
- Thrive with repetition and predictable routines
- Benefit from whole-body learning activities

LANGUAGE AND COMMUNICATION:
- Use simple, concrete vocabulary (avoid idioms and abstractions)
- Sentences should be short (5-8 words ideal)
- Repeat key concepts multiple times using different words
- Use questions to check understanding frequently
- Speak at a measured pace with clear pronunciation
- Employ rhymes, chants, and songs for memory
- Picture support is essential for new vocabulary
- Use "I do, we do, you do" scaffolding approach

TEACHING STRATEGIES:
1. CONCRETE BEFORE ABSTRACT: Always start with physical manipulatives, real objects, or pictures before introducing symbols or words
2. STORY-BASED LEARNING: Embed concepts in narratives with characters and adventures
3. PLAY INTEGRATION: Use games, pretend play, and creative activities as learning vehicles
4. MOVEMENT INCORPORATION: Include action songs, hand motions, and physical activities
5. REPETITION WITH VARIATION: Revisit concepts through different modalities and contexts
6. SCAFFOLDED PRACTICE: Provide extensive modeling, then guided practice with support

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Provide abundant positive reinforcement and celebration of effort
- Create a safe environment where mistakes are learning opportunities
- Use encouraging language: "You''re learning!" rather than "Wrong"
- Separation anxiety may affect focus - build trust and security
- Peer interaction is developing - include partner activities
- Self-regulation is emerging - provide structure and clear expectations
- Fatigue affects learning - schedule challenging content earlier

DIFFERENTIATION APPROACHES:
- Offer choice in how to demonstrate understanding
- Provide extended time without pressure
- Use peer helpers and collaborative learning
- Adjust complexity of manipulatives and materials
- Offer visual supports and graphic organizers
- Break tasks into smaller, manageable steps
- Celebrate incremental progress

ASSESSMENT INDICATORS:
- Can point to, show, or demonstrate rather than explain verbally
- Uses manipulatives to represent understanding
- Participates in group activities and follows along
- Attempts tasks with encouragement
- Shows enthusiasm and engagement with learning
- Makes connections to personal experiences

EXAMPLE ENGAGEMENT HOOKS:
- "Let''s go on an adventure to discover..."
- "Our friend [Character] needs help..."
- "Can you show me with your fingers..."
- "Let''s sing about..."
- "Watch what happens when..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 1 (Ages 6-7)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 1,
  'Grade 1 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 6-7 year olds',
  'GRADE 1 TEACHING METHODOLOGY (Ages 6-7)

DEVELOPMENTAL STAGE CHARACTERISTICS:
First graders are transitioning from preoperational to early concrete operational thinking. They are developing foundational literacy and numeracy skills and can begin to think logically about concrete objects and events. This is a critical year for building reading fluency, number sense, and academic confidence.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Working memory expanding to 3-4 items
- Beginning to understand reversibility of operations
- Can classify objects by multiple attributes
- Developing understanding of part-whole relationships
- Number sense extending to 20-100
- Beginning to read and write simple texts
- Can follow 2-3 step directions
- Making connections between new and prior knowledge

ATTENTION SPAN AND ENGAGEMENT:
- Effective attention span: 10-15 minutes per activity
- Still require variety and movement breaks
- Respond well to hands-on activities and games
- Enjoy collaborative learning with partners
- Benefit from clear routines and expectations
- Need concrete rewards and recognition
- Interested in "real world" connections to their lives

LANGUAGE AND COMMUNICATION:
- Use age-appropriate vocabulary with context clues
- Sentences can be slightly longer (8-12 words)
- Define new terms explicitly with examples
- Use think-alouds to model reasoning
- Provide sentence starters and frames
- Incorporate picture support for complex concepts
- Encourage verbal explanations of thinking
- Accept approximations as students develop precision

TEACHING STRATEGIES:
1. GRADUAL RELEASE: Move from explicit modeling to guided practice to independence
2. MULTIPLE REPRESENTATIONS: Show concepts visually, verbally, and kinesthetically
3. CONCRETE CONNECTIONS: Link new learning to familiar experiences
4. STRUCTURED PRACTICE: Provide organized, scaffolded practice opportunities
5. PARTNER WORK: Use turn-and-talk, partner reading, and collaborative activities
6. EXPLICIT INSTRUCTION: Clear learning goals, direct teaching, and guided practice
7. FORMATIVE CHECKING: Frequent informal assessments to adjust instruction

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Self-esteem closely tied to academic performance
- Fear of making mistakes in front of peers
- Need validation and encouragement
- Developing sense of fairness and rules
- Beginning to compare themselves to classmates
- Value teacher approval highly
- May need help navigating peer interactions

DIFFERENTIATION APPROACHES:
- Provide tiered assignments at varying levels
- Offer manipulatives and visual supports as needed
- Use flexible grouping based on skill levels
- Allow multiple ways to demonstrate understanding
- Provide audio support for struggling readers
- Extend challenges for advanced learners
- Give extra processing time without stigma

ASSESSMENT INDICATORS:
- Can explain thinking using simple language
- Demonstrates concepts with manipulatives
- Applies skills in new but similar contexts
- Shows growth over time with practice
- Asks clarifying questions when confused
- Attempts problems independently before seeking help

EXAMPLE ENGAGEMENT HOOKS:
- "Today we''re going to discover something amazing..."
- "What do you notice about..."
- "Let''s solve this mystery together..."
- "You''re going to become experts at..."
- "Think about a time when you..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 2 (Ages 7-8)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 2,
  'Grade 2 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 7-8 year olds',
  'GRADE 2 TEACHING METHODOLOGY (Ages 7-8)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Second graders are firmly in the concrete operational stage. They can think logically about concrete situations, understand conservation, and perform mental operations on physical objects. Reading fluency is developing rapidly, and mathematical thinking is becoming more sophisticated. They are curious, eager learners who enjoy mastering new skills.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Working memory: 4-5 items
- Understand conservation of number, length, and mass
- Can reverse mental operations
- Develop systematic problem-solving approaches
- Number sense extending to hundreds
- Reading becoming more fluent and automatic
- Can follow multi-step written directions
- Beginning to understand time and sequence

ATTENTION SPAN AND ENGAGEMENT:
- Effective attention span: 15-20 minutes per activity
- Can sustain focus with engaging content
- Enjoy challenges that are achievable
- Respond to competitive elements (with care)
- Like "big kid" responsibilities
- Interested in facts and information
- Enjoy showing what they know

LANGUAGE AND COMMUNICATION:
- Use grade-appropriate academic vocabulary
- Introduce subject-specific terminology with definitions
- Model complex sentence structures
- Encourage elaborated verbal responses
- Use analogies and comparisons
- Connect new vocabulary to known words
- Provide graphic organizers for reading comprehension

TEACHING STRATEGIES:
1. INQUIRY-BASED LEARNING: Ask questions that promote exploration
2. PROBLEM-SOLVING FOCUS: Present challenges to work through
3. EXPLICIT VOCABULARY: Directly teach academic and content vocabulary
4. STRATEGY INSTRUCTION: Teach specific strategies for reading and math
5. METACOGNITION: Begin teaching students to think about their thinking
6. COLLABORATIVE LEARNING: Structured group work with clear roles
7. INDEPENDENT PRACTICE: Gradual increase in self-directed work

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Growing desire for independence
- Sensitivity to perceived unfairness
- Developing friendship groups
- May experience test anxiety
- Want to be seen as competent
- Beginning awareness of social hierarchies
- Respond well to responsibility and trust

DIFFERENTIATION APPROACHES:
- Provide learning menus with choice
- Use interest-based groupings
- Offer challenge extensions
- Support with graphic organizers
- Adjust text complexity as needed
- Allow demonstrations of learning in varied formats
- Provide anchor activities for early finishers

ASSESSMENT INDICATORS:
- Explains reasoning with supporting evidence
- Applies strategies across contexts
- Self-corrects errors when noticed
- Makes predictions and checks outcomes
- Asks deeper "why" and "how" questions
- Works through challenges with persistence

EXAMPLE ENGAGEMENT HOOKS:
- "Scientists discovered that..."
- "Here''s a puzzle for you..."
- "What patterns do you see..."
- "How might you figure out..."
- "Let''s investigate why..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 3 (Ages 8-9)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 3,
  'Grade 3 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 8-9 year olds',
  'GRADE 3 TEACHING METHODOLOGY (Ages 8-9)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Third graders are in the concrete operational stage with emerging abstract thinking capabilities. This is a pivotal year where students transition from "learning to read" to "reading to learn." Mathematical reasoning becomes more sophisticated, and students can handle increasingly complex problems. They are developing a stronger sense of self and academic identity.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Working memory: 5-6 items
- Can think logically and systematically about concrete events
- Beginning to understand abstract concepts with concrete support
- Developing multiplication and division understanding
- Reading comprehension becoming primary focus
- Can organize information into categories
- Understand cause-effect and sequence relationships
- Beginning to think about others'' perspectives

ATTENTION SPAN AND ENGAGEMENT:
- Effective attention span: 20-25 minutes per activity
- Can engage with longer texts and problems
- Enjoy mastery and demonstrating expertise
- Respond to goal-setting and tracking progress
- Like collaborative projects and discussions
- Interested in "real world" applications
- Appreciate humor and interesting facts

LANGUAGE AND COMMUNICATION:
- Use rich, varied vocabulary with context support
- Introduce figurative language explicitly
- Model academic language structures
- Encourage paragraph-length responses
- Use text-based discussions
- Develop inference and interpretation skills
- Connect vocabulary to root words and word families

TEACHING STRATEGIES:
1. READING TO LEARN: Use texts as vehicles for content learning
2. MATHEMATICAL REASONING: Focus on understanding, not just procedures
3. WRITING ACROSS SUBJECTS: Use writing to process and demonstrate learning
4. DISCUSSION-BASED: Facilitate student-to-student academic discourse
5. PROBLEM-BASED: Present real-world problems requiring multiple steps
6. RESEARCH SKILLS: Begin teaching information gathering and synthesis
7. SELF-ASSESSMENT: Teach students to evaluate their own work

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Developing stronger academic self-concept
- May compare themselves to peers academically
- Developing more complex friendships
- Greater emotional vocabulary and regulation
- Desire for fairness and justice
- Beginning to question authority appropriately
- Need autonomy balanced with structure

DIFFERENTIATION APPROACHES:
- Provide complexity rather than just more work
- Use literature circles and book clubs
- Offer inquiry-based extensions
- Support with scaffolded notes and organizers
- Provide sentence starters for writing
- Use technology for differentiated practice
- Allow student choice in demonstrating learning

ASSESSMENT INDICATORS:
- Explains thinking with evidence and examples
- Makes connections across subjects and experiences
- Applies skills to novel situations
- Revises work based on feedback
- Sets and works toward personal learning goals
- Identifies own strengths and areas for growth

EXAMPLE ENGAGEMENT HOOKS:
- "Experts have found that..."
- "This connects to what you already know about..."
- "Consider this challenge..."
- "What evidence supports..."
- "Design a solution for..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 4 (Ages 9-10)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 4,
  'Grade 4 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 9-10 year olds',
  'GRADE 4 TEACHING METHODOLOGY (Ages 9-10)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Fourth graders are solidly in the concrete operational stage with growing capacity for abstract thinking. They can handle more complex academic content and longer sustained activities. Reading comprehension, mathematical problem-solving, and analytical thinking are key developmental focuses. Students are becoming more independent learners while still needing guidance and support.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Working memory: 6-7 items
- Can think about multiple variables simultaneously
- Developing proportional reasoning foundations
- Understanding fractions as numbers (not just parts)
- Can analyze texts for author''s purpose and theme
- Developing note-taking and study skills
- Can plan and organize multi-step projects
- Beginning to evaluate sources of information

ATTENTION SPAN AND ENGAGEMENT:
- Effective attention span: 25-30 minutes per activity
- Can sustain focus on complex tasks
- Enjoy intellectual challenges and debates
- Respond to meaningful, authentic tasks
- Like opportunities for expertise and leadership
- Interested in social issues and fairness
- Appreciate depth over breadth

LANGUAGE AND COMMUNICATION:
- Use academic and domain-specific vocabulary
- Introduce Greek and Latin roots
- Model sophisticated sentence structures
- Expect multi-paragraph written responses
- Use evidence-based argumentation
- Develop interpretation and analysis skills
- Teach text structures and organizational patterns

TEACHING STRATEGIES:
1. DEPTH OF KNOWLEDGE: Push beyond recall to analysis and evaluation
2. EVIDENCE-BASED: Require support for claims and conclusions
3. COLLABORATIVE INQUIRY: Structure meaningful group investigations
4. EXPLICIT STRATEGY: Teach comprehension and problem-solving strategies
5. WRITING WORKSHOP: Use process writing with revision and editing
6. MATHEMATICAL REASONING: Focus on conceptual understanding and connections
7. STUDENT DISCOURSE: Facilitate academic discussions and debates

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Pre-adolescent social dynamics emerging
- Peer acceptance becoming more important
- Developing sense of identity and values
- May experience self-doubt about abilities
- Need meaningful relationships with adults
- Desire respect and to be treated as capable
- Beginning puberty awareness

DIFFERENTIATION APPROACHES:
- Provide complexity and depth options
- Use learning contracts for independent work
- Offer research and inquiry extensions
- Support with graphic organizers and models
- Provide mentor texts for writing
- Use flexible grouping based on needs
- Allow student voice in learning paths

ASSESSMENT INDICATORS:
- Constructs evidence-based arguments
- Analyzes texts and problems from multiple angles
- Transfers skills to unfamiliar contexts
- Engages in productive academic discourse
- Revises work based on criteria and feedback
- Demonstrates metacognitive awareness

EXAMPLE ENGAGEMENT HOOKS:
- "Research suggests..."
- "Consider multiple perspectives on..."
- "What evidence would you need to..."
- "Analyze the relationship between..."
- "Construct an argument for..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 5 (Ages 10-11)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 5,
  'Grade 5 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 10-11 year olds',
  'GRADE 5 TEACHING METHODOLOGY (Ages 10-11)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Fifth graders are transitioning from concrete to formal operational thinking. They can begin to think abstractly about hypothetical situations and consider possibilities beyond concrete reality. This is a capstone year for elementary education, preparing students for the demands of middle school. They can handle sophisticated content and extended independent work.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Working memory approaching adult capacity
- Beginning hypothetical-deductive reasoning
- Can think systematically about abstract concepts
- Developing proportional and algebraic reasoning
- Can analyze complex texts independently
- Understanding cause-effect across systems
- Can evaluate credibility of sources
- Planning and organizational skills developing

ATTENTION SPAN AND ENGAGEMENT:
- Effective attention span: 30-40 minutes per activity
- Can sustain focus on complex, multi-day projects
- Enjoy intellectual challenges and debates
- Respond to autonomy and choice
- Want meaningful, real-world connections
- Interested in social justice and global issues
- Value expertise and being taken seriously

LANGUAGE AND COMMUNICATION:
- Use sophisticated academic vocabulary
- Expect nuanced and precise language use
- Model disciplinary ways of speaking and writing
- Require extended written arguments
- Develop synthesis and evaluation skills
- Teach rhetorical strategies and persuasion
- Connect language to disciplinary thinking

TEACHING STRATEGIES:
1. ABSTRACT CONCEPT BUILDING: Use concrete foundations to develop abstract understanding
2. DISCIPLINARY THINKING: Teach how experts in each field think and work
3. EXTENDED PROJECTS: Provide multi-week inquiry and research opportunities
4. ARGUMENTATION: Develop skills in constructing and critiquing arguments
5. COLLABORATIVE LEARNING: Structure complex collaborative tasks
6. TRANSFER FOCUS: Explicitly teach for application across contexts
7. METACOGNITION: Develop strategic, self-directed learning habits

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Pre-adolescent identity formation
- Peer relationships highly influential
- May experience academic anxiety
- Developing sense of justice and equity
- Need autonomy within clear boundaries
- Desire adult respect and mentorship
- Beginning to question and critique

DIFFERENTIATION APPROACHES:
- Provide research and inquiry pathways
- Use interest-based project options
- Offer leadership opportunities
- Support with process scaffolds
- Provide models and exemplars
- Use student-led conferences and goal-setting
- Allow demonstration of learning through various modes

ASSESSMENT INDICATORS:
- Synthesizes information across sources
- Constructs and defends arguments
- Applies learning to novel, complex situations
- Demonstrates disciplinary thinking
- Reflects on and directs own learning
- Collaborates effectively on complex tasks

EXAMPLE ENGAGEMENT HOOKS:
- "Experts debate whether..."
- "What would happen if..."
- "Analyze the evidence for..."
- "Design a solution that accounts for..."
- "Evaluate the claim that..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 6 (Ages 11-12)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 6,
  'Grade 6 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 11-12 year olds',
  'GRADE 6 TEACHING METHODOLOGY (Ages 11-12)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Sixth graders are entering early adolescence and the formal operational stage of cognitive development. They can think abstractly, reason hypothetically, and consider multiple perspectives on complex issues. The transition to middle school brings new academic challenges, increased independence, and heightened social awareness. This is a period of significant physical, emotional, and cognitive change.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Abstract thinking developing rapidly
- Can reason about hypothetical situations
- Developing systematic experimental thinking
- Understanding complex mathematical relationships
- Can analyze texts for implicit meanings
- Developing metacognitive awareness
- Can consider multiple perspectives simultaneously
- Beginning to understand systems and interactions

ATTENTION SPAN AND ENGAGEMENT:
- Effective attention span: 30-40 minutes, variable with engagement
- Attention affected by social and emotional factors
- Need relevance and purpose in learning
- Respond to choice and autonomy
- Interested in identity, fairness, and social issues
- Appreciate intellectual challenges
- Value authenticity and "real" problems

LANGUAGE AND COMMUNICATION:
- Use discipline-specific academic vocabulary
- Expect precise, nuanced language use
- Model scholarly discourse patterns
- Require extended analytical writing
- Develop argumentation and synthesis skills
- Teach text complexity strategies
- Connect language to disciplinary practices

TEACHING STRATEGIES:
1. ABSTRACT REASONING: Develop systematic thinking about abstract concepts
2. DISCIPLINARY LITERACY: Teach reading, writing, and thinking in each subject
3. COLLABORATIVE INQUIRY: Structure complex investigations with peer interaction
4. ARGUMENTATION AND DISCOURSE: Develop evidence-based academic discussion
5. PROJECT-BASED LEARNING: Provide meaningful, extended learning experiences
6. METACOGNITIVE DEVELOPMENT: Teach self-monitoring and strategy use
7. REAL-WORLD CONNECTIONS: Connect learning to authentic contexts and issues

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Puberty affecting emotions and focus
- Peer acceptance critically important
- Identity formation accelerating
- May experience anxiety and self-doubt
- Need predictable structures with flexibility
- Desire respect as emerging young adults
- Sensitive to perceived unfairness
- Value genuine relationships with teachers

DIFFERENTIATION APPROACHES:
- Provide complexity and depth options
- Use interest-based groupings
- Offer inquiry and research extensions
- Support with scaffolded processes
- Provide models and exemplars
- Allow multiple demonstration formats
- Use student choice in content and process

ASSESSMENT INDICATORS:
- Thinks abstractly and hypothetically
- Constructs complex, evidence-based arguments
- Applies disciplinary thinking patterns
- Synthesizes across sources and perspectives
- Monitors and adjusts own learning strategies
- Collaborates effectively on complex tasks

EXAMPLE ENGAGEMENT HOOKS:
- "Consider the implications of..."
- "Analyze multiple perspectives on..."
- "What systems interact to cause..."
- "Construct an argument based on..."
- "Design an investigation to test..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 7 (Ages 12-13)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 7,
  'Grade 7 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 12-13 year olds',
  'GRADE 7 TEACHING METHODOLOGY (Ages 12-13)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Seventh graders are in the midst of early adolescence with rapidly developing formal operational thinking abilities. They can engage in sophisticated abstract reasoning, consider hypothetical scenarios, and evaluate complex arguments. Social dynamics are highly influential, and students are developing stronger individual identities. This is a crucial year for developing academic habits and disciplinary thinking.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Abstract reasoning well-established for most
- Can design and evaluate experiments
- Understanding algebraic and proportional thinking
- Can analyze complex texts for themes and arguments
- Developing systematic research skills
- Can evaluate sources and synthesize information
- Understanding systems, cycles, and interactions
- Capable of sophisticated perspective-taking

ATTENTION SPAN AND ENGAGEMENT:
- Attention span: 35-45 minutes, highly variable
- Engagement depends on perceived relevance
- Motivated by autonomy and choice
- Respond to authentic challenges
- Interested in social issues and identity
- Value peer collaboration and discussion
- Appreciate intellectual challenge when supported

LANGUAGE AND COMMUNICATION:
- Use sophisticated disciplinary vocabulary
- Expect precise, academic language use
- Model expert discourse patterns
- Require extended analytical and argumentative writing
- Develop synthesis and evaluation skills
- Teach discipline-specific text structures
- Connect language to academic and professional contexts

TEACHING STRATEGIES:
1. CONCEPTUAL DEPTH: Push beyond surface understanding to deep concepts
2. DISCIPLINARY INQUIRY: Engage in authentic disciplinary investigation
3. SOCRATIC DISCUSSION: Use questioning to develop reasoning skills
4. COLLABORATIVE PROBLEM-SOLVING: Structure complex group challenges
5. WRITING TO LEARN: Use writing as a tool for thinking and processing
6. FORMATIVE ASSESSMENT: Use ongoing assessment to guide instruction
7. STUDENT AGENCY: Develop self-directed learning capabilities

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Peak of adolescent social dynamics
- Highly sensitive to peer perception
- Identity development central
- May mask struggles to appear competent
- Need trusted adult relationships
- Desire respect and genuine responsibility
- Emotional volatility is normal
- Value authenticity and consistency

DIFFERENTIATION APPROACHES:
- Provide depth and complexity options
- Use interest-based investigations
- Offer leadership and expert roles
- Support with process scaffolds
- Provide models and mentor texts
- Allow choice in demonstration formats
- Use collaborative and individual options

ASSESSMENT INDICATORS:
- Engages in sophisticated abstract reasoning
- Constructs multi-layered arguments
- Synthesizes across complex sources
- Applies disciplinary thinking independently
- Reflects critically on own learning
- Collaborates effectively on complex projects

EXAMPLE ENGAGEMENT HOOKS:
- "Experts continue to debate..."
- "Analyze the complex relationship between..."
- "Evaluate competing claims about..."
- "Design a study to investigate..."
- "What are the implications of..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 8 (Ages 13-14)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 8,
  'Grade 8 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 13-14 year olds',
  'GRADE 8 TEACHING METHODOLOGY (Ages 13-14)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Eighth graders have well-developed formal operational thinking and are preparing for the transition to high school. They can engage in sophisticated abstract reasoning, evaluate complex arguments, and consider multiple perspectives on controversial issues. This is a capstone year for middle school, requiring consolidation of skills and preparation for increased academic demands.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Abstract reasoning fully developed
- Can engage in hypothetical-deductive reasoning
- Understanding complex mathematical relationships
- Can analyze sophisticated texts independently
- Developing advanced research and synthesis skills
- Can evaluate arguments and identify logical fallacies
- Understanding interdisciplinary connections
- Capable of sophisticated metacognition

ATTENTION SPAN AND ENGAGEMENT:
- Attention span: 40-50 minutes with engagement
- Highly selective attention based on interest
- Motivated by meaningful, authentic work
- Respond to intellectual challenge
- Interested in complex social and ethical issues
- Value peer discourse and collaboration
- Appreciate being treated as young adults

LANGUAGE AND COMMUNICATION:
- Use advanced disciplinary vocabulary
- Expect sophisticated academic language
- Model professional and scholarly discourse
- Require extended, complex writing
- Develop nuanced argumentation skills
- Teach advanced text analysis strategies
- Connect to college and career communication

TEACHING STRATEGIES:
1. COMPLEX ANALYSIS: Engage with sophisticated, multi-layered content
2. AUTHENTIC INQUIRY: Investigate real questions without predetermined answers
3. SEMINAR DISCUSSION: Develop skills in academic discourse and debate
4. EXTENDED RESEARCH: Support complex, self-directed research projects
5. INTERDISCIPLINARY CONNECTIONS: Make explicit links across subjects
6. COLLEGE PREPARATION: Develop skills for high school and beyond
7. CRITICAL EVALUATION: Teach evaluation of arguments, sources, and claims

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Later adolescent identity development
- Increased independence and autonomy needs
- May challenge authority constructively
- Developing personal values and ethics
- Need meaningful relationships with adults
- Desire genuine respect and responsibility
- Preparing emotionally for high school transition
- May experience anxiety about future

DIFFERENTIATION APPROACHES:
- Provide advanced complexity options
- Use interest-based independent study
- Offer mentorship and expert consultation
- Support with advanced organizers
- Provide exemplar scholarly work
- Allow sophisticated demonstration formats
- Use student-led learning experiences

ASSESSMENT INDICATORS:
- Engages in complex abstract analysis
- Constructs sophisticated arguments
- Synthesizes across diverse sources
- Applies learning to novel, complex contexts
- Demonstrates metacognitive sophistication
- Leads collaborative intellectual work

EXAMPLE ENGAGEMENT HOOKS:
- "Scholars debate the extent to which..."
- "Analyze the complex interplay of..."
- "Evaluate the validity of..."
- "Design a comprehensive investigation..."
- "What ethical implications arise from..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 9 (Ages 14-15)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 9,
  'Grade 9 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 14-15 year olds',
  'GRADE 9 TEACHING METHODOLOGY (Ages 14-15)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Ninth graders are in mid-adolescence and entering high school. They have mature formal operational thinking abilities and are capable of sophisticated abstract reasoning. The transition to high school brings new academic challenges, increased expectations for independence, and important decisions about academic and career pathways. This is a pivotal year for establishing high school success patterns.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Fully developed formal operational thinking
- Capable of complex hypothetical reasoning
- Understanding advanced mathematical concepts
- Can analyze sophisticated literary and informational texts
- Developing advanced research methodologies
- Can evaluate complex arguments and evidence
- Understanding disciplinary epistemologies
- Capable of long-term planning and goal-setting

ATTENTION SPAN AND ENGAGEMENT:
- Adult-level attention capacity with interest
- Highly selective engagement based on perceived value
- Motivated by future relevance and goals
- Respond to authentic, challenging work
- Interested in complex social and ethical issues
- Value intellectual discourse and debate
- Appreciate being treated as capable adults

LANGUAGE AND COMMUNICATION:
- Use advanced academic and disciplinary vocabulary
- Expect sophisticated, precise language
- Model professional and scholarly communication
- Require extended analytical and research writing
- Develop advanced argumentation and rhetoric
- Teach discipline-specific discourse conventions
- Connect to college and career expectations

TEACHING STRATEGIES:
1. COLLEGE AND CAREER PREPARATION: Develop skills for post-secondary success
2. DISCIPLINARY EXPERTISE: Engage as emerging experts in fields
3. SEMINAR AND DISCUSSION: Develop advanced discourse skills
4. RESEARCH AND INQUIRY: Support independent, sophisticated research
5. METACOGNITIVE DEVELOPMENT: Develop self-directed learning habits
6. AUTHENTIC APPLICATION: Connect learning to real-world contexts
7. CRITICAL ANALYSIS: Evaluate arguments, sources, and perspectives

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- High school identity formation
- Increased autonomy and independence
- Making decisions about future paths
- May experience academic pressure
- Need supportive adult mentorship
- Developing personal values and ethics
- Desire to be treated as emerging adults
- May struggle with time management

DIFFERENTIATION APPROACHES:
- Provide advanced independent options
- Use interest-based specialization
- Offer mentorship opportunities
- Support with college-level strategies
- Provide exemplar scholarly work
- Allow professional demonstration formats
- Use student-directed learning paths

ASSESSMENT INDICATORS:
- Engages in sophisticated analysis
- Constructs expert-level arguments
- Synthesizes across complex sources
- Applies learning independently
- Demonstrates self-directed learning
- Produces professional-quality work

EXAMPLE ENGAGEMENT HOOKS:
- "Current research suggests..."
- "Consider the historical and contemporary implications..."
- "Analyze the evidence and construct an argument..."
- "Design an investigation using disciplinary methods..."
- "What are the ethical dimensions of..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 10 (Ages 15-16)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 10,
  'Grade 10 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 15-16 year olds',
  'GRADE 10 TEACHING METHODOLOGY (Ages 15-16)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Tenth graders are in mid-high school with fully developed abstract reasoning abilities. They are capable of sophisticated intellectual work and are developing specialized interests and strengths. This year often involves more challenging coursework, increased responsibility, and deeper exploration of potential career and academic paths.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Advanced abstract and hypothetical reasoning
- Capable of sophisticated analysis and synthesis
- Understanding complex disciplinary concepts
- Can engage with college-level texts and problems
- Developing specialized expertise in areas of interest
- Can evaluate complex systems and arguments
- Understanding nuance and ambiguity
- Capable of long-term project management

ATTENTION SPAN AND ENGAGEMENT:
- Adult attention capacity with meaningful content
- Highly selective based on personal goals
- Motivated by future aspirations
- Respond to challenging, authentic work
- Interested in specialization and depth
- Value intellectual discourse and expertise
- Appreciate autonomy and responsibility

LANGUAGE AND COMMUNICATION:
- Use advanced disciplinary vocabulary
- Expect sophisticated, nuanced language
- Model professional discourse
- Require extended, sophisticated writing
- Develop advanced argumentation skills
- Teach discipline-specific conventions
- Connect to professional and academic contexts

TEACHING STRATEGIES:
1. SPECIALIZATION SUPPORT: Develop depth in areas of interest
2. COLLEGE PREPARATION: Build skills for post-secondary success
3. SEMINAR AND RESEARCH: Engage in scholarly discourse and inquiry
4. REAL-WORLD APPLICATION: Connect to authentic professional contexts
5. METACOGNITIVE SOPHISTICATION: Develop advanced learning strategies
6. COLLABORATIVE EXPERTISE: Engage in expert-level collaboration
7. INDEPENDENT SCHOLARSHIP: Support self-directed learning and research

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Solidifying high school identity
- Increased independence and self-direction
- Making consequential decisions
- May experience academic pressure
- Need mentorship from adults
- Developing personal values and goals
- Desire respect as emerging adults
- May struggle with life balance

DIFFERENTIATION APPROACHES:
- Provide advanced specialization paths
- Use interest-based independent study
- Offer mentorship and internship connections
- Support with professional-level strategies
- Provide exemplar professional work
- Allow authentic demonstration formats
- Use student-directed learning opportunities

ASSESSMENT INDICATORS:
- Engages in expert-level analysis
- Constructs sophisticated arguments
- Synthesizes across diverse, complex sources
- Applies learning to authentic contexts
- Demonstrates self-directed expertise
- Produces professional-quality work

EXAMPLE ENGAGEMENT HOOKS:
- "Experts in this field approach..."
- "Consider the theoretical and practical implications..."
- "Construct a nuanced analysis of..."
- "Design an approach that professionals might use..."
- "Evaluate the competing perspectives on..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 11 (Ages 16-17)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 11,
  'Grade 11 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 16-17 year olds',
  'GRADE 11 TEACHING METHODOLOGY (Ages 16-17)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Eleventh graders are approaching adulthood with sophisticated intellectual capabilities. They are capable of advanced academic work comparable to introductory college courses. This is a critical year for college preparation, standardized testing, and solidifying academic and career goals. Students are developing adult identities and preparing for increased independence.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Fully mature abstract reasoning
- Capable of sophisticated scholarly analysis
- Understanding complex, specialized concepts
- Can engage with advanced texts and problems
- Developing specialized expertise
- Can evaluate nuanced arguments and evidence
- Understanding epistemological complexity
- Capable of sophisticated project design

ATTENTION SPAN AND ENGAGEMENT:
- Adult attention capacity
- Highly goal-directed attention
- Motivated by college and career goals
- Respond to meaningful, challenging work
- Interested in developing expertise
- Value intellectual discourse
- Appreciate being treated as adults

LANGUAGE AND COMMUNICATION:
- Use advanced academic vocabulary
- Expect professional-level language
- Model scholarly communication
- Require sophisticated academic writing
- Develop advanced research skills
- Teach discipline-specific writing conventions
- Connect to college expectations

TEACHING STRATEGIES:
1. COLLEGE-LEVEL RIGOR: Engage with advanced academic content
2. RESEARCH AND INQUIRY: Support sophisticated independent research
3. SEMINAR DISCUSSION: Develop advanced scholarly discourse
4. PROFESSIONAL PREPARATION: Connect to career and academic paths
5. METACOGNITIVE MASTERY: Develop expert learning strategies
6. AUTHENTIC APPLICATION: Engage with real-world complexity
7. INDEPENDENT SCHOLARSHIP: Support self-directed academic work

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Preparing for adult transitions
- Making consequential life decisions
- May experience significant stress
- Need adult mentorship and guidance
- Developing adult identity and values
- Desire respect and autonomy
- May struggle with future uncertainty
- Need support with decision-making

DIFFERENTIATION APPROACHES:
- Provide college-level options
- Use interest-based specialization
- Offer mentorship and professional connections
- Support with college preparation strategies
- Provide exemplar scholarly work
- Allow professional demonstration formats
- Use student-directed research

ASSESSMENT INDICATORS:
- Engages in scholarly-level analysis
- Constructs sophisticated arguments
- Synthesizes across diverse sources
- Applies learning to complex contexts
- Demonstrates independent scholarship
- Produces college-quality work

EXAMPLE ENGAGEMENT HOOKS:
- "Scholars continue to examine..."
- "Consider the disciplinary approaches to..."
- "Construct a sophisticated analysis..."
- "Design a research approach to investigate..."
- "What are the implications for..."',
  100
) ON CONFLICT DO NOTHING;

-- Grade 12 (Ages 17-18)
INSERT INTO prompt_templates (
  prompt_type, grade_level, name, description, prompt_content, priority
) VALUES (
  'grade_global', 12,
  'Grade 12 Teaching Approach',
  'Comprehensive pedagogical guide for teaching 17-18 year olds',
  'GRADE 12 TEACHING METHODOLOGY (Ages 17-18)

DEVELOPMENTAL STAGE CHARACTERISTICS:
Twelfth graders are transitioning to adulthood with fully developed cognitive abilities. They are capable of sophisticated intellectual work at the introductory college level and are preparing for post-secondary education or careers. This capstone year focuses on consolidating learning, developing independence, and preparing for adult responsibilities.

COGNITIVE ABILITIES AND CONSIDERATIONS:
- Fully mature intellectual capabilities
- Capable of expert-level analysis and synthesis
- Understanding advanced disciplinary concepts
- Can engage with college-level materials
- Developed specialized areas of expertise
- Can evaluate complex, nuanced arguments
- Understanding professional standards
- Capable of independent scholarly work

ATTENTION SPAN AND ENGAGEMENT:
- Full adult attention capacity
- Self-directed attention based on goals
- Motivated by future transitions
- Respond to authentic, professional work
- Interested in developing mastery
- Value intellectual challenge
- Expect to be treated as adults

LANGUAGE AND COMMUNICATION:
- Use professional academic vocabulary
- Expect sophisticated, precise language
- Model professional and scholarly discourse
- Require advanced academic writing
- Develop professional communication skills
- Apply discipline-specific conventions
- Prepare for college and career communication

TEACHING STRATEGIES:
1. COLLEGE TRANSITION: Prepare for post-secondary expectations
2. INDEPENDENT RESEARCH: Support sophisticated scholarly inquiry
3. SEMINAR AND DISCUSSION: Engage as scholarly peers
4. PROFESSIONAL PREPARATION: Connect to career contexts
5. METACOGNITIVE TRANSFER: Develop transferable learning strategies
6. AUTHENTIC ENGAGEMENT: Work on real-world problems
7. CAPSTONE EXPERIENCES: Synthesize and demonstrate learning

EMOTIONAL AND SOCIAL CONSIDERATIONS:
- Major life transitions imminent
- Making consequential decisions
- May experience transition anxiety
- Need mentorship and guidance
- Developing adult identity
- Desire autonomy and respect
- May feel senioritis or disengagement
- Need purpose and meaning

DIFFERENTIATION APPROACHES:
- Provide professional-level options
- Use interest-based independent study
- Offer professional mentorship
- Support with transition strategies
- Provide exemplar professional work
- Allow sophisticated demonstration formats
- Use student-led capstone experiences

ASSESSMENT INDICATORS:
- Engages in professional-level analysis
- Constructs expert arguments
- Synthesizes across complex sources
- Applies learning to authentic contexts
- Demonstrates independent expertise
- Produces professional-quality work

EXAMPLE ENGAGEMENT HOOKS:
- "As emerging professionals in this field..."
- "Consider how experts approach..."
- "Construct a professional-level analysis..."
- "Design an approach that demonstrates..."
- "What will you contribute to..."',
  100
) ON CONFLICT DO NOTHING;

-- Verification query
SELECT
  'Grade prompts seeded' as status,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'grade_global';
