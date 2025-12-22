-- Grade 5 Reading Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 5 Reading/ELA topics
-- ============================================================================

-- ============================================================================
-- READING LITERATURE (10 topics)
-- ============================================================================

-- Quoting Text Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Quoting Text Evidence' AND grade_level_min = 5),
  'Quoting Text Evidence Topic Guide', 'Quoting accurately to support analysis',
  'QUOTING TEXT EVIDENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to locate relevant information in text
- Understanding of quotation marks
- Experience citing text evidence

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Quote text accurately word-for-word
2. Select relevant quotes that support analysis
3. Integrate quotes smoothly into writing
4. Cite page numbers or paragraph numbers appropriately

KEY CONCEPTS:
- Direct quotes are exact words from the text
- Quotes must be surrounded by quotation marks
- Good quotes are relevant and specific to the point
- Quotes should be integrated into sentences, not dropped in
- Always cite the source (page, paragraph, or line number)
- Use ellipses (...) when omitting words within a quote

COMMON MISCONCEPTIONS:
- Changing words in quotes
- Using quotes that are too long
- Dropping quotes without introduction or explanation
- Forgetting quotation marks or citations
- Selecting irrelevant quotes

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "When we quote, we borrow the author''s exact words to prove our point.
   It''s like bringing a witness to testify!"

2. DIRECT INSTRUCTION (10 minutes):
   Model selecting relevant quotes from text
   Demonstrate copying quotes exactly
   Show proper quotation mark placement
   Teach integrating quotes: "According to the text,..." "The author states..."
   Model citing with page or paragraph numbers
   Explain when to use ellipses or [brackets]

3. GUIDED PRACTICE (12 minutes):
   Read passage and identify key points
   Find quotes that support each point
   Practice writing sentences that integrate quotes
   Check quotes for accuracy
   Add proper citations

4. INDEPENDENT PRACTICE (9 minutes):
   Students find quotes for given analysis points
   Write sentences integrating quotes correctly
   Peer-check for accuracy and proper punctuation
   Revise quote integration for smoothness

DIFFERENTIATION:
For Struggling Learners:
- Provide sentence frames for quote integration
- Use shorter texts with clearly marked paragraphs
- Highlight potential quotes before students select
- Practice orally before written work

For Advanced Learners:
- Use longer, more complex quotes
- Practice paraphrasing vs. direct quoting
- Analyze when quotes are more effective than paraphrase
- Explore block quotations for longer quotes

ASSESSMENT INDICATORS:
- Quotes text accurately without changes
- Selects relevant quotes that support points
- Integrates quotes smoothly into sentences
- Uses quotation marks and citations correctly', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quoting Text Evidence' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Theme Determination
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme Determination' AND grade_level_min = 5),
  'Theme Determination Topic Guide', 'Determining theme from characters, setting, and plot',
  'THEME DETERMINATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Deep understanding of literary elements
- Ability to analyze character development
- Experience with theme in earlier grades

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Determine complex themes by analyzing multiple story elements
2. Explain how characters, setting, and plot work together to reveal theme
3. Distinguish between universal themes and surface-level topics
4. Support theme analysis with specific, integrated evidence

KEY CONCEPTS:
- Theme emerges from the interaction of all story elements
- Characters'' growth and choices often embody theme
- Setting can reinforce or contrast with theme
- Plot conflicts and resolutions reveal theme
- Strong themes are universal and applicable beyond the story
- A single story may have multiple related themes
- Theme is discovered through analysis, not stated by authors

COMMON MISCONCEPTIONS:
- Looking for theme only in the ending
- Stating theme as a single word instead of a complete idea
- Confusing theme with moral or lesson
- Believing theme must be positive or uplifting
- Not recognizing how all elements contribute to theme

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Present scenario: "A character loses everything but learns to value what truly matters."
   "What theme emerges? How do characters, events, and lessons reveal it?"

