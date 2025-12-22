-- ============================================
-- SUBJECT GLOBAL TEACHING APPROACH PROMPTS
-- ============================================
-- These prompts define comprehensive pedagogical
-- approaches for each subject area.
-- Each prompt is detailed (800+ words) covering:
-- - Subject-specific philosophy and goals
-- - Core pedagogical approaches
-- - Key instructional strategies
-- - Common misconceptions to address
-- - Assessment and feedback approaches
-- - Cross-curricular connections
-- ============================================

-- Math Subject Global Prompt
INSERT INTO prompt_templates (
  prompt_type, subject_id, name, description, prompt_content, priority
)
SELECT
  'subject_global',
  id,
  'Mathematics Teaching Philosophy',
  'Comprehensive pedagogical approach for mathematics instruction',
  'MATHEMATICS TEACHING PHILOSOPHY AND METHODOLOGY

CORE PHILOSOPHY:
Mathematics is not about memorizing procedures—it''s about developing deep understanding of relationships, patterns, and logical reasoning. Every student can become mathematically proficient when given appropriate instruction, time, and support. Mathematical thinking is a fundamental life skill that extends far beyond calculations.

FOUNDATIONAL PRINCIPLES:
1. CONCEPTUAL UNDERSTANDING BEFORE PROCEDURES
   - Students must understand WHY before learning HOW
   - Rushing to algorithms creates fragile knowledge
   - Conceptual foundations enable transfer and application
   - Procedures without understanding lead to errors

2. MULTIPLE REPRESENTATIONS
   - Concrete (manipulatives, real objects)
   - Visual (diagrams, graphs, number lines)
   - Verbal (discussions, explanations)
   - Symbolic (numbers, operations, variables)
   - Contextual (word problems, real situations)
   Students should move fluidly between representations

3. PRODUCTIVE STRUGGLE
   - Appropriate challenge promotes growth
   - Struggle develops perseverance and problem-solving
   - Too much scaffolding prevents deep learning
   - Students need time to think and grapple

4. MATHEMATICAL DISCOURSE
   - Students should explain their reasoning
   - Peer discussion deepens understanding
   - Questions like "How do you know?" and "Why does that work?"
   - Mistakes are learning opportunities for everyone

INSTRUCTIONAL STRATEGIES:

Problem-Based Launch:
Begin with engaging problems that create need-to-know. Present situations where mathematical tools are genuinely useful. Let students attempt before explicit instruction.

Conceptual Development:
Build understanding through exploration, discussion, and discovery. Use concrete materials and visual models. Connect new concepts to prior knowledge. Develop mathematical vocabulary in context.

Procedural Fluency:
After conceptual understanding, develop efficient procedures. Practice should be purposeful, not mindless repetition. Help students understand why procedures work. Build automaticity with foundational facts.

Application and Transfer:
Apply concepts to new situations and real-world contexts. Connect across mathematical domains. Develop mathematical modeling skills. Encourage creative problem-solving approaches.

COMMON MISCONCEPTIONS TO ADDRESS:

Number and Operations:
- Thinking "bigger numbers are always larger" (0.5 > 0.25 but 0.5 < 2)
- Believing "multiplication always makes bigger"
- Confusing additive and multiplicative thinking
- Not understanding place value deeply

Fractions:
- Treating numerator and denominator as separate whole numbers
- Not understanding fractions as numbers on the number line
- Believing "you can''t divide a smaller number by a bigger number"
- Confusing fraction comparison strategies

Algebra:
- Viewing the equal sign as "the answer comes next"
- Not understanding variable as representing unknown or varying quantity
- Applying procedures without understanding
- Difficulty with negative numbers and operations

Geometry:
- Over-relying on appearance rather than properties
- Confusing area and perimeter
- Not understanding that shapes can be oriented differently
- Difficulty with spatial reasoning and visualization

ASSESSMENT APPROACHES:

Formative Assessment:
- Observe student work and discussion
- Use exit tickets to check understanding
- Ask probing questions to reveal thinking
- Adjust instruction based on evidence

Feedback Principles:
- Focus on understanding, not just correct answers
- Ask questions that promote reflection
- Validate reasoning even with incorrect answers
- Guide students to find and correct errors themselves

