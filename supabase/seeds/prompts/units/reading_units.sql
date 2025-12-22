-- ============================================================================
-- READING/ELA UNIT PROMPTS (ALL GRADES K-12)
-- ============================================================================
-- Comprehensive pedagogical prompts for each Reading/ELA unit
-- Each prompt provides teaching methodology, literacy strategies,
-- common challenges, and instructional approaches
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN READING UNITS
-- ============================================================================

-- Phonics Foundations (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonics Foundations' AND grade_level = 0),
  'Phonics Foundations Teaching Guide',
  'Comprehensive pedagogical approach for teaching alphabet and phonics in Kindergarten',
  'ALPHABET AND PHONICS - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This foundational literacy unit develops letter knowledge and phonemic awareness - the building blocks of reading. Students learn to recognize and name letters, associate letters with sounds, and begin blending sounds to read simple words. This systematic phonics instruction is essential for decoding success.

LEARNING PROGRESSION:
1. Letter recognition (uppercase and lowercase)
2. Letter-sound correspondence
3. Phonemic awareness (hearing individual sounds)
4. Blending sounds (c-a-t → cat)
5. Segmenting sounds (cat → c-a-t)
6. Reading CVC words
7. Beginning sight word recognition

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners are at various stages of literacy development. Some enter knowing letters; others don''t. Systematic instruction with frequent assessment and differentiation is essential. Multi-sensory approaches (see, hear, touch, move) support diverse learners.

COMMON CHALLENGES:
- Letter reversals (b/d, p/q) - developmentally normal, will resolve
- Difficulty hearing individual phonemes (sounds blend naturally)
- Confusing letter names with letter sounds
- Irregular words that don''t follow patterns (was, said, the)
- Rushing before automaticity develops

INSTRUCTIONAL STRATEGIES:

Systematic Phonics:
Introduce letters and sounds in a deliberate sequence. High-frequency consonants and short vowels first. Build from simple to complex.

Multi-Sensory Learning:
Sky-write letters while saying sounds. Use sand trays, play dough, textured letters. Engage multiple modalities.

Phonemic Awareness Games:
Play sound games before connecting to print. "What word starts with /m/?" "What rhymes with cat?" This oral work is foundational.

Blending Practice:
Demonstrate blending with sound boxes or Elkonin boxes. Stretch sounds, then push together. Practice daily.

Decodable Texts:
Use decodable books that match taught patterns. Students practice skills with text they CAN read successfully.

Word Building:
Use magnetic letters or letter tiles to build words. Change one letter: cat → hat → bat. This builds word awareness.

Sight Word Instruction:
Teach high-frequency irregular words through repeated exposure and practice, not phonics rules.

ASSESSMENT INDICATORS:
- Names all uppercase and lowercase letters
- Produces sounds for most consonants and short vowels
- Blends sounds to read CVC words
- Segments words into individual sounds
- Reads some high-frequency sight words

VOCABULARY TO DEVELOP:
letter, sound, beginning, ending, middle, blend, rhyme, word, sentence

DIFFERENTIATION:
For struggling learners: more repetition, smaller groups, additional multi-sensory practice
For advanced learners: consonant blends, digraphs, longer words earlier',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Phonics Foundations' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Listening and Understanding (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Listening and Understanding' AND grade_level = 0),
  'Listening and Understanding Teaching Guide',
  'Comprehensive pedagogical approach for teaching listening comprehension in Kindergarten',
  'LISTENING AND UNDERSTANDING - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit develops comprehension through listening, as most Kindergartners cannot yet decode complex texts. Students learn to actively listen to read-alouds, understand story elements, answer questions about texts, and compare experiences to stories. These comprehension skills transfer to reading as decoding develops.

LEARNING PROGRESSION:
1. Active listening skills and behaviors
2. Identifying story elements (characters, setting)
3. Retelling key events in sequence
4. Asking and answering questions about texts
5. Making connections (text-to-self, text-to-text)
6. Understanding informational text features
7. Comparing and contrasting texts

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners can understand texts far beyond what they can read. Rich read-aloud experiences build vocabulary, background knowledge, and comprehension strategies. Think-alouds model comprehension processes.

COMMON CHALLENGES:
- Difficulty maintaining attention through longer texts
- Retelling every detail instead of key events
- Confusing story with personal experiences
- Difficulty with abstract or inferential questions
- Limited vocabulary affecting comprehension

INSTRUCTIONAL STRATEGIES:

Interactive Read-Alouds:
Read aloud daily with purposeful stops for discussion, prediction, and connection. This is not passive listening.

Think-Alouds:
Model your thinking: "I wonder why... This reminds me of... I predict..." Make comprehension visible.

Story Structure:
Use graphic organizers: beginning-middle-end, character-setting-problem-solution. Visualize story structure.

Turn and Talk:
Pair students for brief discussions during read-alouds. This increases engagement and participation.

Questioning:
Ask varied questions: literal (What happened?), inferential (Why did...?), evaluative (What did you think about...?).

Vocabulary Focus:
Pre-teach and review key vocabulary. Use pictures, gestures, and examples.

Text-to-Self Connections:
Model connecting stories to personal experiences. "This reminds me of when I..."

ASSESSMENT INDICATORS:
- Demonstrates active listening behaviors
- Identifies main characters and setting
- Retells key events in order
- Answers questions about text
- Makes text-to-self connections

VOCABULARY TO DEVELOP:
character, setting, beginning, middle, end, problem, solution, author, illustrator, fiction, nonfiction',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Listening and Understanding' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- Writing Basics (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing Basics' AND grade_level = 0),
  'Writing Basics Teaching Guide',
  'Comprehensive pedagogical approach for teaching print concepts and writing in Kindergarten',
  'PRINT CONCEPTS AND WRITING - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit develops understanding of how print works and introduces writing as communication. Students learn concepts of print (left-to-right, top-to-bottom, spaces between words), proper letter formation, and begin writing for various purposes. Reading and writing develop together, each supporting the other.

LEARNING PROGRESSION:
1. Understanding that print carries meaning
2. Book handling and orientation
3. Left-to-right, top-to-bottom directionality
4. Concept of word (spaces between words)
5. Letter formation (manuscript writing)
6. Inventive spelling (using letter sounds)
7. Writing for purpose (labels, messages, stories)

DEVELOPMENTAL CONSIDERATIONS:
Young writers benefit from extensive fine motor development. Writing should feel purposeful, not just practice. Accept developmental spelling while teaching conventional spelling gradually. Celebrate approximation.

COMMON CHALLENGES:
- Letter reversals and inconsistent formation
- Not leaving spaces between words
- Difficulty generating ideas
- Transitioning from drawing to writing
- Frustration with slow writing process

INSTRUCTIONAL STRATEGIES:

Shared Writing:
Write together as a class. Students contribute ideas while teacher models conventions. "Help me write our morning message."

Interactive Writing:
Share the pen with students. They write what they know while teacher scaffolds. This builds independence gradually.

Letter Formation:
Teach correct formation with consistent language. Practice with various materials: pencil, marker, finger, paint.

Inventive Spelling Encouragement:
Encourage students to write the sounds they hear. "Sound it out. What do you hear first? Write that letter."

Writing Workshop:
Implement workshop structure: mini-lesson, writing time, sharing. Students write daily for real purposes.

Fine Motor Development:
Include activities that develop hand strength and control: playdough, cutting, beading, drawing.

Purpose-Driven Writing:
Write for authentic purposes: labels for classroom, cards for family, class books, lists.

ASSESSMENT INDICATORS:
- Demonstrates concepts of print
- Forms letters correctly (most)
- Writes left to right, top to bottom
- Uses inventive spelling representing sounds
- Writes for various purposes

VOCABULARY TO DEVELOP:
letter, word, sentence, space, uppercase, lowercase, write, draw, author, illustrator, title, page',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Writing Basics' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 READING UNITS
-- ============================================================================

-- Phonics and Word Recognition (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Phonics and Word Recognition' AND grade_level = 1),
  'Phonics and Word Recognition Teaching Guide',
  'Comprehensive pedagogical approach for phonics and word recognition in Grade 1',
  'PHONICS AND WORD RECOGNITION - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit extends phonics instruction to include consonant blends, digraphs, long vowel patterns, and common word families. Students develop automatic word recognition through systematic phonics and growing sight word knowledge. Fluent word recognition enables comprehension.

LEARNING PROGRESSION:
1. Review and consolidate CVC words
2. Consonant blends (bl, st, tr, etc.)
3. Consonant digraphs (sh, ch, th, wh)
4. Long vowel patterns (CVCe, vowel teams)
5. Word families (-at, -in, -ot, etc.)
6. Inflectional endings (-s, -ed, -ing)
7. Expanded sight word recognition (Dolch/Fry lists)

DEVELOPMENTAL CONSIDERATIONS:
First graders can handle more complex phonics patterns but still need explicit instruction and practice. Decodable texts should match instruction. Balance phonics practice with meaningful reading.

COMMON CHALLENGES:
- Vowel team confusion (ea makes different sounds in "read" and "bread")
- Over-relying on beginning letters (guessing from context)
- Difficulty with silent e pattern initially
- Adding sounds to blends (bulend instead of blend)
- Irregular words that break patterns

INSTRUCTIONAL STRATEGIES:

Systematic Sequence:
Follow a scope and sequence for phonics patterns. Don''t skip or rush. Mastery matters.

Word Sort Activities:
Sort words by pattern. Picture sorts, word sorts, and compare/contrast sorts build pattern recognition.

Decodable Text Practice:
Match reading practice to phonics instruction. Students should be able to decode 90%+ of words in practice texts.

Word Building:
Use letter tiles or magnetic letters to build, change, and analyze words. "Change blend to blend. Now change it to bland."

Automaticity Practice:
Build sight word fluency through repeated exposure. Flashcards, games, reading, and writing all contribute.

Dictation:
Dictate sounds, words, and sentences for students to write. This assesses phonics application.

Reading Connected Text:
Apply phonics in authentic reading. Note when students successfully use phonics and when they struggle.

ASSESSMENT INDICATORS:
- Decodes words with blends and digraphs
- Applies long vowel patterns
- Recognizes grade-level sight words
- Self-corrects decoding errors
- Reads grade-level text with accuracy

VOCABULARY TO DEVELOP:
blend, digraph, vowel, consonant, pattern, word family, syllable, decode, sight word, fluent',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Phonics and Word Recognition' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Fluency and Comprehension (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Fluency and Comprehension' AND grade_level = 1),
  'Fluency and Comprehension Teaching Guide',
  'Comprehensive pedagogical approach for fluency and comprehension in Grade 1',
  'FLUENCY AND COMPREHENSION - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit develops reading fluency (accuracy, rate, and prosody) and comprehension strategies. As students become more fluent readers, their cognitive resources can focus on meaning. Students learn to monitor their understanding and use strategies when comprehension breaks down.

LEARNING PROGRESSION:
1. Developing reading accuracy
2. Building appropriate reading rate
3. Reading with expression (prosody)
4. Retelling and summarizing
5. Questioning (before, during, after reading)
6. Making predictions and connections
7. Identifying main idea and details

DEVELOPMENTAL CONSIDERATIONS:
Fluency develops through extensive practice with appropriately leveled text. Comprehension instruction begins with read-alouds and transfers to independent reading. Both are essential and interrelated.

COMMON CHALLENGES:
- Reading word-by-word without phrasing
- Reading too fast with poor accuracy
- Flat expression (robot reading)
- Difficulty summarizing (retelling every detail)
- Not monitoring understanding

INSTRUCTIONAL STRATEGIES:

Repeated Reading:
Reread familiar texts to build fluency. Reader''s Theater, partner reading, and recorded reading all work.

Modeled Fluency:
Read aloud with expression. Students hear what fluent reading sounds like. Echo reading builds prosody.

Appropriate Level Text:
Practice fluency at independent or instructional level. Frustration level impedes fluency development.

Comprehension Strategy Instruction:
Explicitly teach strategies: predicting, questioning, visualizing, connecting, summarizing. Model through think-alouds.

Graphic Organizers:
Use organizers for retelling, main idea, character traits. Visual tools support comprehension.

Text Structure:
Teach fiction structure (beginning, middle, end) and simple nonfiction structures. Structure knowledge aids comprehension.

Accountable Talk:
Teach students to discuss texts using evidence. "I think... because in the story..."

ASSESSMENT INDICATORS:
- Reads grade-level text fluently
- Demonstrates appropriate rate and expression
- Retells key events in sequence
- Identifies main idea and details
- Uses strategies when confused

VOCABULARY TO DEVELOP:
fluent, expression, retell, summary, predict, connect, main idea, detail, character, setting, problem, solution',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Fluency and Comprehension' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- Writing (Grade 1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 1),
  'Writing Teaching Guide',
  'Comprehensive pedagogical approach for teaching writing in Grade 1',
  'WRITING - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
This unit develops writing across genres: narrative, informative, and opinion writing. Students learn the writing process, develop stamina for extended writing, and begin incorporating basic conventions. Writing connects to and reinforces reading development.

LEARNING PROGRESSION:
1. Generating ideas and planning
2. Writing personal narratives with detail
3. Writing informative texts about topics
4. Writing opinion pieces with reasons
5. Revising and editing basics
6. Proper spacing, capitalization, punctuation
7. Spelling patterns and high-frequency words

DEVELOPMENTAL CONSIDERATIONS:
First graders can write extended pieces but need structure and support. Writing workshop with mini-lessons, writing time, and sharing provides effective structure. Accept developmental spelling while teaching conventions.

COMMON CHALLENGES:
- "I''m done" after one sentence
- Difficulty generating topics
- Writing without planning leads to disorganized pieces
- Reluctance to revise ("It''s already done")
- Inconsistent conventions

INSTRUCTIONAL STRATEGIES:

Writing Workshop:
Implement consistent workshop structure: mini-lesson (5-10 min), independent writing (15-20 min), sharing.

Mentor Texts:
Use published texts as models. "Notice how this author... Let''s try that in our writing."

Graphic Organizers:
Provide planning tools: story maps, webs, lists. Planning improves organization and content.

Genre Study:
Immerse students in a genre before writing in it. Read examples, notice features, then write.

Conventions in Context:
Teach conventions through mini-lessons, then apply in writing. Don''t over-emphasize at expense of content.

Revision Focus:
Teach that writers revise to make writing better. Start with content revision (add detail, clarify).

Sharing and Celebration:
Regular sharing motivates writers. Publish and celebrate completed pieces.

ASSESSMENT INDICATORS:
- Writes narrative, informative, and opinion pieces
- Uses basic organizational structure
- Includes relevant details
- Uses appropriate grade-level conventions
- Participates in revision and editing

VOCABULARY TO DEVELOP:
narrative, informative, opinion, detail, organize, revise, edit, capitalize, punctuate, sentence, paragraph',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Writing' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 READING UNITS
-- ============================================================================

-- Advanced Phonics (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Advanced Phonics' AND grade_level = 2),
  'Advanced Phonics Teaching Guide',
  'Comprehensive pedagogical approach for advanced phonics in Grade 2',
  'ADVANCED PHONICS - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit extends phonics instruction to include complex vowel patterns, multisyllabic words, prefixes, and suffixes. Students learn to decode longer words through syllable division and morphological analysis. This word study supports both reading and spelling development.

LEARNING PROGRESSION:
1. Review and consolidate long vowel patterns
2. R-controlled vowels (ar, er, ir, or, ur)
3. Vowel diphthongs (oi/oy, ou/ow)
4. Silent letter patterns
5. Syllable types and division
6. Common prefixes (un-, re-, pre-)
7. Common suffixes (-ly, -ful, -less)

DEVELOPMENTAL CONSIDERATIONS:
Second graders can handle multisyllabic word analysis with instruction. Word study should connect spelling and reading. Morphological awareness (prefixes, suffixes) supports vocabulary and comprehension.

COMMON CHALLENGES:
- R-controlled vowels (similar sounds, different spellings)
- Syllable division rules complexity
- Applying prefixes/suffixes to root words
- Vowel patterns with multiple sounds
- Transfer to writing (spelling)

INSTRUCTIONAL STRATEGIES:

Word Study Approach:
Connect phonics, spelling, and vocabulary. Students examine, sort, and analyze words for patterns.

Syllable Instruction:
Teach syllable types (closed, open, VCe, vowel team, r-controlled, C-le). Practice dividing words into syllables.

Morphological Awareness:
Teach prefix and suffix meanings. Build word families: help, helpful, helpless, unhelpful.

Word Sorts:
Sort words by patterns. Open sorts (students decide criteria) develop analytical thinking.

Dictation:
Dictate words and sentences applying current patterns. This assesses encoding (spelling) alongside decoding.

Application in Reading:
Point out pattern words in reading. Students notice patterns in authentic text.

Word Hunts:
Students find examples of patterns in their reading. This connects instruction to application.

ASSESSMENT INDICATORS:
- Decodes words with r-controlled vowels
- Applies syllable division strategies
- Recognizes common prefixes and suffixes
- Spells words with taught patterns
- Reads multisyllabic words accurately

VOCABULARY TO DEVELOP:
syllable, prefix, suffix, root word, vowel, consonant, pattern, decode, spell, divide',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Advanced Phonics' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- Reading Comprehension (Grade 2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Comprehension' AND grade_level = 2),
  'Reading Comprehension Teaching Guide',
  'Comprehensive pedagogical approach for reading comprehension in Grade 2',
  'READING COMPREHENSION - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
This unit develops deeper comprehension skills for both fiction and nonfiction texts. Students learn to identify story elements, understand character motivation, compare texts, and extract information from nonfiction. Active reading strategies become internalized habits.

LEARNING PROGRESSION:
1. Story elements: character, setting, plot
2. Character traits and motivation
3. Problem and solution
4. Comparing and contrasting texts
5. Main idea and key details
6. Text features in nonfiction
7. Author''s purpose

DEVELOPMENTAL CONSIDERATIONS:
Second graders can engage with inferential thinking when scaffolded. Text selection matters - complexity should challenge but not frustrate. Graphic organizers support comprehension and make thinking visible.

COMMON CHALLENGES:
- Difficulty with inference (reading "between the lines")
- Confusing opinion with fact
- Not using text evidence to support ideas
- Skipping nonfiction text features
- Limited background knowledge affecting comprehension

INSTRUCTIONAL STRATEGIES:

Close Reading:
Reread passages for deeper understanding. First read for gist, then for details, then for analysis.

Text Evidence Requirement:
Teach students to support answers with evidence. "Find where it says that in the book."

Graphic Organizers:
Use character trait maps, Venn diagrams, main idea charts. Tools support thinking.

Text Feature Instruction:
Explicitly teach nonfiction features: headings, captions, glossary, index, diagrams. Students practice using them.

Read-Aloud and Think-Aloud:
Continue modeling comprehension through read-alouds. Complex texts accessed through teacher reading.

Guided Reading:
Small group instruction targeting specific comprehension strategies. Differentiated by student need.

Literature Discussions:
Structured discussions about texts. Students share interpretations, cite evidence, and build on each other''s ideas.

ASSESSMENT INDICATORS:
- Identifies and describes story elements
- Infers character traits with evidence
- Identifies main idea and supporting details
- Compares and contrasts texts
- Uses text features to locate information

VOCABULARY TO DEVELOP:
character, setting, plot, problem, solution, traits, motivation, main idea, detail, compare, contrast, author''s purpose, text features',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Reading Comprehension' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 6 READING UNITS
-- ============================================================================

-- Reading Literature (Grade 6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 6),
  'Reading Literature Teaching Guide',
  'Comprehensive pedagogical approach for reading literature in Grade 6',
  'READING LITERATURE - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
This unit develops sophisticated literary analysis skills. Students analyze how authors develop themes, how plot unfolds through conflict and resolution, how point of view creates effects, and how literary devices contribute to meaning. Students learn to cite textual evidence to support their analyses.

LEARNING PROGRESSION:
1. Citing textual evidence to support analysis
2. Determining and analyzing theme development
3. Analyzing plot structure and story elements
4. Character analysis and development
5. Point of view and its effects
6. Figurative language and literary devices
7. Comparing texts across genres

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders can engage with complex literary analysis when given appropriate scaffolding. They should move beyond simple identification to analysis of effect and author''s craft. Discussion deepens understanding.

COMMON CHALLENGES:
- Confusing theme with topic or summary
- Stating theme without tracing development
- Superficial character analysis
- Difficulty with unreliable or limited narrators
- Identifying devices without analyzing effect

INSTRUCTIONAL STRATEGIES:

Evidence-Based Analysis:
Require textual evidence for all claims. Model citing with page numbers and quotes. Practice integration of quotes.

Theme Development:
Trace how theme emerges through events, dialogue, and character change. Theme is not just a word (friendship) but a statement.

Close Reading:
Analyze specific passages for craft. What is the author doing? How? Why?

Character Tracking:
Use graphic organizers to track character traits, motivation, and change. Cite evidence for each.

Point of View Analysis:
Compare the same events from different perspectives. What do we learn? What is hidden?

Socratic Seminars:
Student-led discussions about texts. Develop discussion skills and deeper thinking through dialogue.

Literary Analysis Writing:
Formal writing about literature with thesis, evidence, and analysis. Connect reading and writing.

ASSESSMENT INDICATORS:
- Cites textual evidence appropriately
- Identifies theme and traces development
- Analyzes how plot unfolds
- Describes character development with evidence
- Analyzes effects of point of view

VOCABULARY TO DEVELOP:
theme, plot, character development, point of view, narrator, figurative language, symbolism, imagery, irony, conflict, resolution, analysis, evidence',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Reading Literature' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- Reading Informational Text (Grade 6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Informational Text' AND grade_level = 6),
  'Reading Informational Text Teaching Guide',
  'Comprehensive pedagogical approach for reading informational text in Grade 6',
  'READING INFORMATIONAL TEXT - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
This unit develops critical reading of nonfiction texts. Students learn to determine central ideas, analyze how authors present information, evaluate arguments, and integrate information from multiple sources. These skills are essential for academic success and informed citizenship.

LEARNING PROGRESSION:
1. Determining central ideas and summarizing
2. Analyzing text structure and organization
3. Understanding author''s purpose and perspective
4. Evaluating claims, evidence, and reasoning
5. Analyzing word choice and tone
6. Integrating information from multiple sources
7. Comparing author approaches to same topic

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders are ready to critically evaluate texts rather than accept all written information as fact. Media literacy and source evaluation become important. Connect to current events and real-world issues.

COMMON CHALLENGES:
- Distinguishing central idea from interesting details
- Identifying unstated author bias
- Evaluating credibility of sources
- Synthesizing conflicting information
- Recognizing propaganda and persuasion techniques

INSTRUCTIONAL STRATEGIES:

Text Structure Analysis:
Explicitly teach structures: chronological, compare-contrast, cause-effect, problem-solution. Structure knowledge aids comprehension.

Central Idea Identification:
Distinguish main idea from topic and supporting details. Practice summarizing without personal opinion.

Argument Analysis:
Evaluate claims: What evidence? Is it sufficient? What''s the reasoning? Are there fallacies?

Source Evaluation:
Teach CRAAP test or similar: Currency, Relevance, Authority, Accuracy, Purpose. Evaluate sources critically.

Annotation Practice:
Teach annotation strategies for active reading. Mark main ideas, questions, connections.

Multiple Source Synthesis:
Compare articles on same topic. What do they agree on? Disagree? Why might they differ?

Academic Vocabulary:
Build domain-specific vocabulary through word study and context.

ASSESSMENT INDICATORS:
- Determines central ideas with evidence
- Analyzes text structure and its effects
- Identifies author''s purpose and perspective
- Evaluates arguments critically
- Integrates information from multiple sources

VOCABULARY TO DEVELOP:
central idea, summary, structure, author''s purpose, perspective, claim, evidence, reasoning, credible, bias, source, synthesize',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Reading Informational Text' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- Writing (Grade 6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 6),
  'Writing Teaching Guide',
  'Comprehensive pedagogical approach for teaching writing in Grade 6',
  'WRITING - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
This unit develops writing skills across three modes: argumentative, informative/explanatory, and narrative. Students learn to write with clear organization, strong evidence, and appropriate style for purpose and audience. The writing process (plan, draft, revise, edit) becomes internalized.

LEARNING PROGRESSION:
1. Argumentative writing with claims and evidence
2. Informative writing to examine complex topics
3. Narrative writing with effective techniques
4. Research skills and source integration
5. Revision for organization and development
6. Editing for conventions
7. Using technology for writing and publishing

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders can write extended pieces with multiple paragraphs and develop sustained arguments. They benefit from mentor texts, clear criteria, and specific feedback. Writing connects to reading analysis.

COMMON CHALLENGES:
- Developing clear thesis/controlling idea
- Organizing ideas logically
- Integrating evidence smoothly
- Transitions between ideas
- Revising content (not just fixing errors)

INSTRUCTIONAL STRATEGIES:

Mentor Text Analysis:
Study published writing for craft. How does this author...? Notice, name, and try techniques.

Clear Expectations:
Use rubrics and anchor papers to clarify expectations. Students understand targets before writing.

Structured Prewriting:
Teach planning strategies: outlining, graphic organizers, freewriting. Plan before drafting.

Evidence Integration:
Teach how to introduce, cite, and explain evidence. Quote, paraphrase, and summarize appropriately.

Peer Review:
Structured peer feedback using criteria. Students learn to give and receive constructive feedback.

Revision Strategies:
Teach specific revision techniques: adding detail, reordering, strengthening word choice. Revision is re-vision.

Publication:
Publish finished pieces for authentic audiences. This motivates quality and completeness.

ASSESSMENT INDICATORS:
- Writes arguments with clear claims and evidence
- Writes informative texts examining topics
- Writes narratives with effective techniques
- Uses the writing process effectively
- Applies grade-level conventions

VOCABULARY TO DEVELOP:
argument, claim, evidence, counterclaim, thesis, topic sentence, transition, cite, paraphrase, revise, edit, audience, purpose, style',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Writing' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 8 READING UNITS
-- ============================================================================

-- Reading Literature (Grade 8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Reading Literature' AND grade_level = 8),
  'Reading Literature Teaching Guide',
  'Comprehensive pedagogical approach for reading literature in Grade 8',
  'READING LITERATURE - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
This unit develops advanced literary analysis, including understanding how dialogue propels action, comparing modern works to traditional themes and patterns, analyzing point of view effects like irony and suspense, and evaluating multiple interpretations of texts. Students engage with increasingly complex literature.

LEARNING PROGRESSION:
1. Analyzing how dialogue and pacing propel action
2. Comparing modern works to traditional texts
3. Understanding allusion and intertextuality
4. Analyzing dramatic irony and suspense
5. Comparing written works to film adaptations
6. Evaluating multiple interpretations
7. Theme development across genres

DEVELOPMENTAL CONSIDERATIONS:
Eighth graders can engage with sophisticated literary concepts and multiple interpretations. They benefit from examining how literature reflects and comments on human experience. Connect to their lives and current issues.

COMMON CHALLENGES:
- Missing subtle irony and satire
- Superficial adaptation comparisons (book vs movie)
- Difficulty recognizing allusions without background
- Seeing only one valid interpretation
- Connecting older texts to contemporary relevance

INSTRUCTIONAL STRATEGIES:

Dialogue Analysis:
Examine how dialogue reveals character, advances plot, creates tension. Read aloud and discuss effects.

Adaptation Study:
Compare book and film versions. What''s gained? Lost? Changed? Why might adaptations make changes?

Intertextual Connections:
Build allusion recognition through exposure to traditional texts. Connect classical and modern works.

Multiple Interpretations:
Present different critical perspectives. Is the interpretation supported by text? Can multiple readings be valid?

Author''s Craft Focus:
Analyze HOW authors achieve effects, not just WHAT happens. Craft-focused discussion and writing.

Seminar Discussions:
Socratic seminars where students lead discussion with text-based claims and questions.

Literary Analysis Writing:
Extended analytical writing about literature with sophisticated thesis and sustained argument.

ASSESSMENT INDICATORS:
- Analyzes how dialogue and pacing create effects
- Identifies and analyzes allusions
- Compares adaptations analytically
- Evaluates multiple interpretations with evidence
- Writes sophisticated literary analysis

VOCABULARY TO DEVELOP:
dialogue, pacing, allusion, dramatic irony, satire, adaptation, interpretation, perspective, craft, effect, intertextuality',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Reading Literature' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- HIGH SCHOOL READING UNITS (GRADES 9-12)
-- ============================================================================

-- Literary Analysis (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Literary Analysis' AND grade_level = 9),
  'Literary Analysis Teaching Guide',
  'Comprehensive pedagogical approach for literary analysis in Grade 9',
  'LITERARY ANALYSIS - ENGLISH 9 UNIT GUIDE

UNIT OVERVIEW:
This unit develops foundational high school literary analysis skills. Students analyze how authors develop themes through characterization, plot, and literary devices. They examine the impact of word choice, analyze structure, and engage with a variety of literary genres including poetry and drama.

LEARNING PROGRESSION:
1. Analyzing theme development across a work
2. Complex character analysis and motivation
3. Impact of literary devices on meaning
4. Point of view and its effects on narrative
5. Analyzing poetry: form, structure, and meaning
6. Analyzing drama: dialogue, stage directions, performance
7. Comparative literary analysis

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders transition to more rigorous literary analysis. They need explicit instruction in analytical reading and writing strategies while engaging with increasingly complex texts. Balance challenge with support.

COMMON CHALLENGES:
- Thesis statements that are too broad or obvious
- Analysis that summarizes rather than analyzes
- Difficulty with poetry''s compressed language
- Unfamiliar with dramatic conventions
- Limited literary vocabulary

INSTRUCTIONAL STRATEGIES:

Modeling Analysis:
Think aloud through analysis of passages. Make the invisible thinking visible before expecting independence.

Close Reading Protocols:
Use structured close reading (SOAPSTone, TPCASTT for poetry). Systematic approaches build skills.

Theme Tracking:
Track theme development through texts using graphic organizers. Show how theme emerges, not just what it is.

Poetry Approaches:
Demystify poetry. Read aloud, paraphrase, then analyze. Build comfort before analysis.

Drama in Action:
Read plays aloud, act scenes, discuss performance choices. Drama is meant to be performed.

Analytical Writing:
Teach analytical writing with clear thesis, embedded evidence, and explanation. Practice paragraph structure.

Literary Discussions:
Seminar-style discussions with text-based claims. Students learn to build on and challenge ideas.

ASSESSMENT INDICATORS:
- Analyzes how theme develops through the text
- Examines character development with textual evidence
- Explains effects of literary devices
- Analyzes poetry and drama effectively
- Writes analytical essays with clear thesis

VOCABULARY TO DEVELOP:
theme, characterization, motif, symbolism, imagery, diction, syntax, tone, mood, metaphor, irony, foreshadowing, allegory, analysis, thesis',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Literary Analysis' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Informational Text (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Informational Text' AND grade_level = 9),
  'Informational Text Teaching Guide',
  'Comprehensive pedagogical approach for informational text in Grade 9',
  'INFORMATIONAL TEXT - ENGLISH 9 UNIT GUIDE

UNIT OVERVIEW:
This unit develops critical reading of nonfiction, including analysis of seminal U.S. documents, evaluation of arguments, and understanding of rhetoric. Students learn to delineate and evaluate arguments, analyze author purpose, and synthesize information from multiple sources.

LEARNING PROGRESSION:
1. Analyzing seminal documents (Declaration, etc.)
2. Delineating and evaluating arguments
3. Analyzing rhetorical strategies (ethos, pathos, logos)
4. Understanding author purpose and perspective
5. Evaluating credibility of sources
6. Integrating and synthesizing multiple sources
7. Recognizing bias and propaganda

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders are developing critical thinking skills needed for citizenship. Connect to current events and civic engagement. Teach skepticism without cynicism - evaluate, don''t dismiss.

COMMON CHALLENGES:
- Taking texts at face value without critical analysis
- Difficulty with historical language in foundational documents
- Confusing facts with opinions
- Insufficient evaluation of source credibility
- Struggling to synthesize conflicting sources

INSTRUCTIONAL STRATEGIES:

Historical Context:
Provide context for historical documents. Why was this written? For whom? What was happening?

Rhetorical Triangle:
Teach ethos, pathos, logos systematically. Identify and analyze use in texts.

Argument Mapping:
Map arguments: claim, evidence, reasoning, counterarguments. Visualize argument structure.

Source Evaluation:
Apply evaluation criteria (authority, accuracy, bias, currency, purpose) to all sources.

Current Connections:
Connect historical documents and rhetorical techniques to contemporary issues and speeches.

Media Literacy:
Apply critical reading to news, social media, advertising. These are informational texts too.

Research Skills:
Develop research strategies: finding sources, evaluating credibility, taking notes, synthesizing.

ASSESSMENT INDICATORS:
- Analyzes foundational American documents
- Evaluates arguments and rhetoric
- Identifies ethos, pathos, logos
- Evaluates source credibility
- Synthesizes information from multiple sources

VOCABULARY TO DEVELOP:
rhetoric, ethos, pathos, logos, argument, claim, evidence, counterargument, credibility, bias, source, synthesize, seminal, foundational',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Informational Text' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- Writing (Grade 9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM units WHERE name = 'Writing' AND grade_level = 9),
  'Writing Teaching Guide',
  'Comprehensive pedagogical approach for teaching writing in Grade 9',
  'WRITING - ENGLISH 9 UNIT GUIDE

UNIT OVERVIEW:
This unit develops high school level writing skills across argumentative, informative, and narrative modes. Students learn to construct sustained arguments, write literary analysis essays, conduct research, and develop their unique voice and style. The writing process becomes more sophisticated.

LEARNING PROGRESSION:
1. Argumentative essays with valid reasoning
2. Literary analysis with textual evidence
3. Informative/explanatory writing
4. Narrative writing with effective techniques
5. Research papers with proper citation (MLA)
6. Writing process: planning, drafting, revising
7. Developing style and voice

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders need explicit instruction in essay structure while developing flexibility. They benefit from examining published writing as models. Time for extended writing projects supports development.

COMMON CHALLENGES:
- Weak thesis statements
- Dropped quotes (evidence without analysis)
- Transitions between paragraphs
- Integrating research without plagiarism
- Revising for content, not just errors

INSTRUCTIONAL STRATEGIES:

Thesis Development:
Teach thesis criteria: specific, arguable, significant. Practice refining thesis statements.

Evidence Integration:
ICE method: Introduce, Cite, Explain. Practice smooth integration of textual evidence.

Paragraph Development:
Teach paragraph structure with clear topic sentences and developed support. Quality over length.

Research Process:
Teach research as process: questioning, searching, evaluating, note-taking, synthesizing, citing.

MLA Format:
Teach citation and Works Cited. Use citation generators appropriately. Avoid plagiarism.

Peer Review:
Structured peer review with specific feedback protocols. Students learn from giving and receiving feedback.

Revision Strategies:
Teach substantive revision strategies. Use revision checklists and rubrics.

ASSESSMENT INDICATORS:
- Writes arguments with valid reasoning
- Writes literary analysis with evidence
- Conducts research and cites sources
- Uses writing process effectively
- Demonstrates developing style and voice

VOCABULARY TO DEVELOP:
thesis, claim, evidence, analysis, warrant, counterargument, concession, cite, paraphrase, plagiarism, MLA, Works Cited, draft, revise, edit',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Writing' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VERIFICATION QUERY
-- ============================================================================
SELECT
  'Reading unit prompts' as category,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'unit_global'
  AND subject_id = (SELECT id FROM subjects WHERE name = 'Reading');