2. DIRECT INSTRUCTION (12 minutes):
   Model comprehensive theme analysis process
   Show analyzing character arcs for theme clues
   Demonstrate how setting influences theme
   Explain examining plot structure for theme patterns
   Teach synthesizing evidence from multiple elements
   Model articulating sophisticated theme statements

3. GUIDED PRACTICE (14 minutes):
   Read rich narrative together
   Track character development, key events, and setting details
   Use theme analysis matrix (characters/plot/setting → theme)
   Synthesize findings into theme statement
   Support with integrated evidence from all elements

4. INDEPENDENT PRACTICE (10 minutes):
   Analyze theme in new story
   Complete comprehensive theme analysis
   Write analytical paragraph with integrated evidence
   Peer-review theme analyses

DIFFERENTIATION:
For Struggling Learners:
- Use stories with clearer, single themes
- Provide structured theme analysis guides
- Work with partners or small groups
- Focus on one story element at a time

For Advanced Learners:
- Analyze complex, ambiguous themes
- Compare themes across multiple texts
- Explore how authors develop themes subtly
- Analyze conflicting or evolving themes within a story

ASSESSMENT INDICATORS:
- Determines sophisticated, universal themes
- Analyzes how all story elements contribute to theme
- Articulates theme as complete, nuanced statement
- Supports theme with integrated evidence from entire text', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme Determination' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Character Comparison
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Comparison' AND grade_level_min = 5),
  'Character Comparison Topic Guide', 'Comparing and contrasting characters across texts',
  'CHARACTER COMPARISON - TOPIC TEACHING GUIDE

PREREQUISITES:
- Strong character analysis skills
- Ability to read and comprehend multiple texts
- Experience with compare/contrast writing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Compare characters within one text and across different texts
2. Analyze similarities and differences in character traits, motivations, and development
3. Use comparison to deepen understanding of each character
4. Organize comparison analysis effectively in writing

KEY CONCEPTS:
- Comparing characters reveals deeper insights about each
- Characters can be compared by traits, motivations, challenges, growth, or choices
- Similarities and differences can both be significant
- Cross-text comparisons show universal character types and themes
- Effective comparison requires specific evidence from both sources
- Comparison can follow point-by-point or subject-by-subject organization

COMMON MISCONCEPTIONS:
- Simply listing traits without analyzing significance
- Comparing only superficial characteristics
- Not providing equal attention to both characters
- Forgetting to explain why comparison matters
- Comparing characters who have nothing meaningful in common

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Display two similar but different characters from familiar stories
   "Both are heroes, but what makes them different? Why does it matter?"

2. DIRECT INSTRUCTION (12 minutes):
   Model selecting meaningful comparison points
   Demonstrate analyzing similarities and differences
   Show gathering evidence for both characters
   Teach organizing comparisons (Venn diagrams, charts)
   Model writing comparison with integrated evidence
   Explain drawing insights from comparison

3. GUIDED PRACTICE (14 minutes):
   Compare two characters from class readings
   Complete comparison chart together
   Identify significant similarities and differences
   Discuss insights gained from comparison
   Draft comparison paragraph as class

4. INDEPENDENT PRACTICE (11 minutes):
   Students select characters to compare
   Complete comparison analysis
   Write organized comparison paragraph or essay
   Include specific evidence from both sources

DIFFERENTIATION:
For Struggling Learners:
- Compare very different characters (easier to contrast)
- Provide structured comparison templates
- Use characters from same text before cross-text comparison
- Focus on 2-3 comparison points

For Advanced Learners:
- Compare subtle, complex characters
- Analyze characters across three or more texts
- Explore how authors create similar characters differently
- Draw sophisticated insights about human nature from comparisons

ASSESSMENT INDICATORS:
- Selects meaningful points of comparison
- Analyzes both similarities and differences
- Supports comparison with specific evidence
- Draws insights from character comparison', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Comparison' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT (10 topics)
-- ============================================================================

-- Accurate Quotation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Accurate Quotation' AND grade_level_min = 5),
  'Accurate Quotation Topic Guide', 'Quoting accurately when explaining text',
  'ACCURATE QUOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of informational text structures