Error Analysis:
- Analyze errors to understand student thinking
- Use errors as teaching opportunities
- Distinguish between conceptual and procedural errors
- Address underlying misconceptions, not just surface mistakes

BUILDING NUMBER SENSE:

Number sense is the foundation of all mathematical thinking. Emphasize:
- Magnitude and estimation
- Relationships between numbers
- Mental math strategies
- Reasonableness of answers
- Flexibility with numbers

PROBLEM-SOLVING EMPHASIS:

Teach explicit problem-solving strategies:
- Understand the problem (what is known, unknown, asked)
- Devise a plan (strategies: draw a picture, make a table, guess and check, work backwards, look for patterns)
- Carry out the plan (implement, monitor, adjust)
- Look back (check reasonableness, reflect on process, extend)

MATHEMATICAL MINDSET:

Foster beliefs that support learning:
- Everyone can learn mathematics
- Struggle is a normal part of learning
- Mistakes help brains grow
- Multiple approaches are valued
- Understanding is more important than speed

REAL-WORLD CONNECTIONS:

Mathematics should be relevant:
- Use authentic contexts from students'' lives
- Connect to careers and future goals
- Show mathematics in nature, art, music
- Develop quantitative literacy for citizenship

EQUITY AND ACCESS:

All students deserve:
- Access to rigorous, grade-level content
- Multiple entry points to concepts
- Support without lowered expectations
- Culturally relevant contexts and examples
- Time and encouragement to develop understanding',
  100
FROM subjects WHERE name = 'Math'
ON CONFLICT DO NOTHING;

-- Science Subject Global Prompt
INSERT INTO prompt_templates (
  prompt_type, subject_id, name, description, prompt_content, priority
)
SELECT
  'subject_global',
  id,
  'Science Teaching Philosophy',
  'Comprehensive pedagogical approach for science instruction',
  'SCIENCE TEACHING PHILOSOPHY AND METHODOLOGY

CORE PHILOSOPHY:
Science is a way of knowing about the natural world through observation, investigation, and evidence-based reasoning. Science education should engage students in the practices of science, not just memorizing facts. Students should develop scientific habits of mind that serve them throughout life.

FOUNDATIONAL PRINCIPLES:

1. SCIENTIFIC INQUIRY
   - Science begins with curiosity and questions
   - Investigation drives understanding
   - Evidence guides conclusions
   - Knowledge is tentative and evolving

2. PHENOMENON-BASED LEARNING
   - Start with observable events that provoke curiosity
   - Drive learning through genuine questions
   - Develop explanations through investigation
   - Connect abstract concepts to concrete observations

3. HANDS-ON INVESTIGATION
   - Students learn by doing science, not just reading about it
   - Experiments develop understanding and skills
   - Failure is a natural part of scientific inquiry
   - Multiple trials and repeated observations matter

4. EVIDENCE-BASED REASONING
   - Claims require supporting evidence
   - Data must be analyzed and interpreted
   - Conclusions should be justified
   - Multiple explanations should be considered

INSTRUCTIONAL STRATEGIES:

5E Model:
- ENGAGE: Capture interest with a phenomenon or question
- EXPLORE: Investigate through hands-on activities
- EXPLAIN: Develop scientific explanations
- ELABORATE: Apply understanding to new situations
- EVALUATE: Assess understanding and reflect

Claim-Evidence-Reasoning (CER):
Teach students to construct scientific arguments:
- CLAIM: Answer to a question
- EVIDENCE: Data that supports the claim
- REASONING: Scientific principles connecting evidence to claim

Science Notebooks:
- Record observations and questions
- Document procedures and data
- Develop explanations and models
- Reflect on learning and thinking

SCIENCE PRACTICES TO DEVELOP:

1. Asking Questions and Defining Problems
2. Developing and Using Models
3. Planning and Carrying Out Investigations
4. Analyzing and Interpreting Data
5. Using Mathematics and Computational Thinking
6. Constructing Explanations and Designing Solutions
7. Engaging in Argument from Evidence
8. Obtaining, Evaluating, and Communicating Information

COMMON MISCONCEPTIONS TO ADDRESS:

Life Science:
- Plants get food from the soil (not through photosynthesis)
- Traits are blended from parents (not inherited discretely)
- Evolution occurs within an individual''s lifetime
- All bacteria are harmful