- Ability to identify key information
- Knowledge of quotation punctuation

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Quote informational texts accurately and precisely
2. Select quotes that effectively support explanations
3. Integrate quotes into expository writing smoothly
4. Paraphrase appropriately when quotes aren''t necessary

KEY CONCEPTS:
- Quotes in informational writing prove points and add credibility
- Select quotes that contain key facts, expert opinions, or precise data
- Quotes must be word-for-word accurate
- Sometimes paraphrasing is more effective than quoting
- Quotes need context and explanation
- Always credit sources properly

COMMON MISCONCEPTIONS:
- Overusing quotes instead of paraphrasing
- Quoting common knowledge that doesn''t need citation
- Failing to explain how quotes support points
- Using quotes that are too long
- Altering quotes to fit sentences

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "Scientists use data to prove theories. Writers use quotes to prove points.
   Let''s learn to quote like researchers!"

2. DIRECT INSTRUCTION (10 minutes):
   Model deciding when to quote vs. paraphrase
   Demonstrate selecting strong, relevant quotes
   Show integrating quotes into explanatory writing
   Teach balancing quotes with own analysis
   Model proper citation in informational writing

3. GUIDED PRACTICE (13 minutes):
   Read informational article together
   Identify quotable information
   Decide which information to quote vs. paraphrase
   Practice integrating quotes into explanations
   Add appropriate citations

4. INDEPENDENT PRACTICE (10 minutes):
   Students analyze new informational text
   Select effective quotes
   Write explanatory paragraphs with integrated quotes
   Balance quotes with paraphrase and analysis

DIFFERENTIATION:
For Struggling Learners:
- Mark quotable sections before students select
- Provide quote integration sentence frames
- Focus on shorter, simpler quotes
- Practice with partners

For Advanced Learners:
- Analyze effectiveness of quote vs. paraphrase choices
- Work with complex technical or scientific texts
- Integrate multiple sources
- Evaluate source credibility

ASSESSMENT INDICATORS:
- Quotes accurately without changes
- Selects effective, relevant quotes
- Integrates quotes smoothly into writing
- Balances quotes with paraphrase and analysis', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Accurate Quotation' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Summarizing Objectively
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Summarizing Objectively' AND grade_level_min = 5),
  'Summarizing Objectively Topic Guide', 'Summarizing without opinion or interpretation',
  'SUMMARIZING OBJECTIVELY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Strong summarizing skills
- Understanding of main idea and details
- Ability to paraphrase

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Write objective summaries without personal opinions
2. Distinguish between factual summary and interpretation
3. Include only the most important information
4. Maintain the author''s meaning and perspective

KEY CONCEPTS:
- Objective summaries present facts without opinions
- Summaries include main ideas and key details only
- Objective means unbiased—no personal feelings or judgments
- Summaries should represent the author''s ideas fairly
- Use neutral language, avoiding loaded words
- Keep summaries brief—usually 1/4 to 1/3 original length

COMMON MISCONCEPTIONS:
- Including personal reactions or opinions
- Adding interpretations as if they were facts
- Using emotional or biased language
- Including minor details
- Copying sentences verbatim

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Show two summaries of same article—one objective, one with opinions
   "Which summary just tells what the author said? That''s objective!"

2. DIRECT INSTRUCTION (11 minutes):
   Define objective vs. subjective language
   Model identifying main ideas and key details
   Demonstrate writing summary without opinions
   Show maintaining author''s perspective
   Teach checking for objectivity: Do I add my thoughts? Use neutral words?

3. GUIDED PRACTICE (14 minutes):
   Read informational text together
   Identify main ideas and crucial details
   Write collaborative summary
   Check for objectivity—remove opinions and interpretations
   Revise for neutral language

4. INDEPENDENT PRACTICE (11 minutes):
   Students read new informational text
   Write objective summaries independently
   Peer-review for objectivity
   Revise to remove any subjective elements

DIFFERENTIATION:
For Struggling Learners:
- Provide objectivity checklist
- Use shorter texts
- Work with partners to identify opinions
- Practice oral summaries first

For Advanced Learners:
- Summarize complex, multi-faceted texts
- Analyze subtle bias in language
- Summarize texts on controversial topics objectively
- Compare objective and subjective versions

ASSESSMENT INDICATORS:
- Writes summaries without personal opinions
- Uses neutral, unbiased language
- Includes only main ideas and key details
- Accurately represents author''s perspective', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Summarizing Objectively' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VOCABULARY AND WORD STUDY (10 topics)
-- ============================================================================

-- Greek Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Greek Roots' AND grade_level_min = 5),
  'Greek Roots Topic Guide', 'Learning roots like graph, photo, tele, bio',
  'GREEK ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of word roots concept
- Experience with Latin roots
- Ability to break words into parts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify common Greek roots in English words
2. Use root meanings to determine unfamiliar word meanings
3. Build extensive word families from single roots
4. Apply Greek root knowledge to academic and technical vocabulary

KEY CONCEPTS:
- Greek roots are especially common in science and technical terms
- Common Greek roots: graph (write), photo (light), tele (far), bio (life), meter (measure)
- Greek roots often combine with other Greek roots
- Understanding Greek roots unlocks thousands of English words
- Many Greek roots relate to scientific concepts
- Greek roots can appear at the beginning, middle, or end of words

COMMON MISCONCEPTIONS:
- Thinking all roots mean exactly one thing
- Not considering context when applying root meanings
- Confusing Greek and Latin roots
- Assuming every similar spelling is the same root

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Write: telephone, telescope, television, telegram
   "All start with ''tele'' meaning ''far''! Greek roots are the building blocks of big words!"

2. DIRECT INSTRUCTION (12 minutes):
   Teach 5-6 high-frequency Greek roots with meanings
   Show how roots combine: biography (bio + graph), photograph (photo + graph)
   Model using root knowledge + context for meanings
   Demonstrate building word families
   Connect roots to content area vocabulary

3. GUIDED PRACTICE (13 minutes):
   Sort words by Greek roots
   Match roots to meanings
   Build words by combining roots
   Determine word meanings using root knowledge
   Find Greek root words in science and social studies texts

4. INDEPENDENT PRACTICE (11 minutes):
   Complete Greek root word maps
   Use root knowledge to define new words
   Find and categorize Greek root words in reading
   Create illustrated root posters with word families

DIFFERENTIATION:
For Struggling Learners:
- Focus on 3-4 very common roots
- Provide visual root reference charts
- Use familiar words containing roots
- Work with partners

For Advanced Learners:
- Learn extensive set of Greek roots
- Research word etymologies
- Compare Greek and Latin roots
- Explore how English borrowed from Greek
- Create Greek root vocabulary games

ASSESSMENT INDICATORS:
- Identifies common Greek roots in words
- Uses root meanings to determine unfamiliar words
- Builds word families from roots
- Applies Greek root knowledge to academic vocabulary', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Greek Roots' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Figurative Language
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 5),
  'Figurative Language Topic Guide', 'Interpreting similes, metaphors, and personification',
  'FIGURATIVE LANGUAGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of literal vs. figurative meaning
- Experience with basic similes and metaphors
- Ability to visualize and interpret

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify and interpret similes, metaphors, and personification
2. Explain how figurative language creates meaning and mood
3. Analyze author''s purpose in using specific figurative language
4. Use figurative language effectively in own writing

KEY CONCEPTS:
- Figurative language says one thing but means another
- Similes compare using "like" or "as" (her smile was like sunshine)
- Metaphors compare without "like" or "as" (her smile was sunshine)
- Personification gives human qualities to non-human things
- Figurative language creates vivid images and deeper meaning
- Authors choose figurative language carefully for effect

COMMON MISCONCEPTIONS:
- Interpreting figurative language literally
- Thinking all comparisons are similes
- Not understanding purpose of figurative language
- Confusing simile and metaphor
- Thinking personification is just description

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   "She was as brave as a lion."
   "Was she actually a lion? No! But what picture does this create?
   That''s the magic of figurative language!"