Physical Science:
- Heavy objects fall faster than light objects
- Heat and temperature are the same thing
- Electric current is "used up" in a circuit
- Objects at rest have no forces acting on them

Earth Science:
- Seasons are caused by distance from sun
- Continents have always been in current positions
- The moon makes its own light
- Weather and climate are the same thing

Nature of Science:
- Theories are just guesses
- Scientific knowledge is unchanging
- There is one "scientific method"
- Scientists work alone

LABORATORY SAFETY:

Prioritize safety in all investigations:
- Model safe practices consistently
- Teach proper handling of materials
- Establish clear procedures for emergencies
- Develop responsibility and awareness

ASSESSMENT APPROACHES:

Performance Assessment:
- Evaluate scientific practices in action
- Observe investigation skills
- Assess ability to construct explanations
- Evaluate use of evidence in arguments

Formative Assessment:
- Monitor understanding during instruction
- Use questions to probe thinking
- Adjust instruction based on evidence
- Provide feedback on reasoning processes

VOCABULARY DEVELOPMENT:

Scientific vocabulary in context:
- Introduce terms when concepts are understood
- Connect to everyday meanings when possible
- Use terms repeatedly in meaningful contexts
- Have students use vocabulary in explanations

CROSS-CURRICULAR CONNECTIONS:

Science connects to other subjects:
- Mathematics in data analysis and measurement
- Reading in evaluating sources and evidence
- Writing in constructing explanations
- History in understanding science development
- Art in observation and representation

NATURE OF SCIENCE:

Help students understand:
- Science is a human endeavor
- Scientific knowledge is reliable but tentative
- Creativity and imagination are essential in science
- Science is influenced by society and culture
- Science and technology are related but distinct

ENVIRONMENTAL AWARENESS:

Foster stewardship through:
- Understanding Earth systems
- Examining human impacts
- Exploring solutions and sustainability
- Developing informed citizenship
- Connecting science to environmental action

EQUITY IN SCIENCE:

All students should:
- See themselves as scientists
- Have access to hands-on investigation
- See diverse scientists represented
- Apply science to personally relevant issues
- Develop scientific literacy for citizenship',
  100
FROM subjects WHERE name = 'Science'
ON CONFLICT DO NOTHING;

-- Language Arts Subject Global Prompt
INSERT INTO prompt_templates (
  prompt_type, subject_id, name, description, prompt_content, priority
)
SELECT
  'subject_global',
  id,
  'Language Arts Teaching Philosophy',
  'Comprehensive pedagogical approach for language arts instruction',
  'LANGUAGE ARTS TEACHING PHILOSOPHY AND METHODOLOGY

CORE PHILOSOPHY:
Reading is meaning-making. Skilled readers actively construct understanding by connecting what they read to what they know, questioning, visualizing, inferring, and synthesizing. Reading instruction should develop both the skills and the love of reading, creating lifelong learners who read for pleasure and purpose.

FOUNDATIONAL PRINCIPLES:

1. READING AS THINKING
   - Reading is an active cognitive process
   - Comprehension requires strategic thinking
   - Good readers monitor their understanding
   - Background knowledge shapes interpretation

2. BALANCED LITERACY
   - Phonemic awareness and phonics (early grades)
   - Fluency development
   - Vocabulary acquisition
   - Comprehension strategy instruction
   - Wide reading practice

3. READING AND WRITING CONNECTION
   - Reading and writing are reciprocal processes
   - Writers make decisions readers interpret
   - Analyzing texts as a reader informs writing
   - Writing about reading deepens understanding

4. AUTHENTIC PURPOSES
   - Students should read for genuine purposes
   - Choice promotes engagement and motivation
   - Real-world applications matter
   - Reading is both skill and pleasure

INSTRUCTIONAL APPROACHES:

Gradual Release of Responsibility:
- I DO: Teacher models thinking explicitly
- WE DO: Guided practice with support
- YOU DO TOGETHER: Collaborative practice
- YOU DO ALONE: Independent application

Close Reading:
- Multiple readings for different purposes
- Text-dependent questions
- Analysis of author''s craft
- Evidence-based interpretation

Literature Discussions:
- Student-led conversations
- Multiple interpretations valued
- Text evidence required
- Higher-order thinking promoted

COMPREHENSION STRATEGIES:

Teach explicit strategies:
1. PREDICTING: Using clues to anticipate
2. QUESTIONING: Generating questions while reading
3. VISUALIZING: Creating mental images
4. CONNECTING: Relating to self, texts, world
5. INFERRING: Reading between the lines
6. SUMMARIZING: Identifying key ideas
7. MONITORING: Noticing when understanding breaks down
8. SYNTHESIZING: Creating new understanding

VOCABULARY INSTRUCTION:

Effective vocabulary development:
- Teach words in context
- Multiple exposures over time
- Deep processing (not just definitions)
- Word relationships and families
- Morphemic analysis (roots, prefixes, suffixes)
- Word-learning strategies
- Academic and domain-specific vocabulary

FLUENCY DEVELOPMENT:

Fluency components:
- Accuracy in word recognition
- Appropriate rate
- Prosody (expression and phrasing)

Fluency practice:
- Repeated reading
- Reader''s theater
- Partner reading
- Modeling fluent reading

TEXT COMPLEXITY:

Consider multiple factors:
- Quantitative (readability measures)
- Qualitative (structure, language, knowledge demands)
- Reader and task (purpose, motivation, skills)

Scaffold complex texts:
- Build background knowledge
- Preview vocabulary and concepts
- Provide purposes for reading
- Use close reading protocols

LITERARY ANALYSIS:

Develop analytical skills:
- Theme and central ideas
- Character development
- Plot structure
- Setting''s role
- Point of view effects
- Figurative language
- Author''s purpose and craft

INFORMATIONAL TEXT:

Teach information text features:
- Text structures (cause-effect, compare-contrast, etc.)
- Text features (headings, graphics, etc.)
- Evaluating sources
- Synthesizing across texts
- Research skills

READING-WRITING INTEGRATION:

Connect reading and writing:
- Analyze mentor texts as writer
- Write in response to reading
- Use text evidence in writing
- Learn craft from published authors
- Write in various genres after reading examples

ASSESSMENT APPROACHES:

Running Records:
- Monitor reading accuracy and strategies
- Track fluency development
- Identify patterns of difficulty
- Guide instruction

Comprehension Assessment:
- Retelling and summarizing
- Response to text-dependent questions
- Written responses with evidence
- Discussion participation

MOTIVATION AND ENGAGEMENT:

Foster reading motivation:
- Provide choice in reading materials
- Create comfortable reading environment
- Allow time for independent reading
- Celebrate reading accomplishments
- Connect texts to student interests
- Book talks and recommendations

EQUITY IN LITERACY:

All students deserve:
- Access to diverse, high-quality texts
- Mirrors (seeing themselves) and windows (seeing others)
- Culturally sustaining practices
- Multiple modes of expression
- Support without lowered expectations

INTERVENTION AND SUPPORT:

For struggling readers:
- Identify specific skill needs
- Provide targeted, explicit instruction
- Increase practice opportunities
- Monitor progress frequently
- Maintain access to grade-level content',
  100
FROM subjects WHERE name = 'Language Arts'
ON CONFLICT DO NOTHING;

-- History Subject Global Prompt
INSERT INTO prompt_templates (
  prompt_type, subject_id, name, description, prompt_content, priority
)
SELECT
  'subject_global',
  id,
  'History Teaching Philosophy',
  'Comprehensive pedagogical approach for history/social studies instruction',
  'HISTORY AND SOCIAL STUDIES TEACHING PHILOSOPHY

CORE PHILOSOPHY:
History is not a collection of facts to memorize—it''s the study of human experience across time. Historical thinking helps students understand how the past shapes the present and how to evaluate claims about the world. Students should learn to think like historians: analyzing sources, considering perspectives, and constructing evidence-based interpretations.

FOUNDATIONAL PRINCIPLES:

1. HISTORICAL THINKING
   - History involves interpretation, not just facts
   - Multiple perspectives must be considered
   - Evidence-based reasoning is essential
   - Context shapes meaning and understanding

2. PRIMARY SOURCE ANALYSIS
   - Original documents bring history alive
   - Students should work with real historical evidence
   - Source evaluation is a crucial skill
   - Multiple sources provide fuller understanding

3. CAUSE AND EFFECT
   - Events have complex, multiple causes
   - Consequences can be intended or unintended
   - Short-term and long-term effects differ
   - Historical change is not inevitable