2. DIRECT INSTRUCTION (12 minutes):
   Define and provide examples of simile, metaphor, personification
   Model identifying figurative language in text
   Demonstrate interpreting meaning and effect
   Show how figurative language creates imagery and emotion
   Explain analyzing author''s purpose for using it

3. GUIDED PRACTICE (14 minutes):
   Find figurative language in literary passages together
   Identify type (simile, metaphor, personification)
   Interpret meaning and effect
   Discuss why author chose this figurative language
   Create original examples together

4. INDEPENDENT PRACTICE (11 minutes):
   Students find figurative language in texts
   Analyze meaning and effect
   Write original examples of each type
   Revise writing to include effective figurative language

DIFFERENTIATION:
For Struggling Learners:
- Provide clear visual examples
- Focus on one type at a time
- Use obvious, clear figurative language
- Illustrate figurative language meanings

For Advanced Learners:
- Explore additional types (hyperbole, idioms, allusions)
- Analyze complex, subtle figurative language
- Compare how different authors use figurative language
- Analyze how figurative language develops theme

ASSESSMENT INDICATORS:
- Correctly identifies similes, metaphors, personification
- Interprets figurative meanings accurately
- Explains how figurative language creates effects
- Uses figurative language effectively in writing', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING (10 topics)
-- ============================================================================

-- Narrative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 5),
  'Narrative Writing Topic Guide', 'Writing narratives with pacing, dialogue, and description',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Strong understanding of narrative elements
- Ability to write organized multi-paragraph texts
- Experience with dialogue and descriptive language

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Develop well-paced narratives with engaging plots
2. Use dialogue, description, and pacing to develop experiences and events
3. Create distinct character voices and perspectives
4. Use transitional words, phrases, and clauses to sequence events

KEY CONCEPTS:
- Effective narratives carefully control pacing—speeding up or slowing down for effect
- Dialogue reveals character and advances plot
- Descriptive details create vivid settings and atmosphere
- Strong narratives use literary techniques: foreshadowing, flashback, suspense
- Varied sentence structure creates rhythm and flow
- Show, don''t tell—use specific actions and details rather than statements
- Narrative voice should be consistent and engaging

COMMON MISCONCEPTIONS:
- Telling what happened without showing scenes
- Pacing everything equally instead of slowing important moments
- Using dialogue that sounds unnatural or serves no purpose
- Including unnecessary description that slows the story
- Not establishing clear point of view

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Read two versions of same scene—one with pacing/detail, one without
   "Which version pulled you in? Why? Let''s write like that!"

2. DIRECT INSTRUCTION (14 minutes):
   Model planning narrative with attention to pacing
   Demonstrate developing scenes vs. summarizing events
   Show crafting natural, purposeful dialogue
   Model using specific, sensory details strategically
   Teach narrative techniques (foreshadowing, suspense)
   Demonstrate varying sentence structure for effect

3. GUIDED PRACTICE (16 minutes):
   Plan narrative outline together focusing on pacing
   Write opening scene as class with dialogue and detail
   Practice writing summary vs. scene
   Revise for stronger verbs and precise details
   Discuss pacing decisions

4. INDEPENDENT PRACTICE (16 minutes):
   Students plan narratives with pacing map
   Draft narratives using techniques learned
   Include effective dialogue and description
   Peer review for narrative techniques
   Revise for improved pacing and voice

DIFFERENTIATION:
For Struggling Learners:
- Provide detailed planning templates
- Focus on one technique at a time
- Use mentor texts for modeling
- Allow time for multiple drafts with feedback

For Advanced Learners:
- Experiment with complex narrative structures
- Develop multiple plot lines or perspectives
- Study and emulate sophisticated literary techniques
- Write extended narratives with multiple chapters
- Experiment with narrative voice and style

ASSESSMENT INDICATORS:
- Controls pacing effectively for story effect
- Uses dialogue that sounds natural and serves purpose
- Includes precise, sensory descriptive details
- Employs narrative techniques to engage readers', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Argumentative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Argumentative Writing' AND grade_level_min = 5),
  'Argumentative Writing Topic Guide', 'Writing arguments with claims and evidence',
  'ARGUMENTATIVE WRITING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of opinions vs. facts
- Ability to identify evidence in texts
- Experience with opinion writing

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State clear, arguable claims
2. Support claims with logical reasons and relevant evidence
3. Address opposing viewpoints (counterarguments)
4. Organize arguments logically with strong conclusions

KEY CONCEPTS:
- Arguments try to convince readers to think or act a certain way
- Claims are arguable positions (people could disagree)
- Every claim needs support: reasons (why) and evidence (proof)
- Evidence includes facts, statistics, examples, expert quotes
- Good arguments address counterarguments (what opponents might say)
- Logical organization helps persuade readers
- Conclusion should reinforce claim and call to action

COMMON MISCONCEPTIONS:
- Confusing facts with opinions
- Making claims that aren''t arguable ("Puppies are cute")
- Supporting opinions with more opinions instead of evidence
- Ignoring opposing viewpoints
- Using emotional language instead of logical reasoning

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Present debate topic: "Should students have homework?"
   "What''s your position? Now... how will you convince others? That''s argumentative writing!"

2. DIRECT INSTRUCTION (14 minutes):
   Model developing an arguable claim
   Demonstrate gathering reasons and evidence
   Show organizing argument logically
   Teach addressing counterarguments
   Model distinguishing emotional appeals from logical reasoning
   Demonstrate writing strong conclusions

3. GUIDED PRACTICE (16 minutes):
   Choose argumentative topic together
   Develop class claim
   Brainstorm reasons and evidence
   Organize argument structure
   Draft introduction with claim
   Write body paragraph with evidence
   Address a counterargument

4. INDEPENDENT PRACTICE (15 minutes):
   Students select topics and develop claims
   Gather reasons and evidence
   Organize arguments logically
   Draft argumentative essays
   Include counterarguments
   Peer review for logical reasoning

DIFFERENTIATION:
For Struggling Learners:
- Provide argument planning templates
- Start with familiar, simple topics
- Supply evidence sources
- Focus on claim and one reason initially

For Advanced Learners:
- Tackle complex, nuanced topics
- Research and evaluate multiple sources
- Develop sophisticated counterarguments
- Analyze logical fallacies
- Write extended arguments with multiple claims

ASSESSMENT INDICATORS:
- States clear, arguable claims
- Supports with logical reasons and relevant evidence
- Addresses counterarguments effectively
- Organizes arguments logically and persuasively', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Argumentative Writing' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRAMMAR AND CONVENTIONS (10 topics)
-- ============================================================================

-- Perfect Verb Tenses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Perfect Verb Tenses' AND grade_level_min = 5),
  'Perfect Verb Tenses Topic Guide', 'Using present, past, and future perfect tenses',
  'PERFECT VERB TENSES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Mastery of simple past, present, future tenses
- Understanding of helping verbs
- Knowledge of past participles

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Form present perfect, past perfect, and future perfect tenses
2. Understand when to use each perfect tense
3. Use perfect tenses correctly in speaking and writing
4. Recognize perfect tenses in reading

KEY CONCEPTS:
- Perfect tenses show completed actions in relation to another time
- Present perfect: have/has + past participle (I have finished)
- Past perfect: had + past participle (I had finished)
- Future perfect: will have + past participle (I will have finished)
- Present perfect connects past to present
- Past perfect shows which past action came first
- Future perfect shows what will be complete by a future time

COMMON MISCONCEPTIONS:
- Using simple past instead of present perfect
- Confusing perfect tenses with progressive tenses
- Not understanding when perfect tenses are needed
- Using incorrect past participle forms

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   "I ate. I have eaten. I had eaten. I will have eaten."
   "All past, but with different meanings! These are perfect tenses!"