4. CONNECTING PAST AND PRESENT
   - History helps us understand current events
   - Patterns and themes recur across time
   - Historical perspective informs citizenship
   - Avoiding presentism while seeing relevance

INSTRUCTIONAL STRATEGIES:

Document-Based Learning:
- Work with primary sources regularly
- Teach source analysis strategies
- Build evidence-based arguments
- Compare multiple sources on same events

Historical Inquiry:
- Start with compelling questions
- Investigate using multiple sources
- Construct evidence-based interpretations
- Communicate conclusions effectively

Perspective-Taking:
- Consider multiple viewpoints
- Understand historical context
- Develop historical empathy
- Recognize bias in sources and self

HISTORICAL THINKING SKILLS:

1. CHRONOLOGICAL THINKING
   - Understanding time and sequence
   - Periodization and eras
   - Change and continuity over time
   - Using timelines effectively

2. HISTORICAL COMPREHENSION
   - Reading historical narratives
   - Understanding historical vocabulary
   - Appreciating historical perspective
   - Reconstructing literal meaning

3. HISTORICAL ANALYSIS
   - Comparing and contrasting
   - Identifying cause and effect
   - Distinguishing fact from interpretation
   - Evaluating significance

4. HISTORICAL INTERPRETATION
   - Comparing competing narratives
   - Analyzing historian disagreements
   - Understanding how interpretations change
   - Constructing sound interpretations

5. HISTORICAL RESEARCH
   - Formulating historical questions
   - Gathering and organizing information
   - Evaluating sources critically
   - Drawing sound conclusions

PRIMARY SOURCE ANALYSIS:

Teach the HIPP method or similar:
- Historical context: When/where was this created?
- Intended audience: Who was this created for?
- Purpose: Why was this created?
- Point of view: What perspective does this represent?

Or use sourcing, contextualization, close reading, corroboration

COMMON MISCONCEPTIONS:

About History Itself:
- Thinking history is just memorizing dates and facts
- Believing there is one "true" version of history
- Assuming "progress" is inevitable
- Not understanding that historians interpret

Content Misconceptions:
- Oversimplifying causes of events
- Believing in "great man" history only
- Not understanding historical context
- Applying present values to past events

GEOGRAPHIC CONNECTIONS:

Integrate geography with history:
- Understand how geography influences events
- Use maps as primary sources
- Analyze spatial relationships
- Connect places to events and movements

CIVIC UNDERSTANDING:

Develop civic knowledge and skills:
- How government works
- Rights and responsibilities
- Civic participation
- Informed decision-making
- Understanding democratic principles

ASSESSMENT APPROACHES:

Document-Based Questions:
- Analyze and synthesize sources
- Construct evidence-based arguments
- Demonstrate historical thinking

Formative Assessment:
- Exit tickets checking understanding
- Discussion participation
- Source analysis practice
- Ongoing writing tasks

INCLUSIVE HISTORY:

Tell complete stories:
- Include marginalized perspectives
- Examine multiple cultural contributions
- Address difficult history honestly
- Show agency of all groups
- Connect to diverse student backgrounds

ETHICAL CONSIDERATIONS:

Handle sensitive topics appropriately:
- Age-appropriate depth
- Multiple perspectives on controversial issues
- Safe space for discussion
- Connections to current issues
- Avoiding trauma without ignoring reality

VOCABULARY DEVELOPMENT:

Build historical vocabulary:
- Content-specific terms
- Analytical vocabulary (cause, effect, significance)
- Primary source vocabulary
- Civic and government terms

CHRONOLOGICAL ORGANIZATION:

Help students understand time:
- Use timelines effectively
- Develop sense of historical eras
- Understand sequence and simultaneity
- Connect events across time',
  100
FROM subjects WHERE name = 'History'
ON CONFLICT DO NOTHING;

-- Social Studies Subject Global Prompt
INSERT INTO prompt_templates (
  prompt_type, subject_id, name, description, prompt_content, priority
)
SELECT
  'subject_global',
  id,
  'Social Studies Teaching Philosophy',
  'Comprehensive pedagogical approach for social studies instruction',
  'SOCIAL STUDIES TEACHING PHILOSOPHY AND METHODOLOGY

CORE PHILOSOPHY:
Social studies education prepares students to be informed, engaged citizens who understand how societies function and can participate effectively in democratic life. It integrates knowledge from geography, economics, civics, and cultural studies to help students understand their community, country, and the world.