2. DIRECT INSTRUCTION (11 minutes):
   Teach formation of each perfect tense
   Explain when to use each tense with timelines
   Model forming past participles (regular and irregular)
   Demonstrate choosing correct perfect tense for context
   Show how perfect tenses create precise meaning

3. GUIDED PRACTICE (12 minutes):
   Practice forming perfect tenses together
   Complete sentences with correct perfect tense
   Convert simple tenses to perfect tenses
   Identify perfect tenses in sentences
   Discuss why perfect tense is appropriate

4. INDEPENDENT PRACTICE (10 minutes):
   Complete perfect tense exercises
   Write sentences using each perfect tense
   Identify and label perfect tenses in reading
   Correct verb tense errors

DIFFERENTIATION:
For Struggling Learners:
- Focus on present perfect before others
- Provide verb tense timelines
- Use regular past participles before irregular
- Practice orally before written work

For Advanced Learners:
- Compare perfect and perfect progressive tenses
- Analyze perfect tense usage in literature
- Use perfect tenses in sophisticated writing
- Explore subtle meanings created by tense choices

ASSESSMENT INDICATORS:
- Correctly forms all three perfect tenses
- Chooses appropriate perfect tense for context
- Uses perfect tenses accurately in writing
- Recognizes perfect tenses in reading', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perfect Verb Tenses' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SPEAKING AND LISTENING (8 topics)
-- ============================================================================

-- Collaborative Discussions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Collaborative Discussions' AND grade_level_min = 5),
  'Collaborative Discussions Topic Guide', 'Participating effectively in conversations',
  'COLLABORATIVE DISCUSSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic conversation skills
- Ability to listen actively
- Experience with class discussions

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Come to discussions prepared with evidence and questions
2. Follow discussion rules and build on others'' ideas
3. Ask questions to clarify and deepen understanding
4. Express own ideas clearly and support with reasoning

KEY CONCEPTS:
- Collaborative discussions involve everyone contributing
- Preparation improves discussion quality
- Good discussants listen actively and respond to others
- Building on ideas means adding to what others say, not just waiting your turn
- Questions deepen discussion
- Discussion norms (rules) help everyone participate
- Respectful disagreement strengthens discussions

COMMON MISCONCEPTIONS:
- Thinking discussions are debates to win
- Waiting for your turn without really listening
- Dominating without letting others speak
- Not preparing beforehand
- Giving up when you disagree

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Show video clip of effective discussion vs. poor discussion
   "What made one work better? Let''s learn discussion skills!"

2. DIRECT INSTRUCTION (10 minutes):
   Teach discussion preparation strategies
   Model active listening with note-taking
   Demonstrate building on others'' ideas
   Show how to pose clarifying questions
   Teach respectful disagreement phrases
   Explain discussion roles (if using)

3. GUIDED PRACTICE (16 minutes):
   Practice discussion preparation together
   Model discussion with teacher leading
   Students participate in structured discussion
   Use sentence frames for building on ideas
   Debrief: what worked? what to improve?

4. INDEPENDENT PRACTICE (14 minutes):
   Students prepare for topic independently
   Participate in small group discussions
   Practice all discussion skills
   Self-assess using discussion rubric
   Reflect on participation

DIFFERENTIATION:
For Struggling Learners:
- Provide discussion preparation templates
- Assign specific roles with clear expectations
- Use sentence starters for participation
- Start with partner discussions before groups

For Advanced Learners:
- Lead or facilitate discussions
- Handle complex, nuanced topics
- Analyze discussion dynamics
- Synthesize multiple perspectives

ASSESSMENT INDICATORS:
- Comes prepared with relevant evidence
- Follows discussion norms consistently
- Builds on and responds to others'' ideas
- Asks questions that deepen discussion', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Collaborative Discussions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- Note: This file contains representative prompts for Grade 5 Reading/ELA.
-- Additional prompts for remaining topics follow the same comprehensive format
-- with grade-appropriate content, teaching sequences, and differentiation.
-- ============================================================================