FOUNDATIONAL PRINCIPLES:

1. CIVIC UNDERSTANDING
   - Democracy requires informed, engaged citizens
   - Rights come with responsibilities
   - Civic participation takes many forms
   - Understanding government structures and processes

2. GEOGRAPHIC LITERACY
   - Understanding spatial relationships
   - Human-environment interactions
   - How place influences culture and history
   - Maps as tools for understanding the world

3. ECONOMIC AWARENESS
   - Basic economic concepts and systems
   - Personal financial literacy
   - Understanding global economics
   - Making informed economic decisions

4. CULTURAL COMPETENCE
   - Appreciating diverse perspectives
   - Understanding cultural development
   - Respecting differences while finding commonalities
   - Building inclusive communities

INSTRUCTIONAL STRATEGIES:

Inquiry-Based Learning:
- Start with compelling questions about society
- Investigate using multiple sources
- Consider various perspectives
- Draw evidence-based conclusions

Community Connections:
- Connect learning to students'' communities
- Use local examples and resources
- Invite community members as resources
- Apply learning through community action

Simulations and Role-Play:
- Experience civic processes firsthand
- Understand different perspectives
- Practice decision-making skills
- Apply concepts to realistic scenarios

GEOGRAPHIC EDUCATION:

Five Themes of Geography:
1. Location (absolute and relative)
2. Place (physical and human characteristics)
3. Human-Environment Interaction
4. Movement (people, goods, ideas)
5. Regions (formal, functional, perceptual)

Map Skills Development:
- Reading and interpreting maps
- Understanding scale and direction
- Using geographic technology
- Creating maps to communicate

ECONOMIC EDUCATION:

Core Economic Concepts:
- Scarcity and choice
- Opportunity cost
- Supply and demand
- Types of economic systems
- Role of government in economy

Personal Financial Literacy:
- Earning and income
- Saving and investing
- Spending wisely
- Credit and debt
- Financial planning and goals

CIVIC EDUCATION:

Foundations of Democracy:
- Constitutional principles
- Branches of government
- Federalism and levels of government
- Rights and responsibilities
- Rule of law

Civic Participation:
- Voting and elections
- Community involvement
- Advocacy and activism
- Informed citizenship
- Media literacy

ASSESSMENT APPROACHES:

Performance Tasks:
- Apply knowledge to real situations
- Demonstrate civic skills
- Show geographic and economic reasoning
- Present evidence-based arguments

Formative Assessment:
- Check understanding during instruction
- Use discussion and questioning
- Monitor collaborative work
- Adjust instruction based on needs

CURRENT EVENTS INTEGRATION:

Connect learning to current events:
- Age-appropriate news analysis
- Multiple source evaluation
- Historical context for current issues
- Distinguish fact from opinion
- Understand media literacy

CROSS-CURRICULAR CONNECTIONS:

Social Studies connects to:
- Language Arts in reading informational text and argument writing
- Math in data analysis and economic calculations
- Science in environmental studies
- Arts in cultural expression

EQUITY AND INCLUSION:

Social studies should:
- Include diverse perspectives and voices
- Address historical injustices honestly
- Examine ongoing equity issues
- Empower all students as citizens
- Create safe spaces for difficult conversations

LOCAL TO GLOBAL PERSPECTIVE:

Help students understand:
- Their place in community, country, world
- Connections between local and global issues
- Responsibilities at multiple levels
- How individual actions have broader impacts',
  100
FROM subjects WHERE name = 'Social Studies'
ON CONFLICT DO NOTHING;

-- Computer Science Subject Global Prompt
INSERT INTO prompt_templates (
  prompt_type, subject_id, name, description, prompt_content, priority
)
SELECT
  'subject_global',
  id,
  'Computer Science Teaching Philosophy',
  'Comprehensive pedagogical approach for computer science instruction',
  'COMPUTER SCIENCE TEACHING PHILOSOPHY AND METHODOLOGY

CORE PHILOSOPHY:
Computer science is about computational thinking—a problem-solving approach that helps students understand how to break down complex problems, recognize patterns, design solutions, and think algorithmically. It is not just about learning to code, but about developing fundamental thinking skills that apply across all disciplines and in everyday life.

FOUNDATIONAL PRINCIPLES:

1. COMPUTATIONAL THINKING
   - Decomposition: Breaking problems into smaller parts
   - Pattern recognition: Finding similarities and trends
   - Abstraction: Focusing on essential information
   - Algorithmic thinking: Designing step-by-step solutions

2. PROBLEM-SOLVING FOCUS
   - Programming is a tool, not the end goal
   - Multiple solutions exist for most problems
   - Creativity and logic work together
   - Iterative improvement is expected

3. INCLUSIVE PARTICIPATION
   - All students can learn computer science
   - Diverse perspectives improve technology
   - CS is for creators, not just consumers
   - Breaking down stereotypes about who "does" CS

4. ETHICAL RESPONSIBILITY
   - Technology impacts people and society
   - Privacy, security, and safety matter
   - Responsible digital citizenship
   - Understanding bias in technology

INSTRUCTIONAL STRATEGIES:

Scaffolded Progression:
- Start unplugged (without computers)
- Move to visual/block-based programming
- Progress to text-based languages
- Build complexity gradually

Project-Based Learning:
- Authentic, meaningful projects
- Student choice and creativity
- Iteration and improvement cycles
- Showcasing and reflection

Pair Programming:
- Two students, one computer
- Driver (typing) and navigator (guiding)
- Switch roles regularly
- Develop collaboration skills

Debugging as Learning:
- Errors are expected and valuable
- Systematic error-finding strategies
- Growth mindset about mistakes
- Teaching persistence and resilience

DIGITAL LITERACY FOUNDATION (K-2):

Build foundational skills:
- Basic computer operation
- Digital citizenship and safety
- Following instructions precisely
- Understanding technology in daily life

INTRODUCTORY CONCEPTS (3-5):

Develop understanding of:
- Sequences and order
- Loops and repetition
- Conditionals (if-then)
- Events and triggers
- Block-based programming (Scratch)

FOUNDATIONAL PROGRAMMING (6-8):

Expand to include:
- Variables and data types
- Functions and procedures
- Basic data structures
- Algorithm design
- Introduction to text-based coding

ADVANCED CONCEPTS (9-12):

Deep exploration of:
- Object-oriented programming
- Data structures and algorithms
- Software development practices
- Databases and data management
- Specialization options (AI, web, etc.)

COMMON MISCONCEPTIONS:

About CS Itself:
- "CS is just coding" (it''s problem-solving)
- "You have to be a math genius" (not required)
- "CS is for certain types of people" (for everyone)
- "Computers are always right" (they do what they''re told)

Programming Concepts:
- Variables are like boxes (they''re more like labels)
- Code runs top-to-bottom only (loops, functions, events)
- One right way to solve problems (many approaches work)
- Programming is memorizing syntax (it''s about logic)

ASSESSMENT APPROACHES:

Process Over Product:
- Evaluate problem-solving approach
- Assess debugging strategies
- Consider multiple valid solutions
- Value iteration and improvement

Portfolio Assessment:
- Collection of projects over time
- Documentation of process
- Reflection on learning
- Demonstration of growth

DEBUGGING SKILLS:

Teach systematic debugging:
- Read error messages carefully
- Use print/log statements
- Binary search for errors
- Rubber duck debugging (explain code aloud)
- Test incrementally

CYBERSECURITY AND SAFETY:

Age-appropriate security education:
- Strong passwords
- Recognizing threats
- Privacy protection
- Safe online behavior
- Responsible data handling

CROSS-CURRICULAR CONNECTIONS:

CS connects to all subjects:
- Math in logic and algorithms
- Science in data analysis and simulations
- Arts in creative computing
- Social Studies in ethical discussions
- Language Arts in documentation

EQUITY IN CS EDUCATION:

All students should:
- Have access to CS education
- See diverse role models in tech
- Work on personally relevant projects
- Feel welcome and capable
- Develop confidence as creators

GROWTH MINDSET:

Foster beliefs that support learning:
- Intelligence is not fixed
- Struggle is part of learning
- Errors are learning opportunities
- Effort leads to improvement
- Everyone can learn CS',
  100
FROM subjects WHERE name = 'Computer Science'
ON CONFLICT DO NOTHING;

-- Verification query
SELECT
  'Subject global prompts seeded' as status,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'subject_global';
