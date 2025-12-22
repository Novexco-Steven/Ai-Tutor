-- Grade 4 Reading Topic Prompts
-- Comprehensive teaching guides for Grade 4 Reading/ELA topics
-- Each prompt provides 500+ words of pedagogical guidance

-- ============================================================================
-- READING LITERATURE UNIT
-- ============================================================================

-- Theme Development
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme Development' AND grade_level_min = 4),
  'Theme Development (Grade 4) Topic Guide',
  'Teaching students to determine theme and summarize text using details',
  'THEME DEVELOPMENT - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand the concept of theme from Grade 3. They should be able to distinguish between topic and theme. Experience identifying character traits and story events supports theme analysis. Students should be reading grade-level chapter books.

LEARNING OBJECTIVES:
- Determine the theme of a story, drama, or poem from details
- Summarize the text including theme
- Trace how themes develop through characters, setting, and events
- Support theme interpretations with specific text evidence
- Recognize that complex texts may have multiple themes

KEY CONCEPTS:
1) Theme is developed through what characters experience, learn, and how they change
2) Themes emerge from patterns across the story - repeated ideas, character realizations, consequences of actions
3) Summarizing includes theme, not just plot events
4) Readers infer themes; they are rarely stated directly
5) Different readers may interpret themes differently when supported by evidence

COMMON MISCONCEPTIONS:
- Stating plot instead of theme
- Identifying theme without text evidence
- Thinking there is only one "correct" theme
- Confusing the subject/topic with the thematic message
- Missing theme development because focus is on surface events

TEACHING SEQUENCE:
Build from character analysis to theme. "What does the character learn? What changes about them? What does this suggest about life or people in general?" Character growth often reveals theme.

Track thematic development across the text:
- Beginning: What ideas are introduced?
- Middle: How are these ideas tested or developed?
- End: What has the character/reader learned?

Teach summarizing with theme. A good summary includes the key plot events AND what the story teaches. "This story is about [plot summary] and shows that [theme]."

Practice with multiple texts on similar themes. Compare how different stories develop the theme of "courage" or "friendship." Notice different approaches to similar messages.

DIFFERENTIATION:
For struggling learners: Use shorter texts with clear themes. Provide theme statement starters. Focus on character change as the gateway to theme. Work in discussion groups.

For advanced learners: Analyze texts with complex or ambiguous themes. Explore how literary elements develop theme. Compare thematic treatments across authors and genres. Write theme analysis essays.

VOCABULARY:
Theme, develop, emerge, pattern, character, change, summarize, evidence, interpret, message, lesson

CONNECTION TO FUTURE LEARNING:
Theme analysis is central to literary study. Students will analyze theme in novels, plays, and poetry with increasing sophistication. Understanding thematic development supports analytical writing. Theme connects literature to life and human experience.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme Development' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Character and Setting
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character and Setting' AND grade_level_min = 4),
  'Character and Setting (Grade 4) Topic Guide',
  'Teaching students to describe characters, settings, and events in depth',
  'CHARACTER AND SETTING - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should identify characters and their traits from previous grades. They should understand setting as time and place. Experience with how elements contribute to story is developing. Students should be reading longer, more complex texts.

LEARNING OBJECTIVES:
- Describe characters in depth using thoughts, words, actions, and interactions
- Analyze how setting affects characters and events
- Describe events using specific details from the text
- Explain relationships between story elements
- Quote accurately from the text to support descriptions

KEY CONCEPTS:
1) Characters are revealed through multiple dimensions: what they think, say, do, and how others respond to them
2) Setting is more than backdrop - it affects mood, creates challenges, and influences characters
3) Events are shaped by character decisions and setting constraints
4) Story elements interact with and affect each other
5) Accurate text evidence supports deep analysis

COMMON MISCONCEPTIONS:
- Surface-level character descriptions (physical only)
- Treating setting as merely decorative
- Describing events without analyzing significance
- Making claims without text support
- Not seeing connections between characters, setting, and plot

TEACHING SEQUENCE:
Develop multi-dimensional character analysis:
- Direct: What does the author tell us directly?
- Thoughts: What does the character think about?
- Words: What does the character say and how?
- Actions: What does the character do?
- Interactions: How do others respond to them?

Analyze setting as dynamic element:
- Time period: How does this affect what is possible?
- Place: What challenges or opportunities does it create?
- Mood: How does setting establish atmosphere?
- Impact: How does setting affect characters and events?

Practice using precise text evidence. Quote accurately. Introduce the quote. Explain its significance. "On page 47, the author writes... This shows that..."

DIFFERENTIATION:
For struggling learners: Analyze one element at a time. Use graphic organizers for each dimension. Provide evidence-hunting practice. Work with familiar texts.

For advanced learners: Analyze symbolic settings. Explore complex character motivations. Examine how authors develop characters differently. Write analytical paragraphs with integrated evidence.

VOCABULARY:
Character, setting, event, describe, analyze, evidence, quote, interaction, dimension, affect, influence

CONNECTION TO FUTURE LEARNING:
Deep analysis of story elements is foundational for literary interpretation. Students will explore how authors craft characters and settings purposefully. These skills support analytical writing and close reading. Understanding story elements enhances enjoyment and interpretation of all narratives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character and Setting' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- First vs Third Person
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'First vs Third Person' AND grade_level_min = 4),
  'First vs Third Person (Grade 4) Topic Guide',
  'Teaching students to compare first and third person points of view',
  'FIRST VS THIRD PERSON NARRATION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should identify first and third person narration from Grade 3. They should understand that narrators have perspectives. Familiarity with how point of view affects reader knowledge is developing. Students should be reading texts with varied narration.

LEARNING OBJECTIVES:
- Compare and contrast first-person and third-person points of view
- Analyze how point of view affects what readers know
- Explain advantages and limitations of each perspective
- Describe the differences in the experience of reading each type
- Consider why authors choose particular points of view

KEY CONCEPTS:
1) First person (I, we): narrator is a character; limited to their knowledge and perspective
2) Third person (he, she, they): narrator is outside the story; can be limited or omniscient
3) Point of view determines what information readers receive
4) Different perspectives create different relationships between reader and characters
5) Authors choose point of view deliberately to achieve effects

COMMON MISCONCEPTIONS:
- Thinking first person is always more personal or better
- Not recognizing limited third person vs. omniscient
- Confusing point of view with opinion or perspective on issues
- Missing how point of view affects reliability and knowledge
- Not considering why authors choose their perspective

TEACHING SEQUENCE:
Compare the same story told differently. Take a familiar story and contrast: How would it be different if told by a different character or by an outside narrator? What would we know that we do not know now?

Analyze first-person advantages and limitations:
- Advantage: intimate access to one character''s thoughts
- Limitation: we only know what the narrator knows and thinks

Analyze third-person advantages and limitations:
- Limited: focused on one character but from outside
- Omniscient: can know any character''s thoughts, see anywhere

Study author''s choices. Why did this author choose first person? How would this story be different with a different narrative perspective?

DIFFERENTIATION:
For struggling learners: Focus on distinguishing first from third person. Use clear examples. Create comparison charts. Read the same scene told two ways.

For advanced learners: Explore unreliable narrators. Analyze multiple narrators within one text. Consider how perspective shapes theme. Experiment with writing from different perspectives.

VOCABULARY:
First person, third person, narrator, perspective, limited, omniscient, point of view, knowledge, character, author choice

CONNECTION TO FUTURE LEARNING:
Understanding narration is crucial for sophisticated literary analysis. Students will explore unreliable narrators, multiple perspectives, and author''s craft. Narrative technique analysis supports creative writing. These concepts apply to film and other narrative forms.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'First vs Third Person' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Comparing Themes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Themes' AND grade_level_min = 4),
  'Comparing Themes (Grade 4) Topic Guide',
  'Teaching students to compare themes across different texts',
  'COMPARING THEMES - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should be able to identify themes in individual texts. They should have experience with comparison skills. Understanding how themes develop through story elements is important. Students should be reading multiple texts that can be compared.

LEARNING OBJECTIVES:
- Compare the treatment of similar themes across different texts
- Analyze how different authors develop the same theme
- Identify universal themes that appear across genres and cultures
- Use text evidence from multiple sources to support comparisons
- Explain why themes recur across literature

KEY CONCEPTS:
1) Universal themes (love, courage, growing up, good vs. evil) appear across many texts
2) Different authors explore the same theme in unique ways
3) Genre, setting, and character affect how themes are developed
4) Comparing themes deepens understanding of both the theme and individual texts
5) Patterns across texts reveal what humans find meaningful

COMMON MISCONCEPTIONS:
- Thinking similar themes mean similar stories
- Surface-level comparison without analyzing development
- Not providing evidence from both texts
- Missing thematic connections due to surface differences
- Assuming themes must be identically stated to be compared

TEACHING SEQUENCE:
Select texts with related themes. Pair texts intentionally: same theme, different genres; same theme, different cultures; same theme, different time periods. Make thematic connections explicit.

Analyze theme development comparatively:
- How does each text introduce the theme?
- What events/characters develop the theme?
- What message emerges about the theme?
- How are the approaches similar and different?

Use comparison graphic organizers. Two-column charts, Venn diagrams, or synthesis frames help organize thinking across texts. Track evidence from each source.

Discuss why themes recur. What does it mean that stories across time and cultures explore similar themes? This connects literature to human experience.

DIFFERENTIATION:
For struggling learners: Compare very similar texts first. Provide theme as a given and focus on comparison. Use structured comparison templates. Work in discussion groups.

For advanced learners: Compare across genres and media. Analyze cultural influences on theme treatment. Write comparative essays. Explore why certain themes resonate universally.

VOCABULARY:
Theme, compare, contrast, universal, develop, treatment, genre, culture, evidence, pattern, similar, different

CONNECTION TO FUTURE LEARNING:
Comparative theme analysis is central to literary study. Students will make intertextual connections across increasingly complex works. Understanding universal themes connects literature to life. Comparative skills support synthesis and analysis in all subjects.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Themes' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT UNIT
-- ============================================================================

-- Explaining Historical Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Explaining Historical Events' AND grade_level_min = 4),
  'Explaining Historical Events (Grade 4) Topic Guide',
  'Teaching students to explain events and concepts in historical texts',
  'EXPLAINING HISTORICAL EVENTS - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand cause and effect relationships. They should have experience with informational text comprehension. Basic knowledge of how to read historical texts is developing. Students should understand chronological sequence.

LEARNING OBJECTIVES:
- Explain events, procedures, and concepts in historical texts
- Identify causes and effects of historical events
- Use specific information from text to support explanations
- Connect events to broader historical context
- Explain what happened, why, and what resulted

KEY CONCEPTS:
1) Historical events have causes (what led to them) and effects (what resulted)
2) Understanding context helps explain why events occurred
3) Multiple factors often contribute to historical events
4) Historical texts require reading for both information and interpretation
5) Evidence from texts supports historical explanations

COMMON MISCONCEPTIONS:
- Treating historical events as random or inevitable
- Oversimplifying complex causation
- Missing connections between events
- Not distinguishing fact from interpretation
- Reading historical text as purely factual without author perspective

TEACHING SEQUENCE:
Teach historical reading strategies:
- Preview text features and headings
- Identify time period and context
- Note cause-effect signals
- Track chronological sequence
- Question author perspective

Model explaining historical events:
- What happened? (The event itself)
- Why did it happen? (Causes, context, motivations)
- What resulted? (Effects, consequences)
- Why does it matter? (Significance)

Practice with graphic organizers that capture event, causes, effects, and significance. Build from simple cause-effect to complex multiple causation.

Connect to social studies content. Use historical reading skills when reading textbooks and primary sources in social studies class.

DIFFERENTIATION:
For struggling learners: Use clearly organized texts. Provide cause-effect graphic organizers. Focus on one event at a time. Pre-teach vocabulary.

For advanced learners: Analyze primary sources. Evaluate author perspective in historical accounts. Consider multiple causation. Compare accounts of the same event.

VOCABULARY:
Event, cause, effect, explain, historical, context, consequence, significance, evidence, chronological

CONNECTION TO FUTURE LEARNING:
Historical reading skills are essential for social studies. Students will analyze primary sources and historiographical perspectives. Understanding causation supports critical analysis of current events. These skills prepare students for secondary history courses.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Explaining Historical Events' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Text Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Text Structure' AND grade_level_min = 4),
  'Text Structure (Grade 4) Topic Guide',
  'Teaching students to identify organizational patterns in informational text',
  'TEXT STRUCTURE - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand cause and effect and sequence. They should be comfortable with informational texts. Experience with compare/contrast is helpful. Students should recognize that authors organize information purposefully.

LEARNING OBJECTIVES:
- Identify common text structures: chronological, cause/effect, problem/solution, compare/contrast
- Recognize signal words associated with each structure
- Explain how structure supports the author''s purpose
- Use structure knowledge to comprehend and summarize
- Identify structure to improve recall and note-taking

KEY CONCEPTS:
1) Authors organize information in patterns that support understanding
2) Chronological: events in time order (first, then, finally)
3) Cause/Effect: why things happen and what results (because, therefore, as a result)
4) Problem/Solution: issue and how it is addressed
5) Compare/Contrast: similarities and differences (alike, different, however)
6) Recognizing structure aids comprehension and memory

COMMON MISCONCEPTIONS:
- Thinking all informational text is structured the same way
- Missing signal words that indicate structure
- Confusing sequence with cause-effect
- Not using structure to guide reading and note-taking
- Believing texts use only one structure throughout

TEACHING SEQUENCE:
Teach each structure with signal words and graphic organizers:
- Chronological: timeline, sequence chain; first, next, then, finally
- Cause/Effect: cause-effect arrows; because, therefore, as a result
- Problem/Solution: problem box → solution box; problem, solution, solve
- Compare/Contrast: Venn diagram, T-chart; alike, different, however, similarly

Practice identifying structure in authentic texts. Read paragraphs and identify which structure is used. Discuss how the structure helps convey information.

Use structure for comprehension and note-taking. Match note-taking formats to text structures. Summarize using structure-appropriate formats.

Apply across content areas. Science, social studies, and other subjects use specific structures frequently.

DIFFERENTIATION:
For struggling learners: Focus on one structure at a time. Use highlighted signal words. Provide structure identification practice. Match structures to graphic organizers.

For advanced learners: Analyze texts that use multiple structures. Consider why authors choose particular structures. Write using specific structures. Evaluate effectiveness of structural choices.

VOCABULARY:
Structure, organize, chronological, cause, effect, problem, solution, compare, contrast, signal words, pattern

CONNECTION TO FUTURE LEARNING:
Text structure knowledge supports comprehension across all subjects. Students will analyze increasingly complex organizational patterns. Understanding structure aids note-taking and study skills. Writers use structure knowledge for clear organization.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Text Structure' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Integrating Information
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 4),
  'Integrating Information (Grade 4) Topic Guide',
  'Teaching students to combine information from multiple texts on a topic',
  'INTEGRATING INFORMATION - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should compare information across texts. They should take notes from multiple sources. Understanding main ideas in individual texts is essential. Experience with research basics is helpful.

LEARNING OBJECTIVES:
- Integrate information from two texts on the same topic
- Identify what each source contributes to understanding
- Synthesize information rather than summarizing separately
- Recognize when sources agree, disagree, or complement each other
- Write or speak knowledgeably about a topic using multiple sources

KEY CONCEPTS:
1) Different sources provide different information on the same topic
2) Integrating means combining information into a unified understanding
3) Sources may confirm, contradict, or extend each other
4) Good researchers pull together information, not just list sources
5) Integration leads to deeper, more complete understanding

COMMON MISCONCEPTIONS:
- Summarizing sources separately rather than integrating
- Treating all information as equally important
- Not noticing when sources contradict
- Difficulty synthesizing different types of information
- Thinking one source provides complete information

TEACHING SEQUENCE:
Select complementary sources. Choose texts that address the same topic from different angles or with different information. Make clear what each contributes.

Model integration thinking: "Source 1 tells me about habitat. Source 2 tells me about diet. Putting these together, I understand how this animal survives in its environment."

Use graphic organizers for integration:
- Topic in center, each source contributing details
- Venn diagrams showing unique and shared information
- Synthesis frames combining ideas

Practice writing integrated responses. Rather than "Source 1 says... Source 2 says..." write "Whales are [information from multiple sources integrated into cohesive explanation]."

DIFFERENTIATION:
For struggling learners: Integrate just two short texts. Provide structured synthesis templates. Focus on complementary rather than contradictory sources. Work in pairs.

For advanced learners: Integrate three or more sources. Address conflicting information. Evaluate source quality. Write synthesized research reports.

VOCABULARY:
Integrate, combine, synthesize, source, topic, information, complement, contradict, confirm, research

CONNECTION TO FUTURE LEARNING:
Information integration is essential for research and academic writing. Students will synthesize multiple sources for increasingly complex projects. Critical evaluation of sources builds on integration skills. These skills are crucial for college and career readiness.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Visuals and Text
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Visuals and Text' AND grade_level_min = 4),
  'Visuals and Text (Grade 4) Topic Guide',
  'Teaching students to interpret charts, graphs, diagrams, and timelines',
  'VISUALS AND TEXT - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand basic graphs and charts from math. They should use text features in informational reading. Experience reading diagrams and maps is helpful. Students should understand that visuals convey information.

LEARNING OBJECTIVES:
- Interpret information presented in charts, graphs, diagrams, and timelines
- Explain how visuals contribute to understanding
- Integrate information from visuals with text
- Use visuals to answer questions and support understanding
- Evaluate how well visuals support the text

KEY CONCEPTS:
1) Visuals present information in ways that complement or extend text
2) Different visual types serve different purposes (graphs for data, diagrams for processes)
3) Readers should examine visuals carefully, not skip them
4) Text and visuals together provide fuller understanding
5) Visuals require interpretation - they are not self-explanatory

COMMON MISCONCEPTIONS:
- Skipping visuals or treating them as decoration
- Not reading titles, labels, and legends carefully
- Missing the connection between visuals and text
- Difficulty interpreting complex graphs or diagrams
- Not questioning whether visuals accurately represent information

TEACHING SEQUENCE:
Teach visual literacy explicitly. Different visuals require different reading strategies:
- Graphs: Read title, axes, legend; identify trends
- Diagrams: Follow labels, arrows, and processes
- Timelines: Note events, sequence, and intervals
- Maps: Use keys, scales, and compass roses

Model integration of visual and text. "The text says the population grew. Let me look at the graph to see how much and how fast. The graph shows it doubled in 50 years."

Practice interpretation questions:
- What information does this visual provide?
- How does it connect to the text?
- What questions does it answer?
- What questions remain?

Apply across subjects. Science, social studies, and math all use visuals extensively.

DIFFERENTIATION:
For struggling learners: Start with simple visuals with clear labels. Guide reading of visual elements explicitly. Pair visuals with short texts. Practice one visual type at a time.

For advanced learners: Interpret complex, multi-variable visuals. Evaluate visual design choices. Create visuals to represent information. Analyze how visuals can mislead.

VOCABULARY:
Chart, graph, diagram, timeline, interpret, visual, legend, axis, label, data, information, represent

CONNECTION TO FUTURE LEARNING:
Visual literacy is essential for reading across all content areas. Students will encounter increasingly complex data visualizations. Understanding how visuals communicate supports critical evaluation of information. These skills are crucial in our data-rich world.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Visuals and Text' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LANGUAGE SKILLS UNIT
-- ============================================================================

-- Pronouns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Pronouns' AND grade_level_min = 4),
  'Pronouns (Grade 4) Topic Guide',
  'Teaching students to use relative pronouns correctly',
  'RELATIVE PRONOUNS - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand basic pronouns (I, he, she, it, they). They should write complete sentences. Understanding that pronouns replace nouns is essential. Students should be combining sentences in writing.

LEARNING OBJECTIVES:
- Use relative pronouns (who, whose, whom, which, that) correctly
- Understand how relative pronouns connect ideas
- Distinguish when to use each relative pronoun
- Use relative pronouns to combine sentences
- Apply pronoun knowledge in writing and editing

KEY CONCEPTS:
1) Relative pronouns introduce relative clauses that give more information
2) WHO refers to people (The woman who won...)
3) WHICH refers to things (The book, which was old...)
4) THAT can refer to people or things (The dog that barked...)
5) WHOSE shows possession (The boy whose bike was stolen...)
6) WHOM is the object form of who (The teacher whom I met...)

COMMON MISCONCEPTIONS:
- Using "that" for all situations
- Confusing who (subject) and whom (object)
- Not knowing when "which" requires commas
- Using relative pronouns incorrectly or unnecessarily
- Creating unclear pronoun reference

TEACHING SEQUENCE:
Introduce relative pronouns as sentence connectors. Show how two sentences become one:
- "The student won first place. She studied hard." → "The student who studied hard won first place."

Teach when to use each pronoun:
- WHO/WHOM: for people (who = subject, whom = object)
- WHICH: for things, adds extra information, uses commas
- THAT: for people or things, essential information, no commas
- WHOSE: shows possession for people or things

Practice combining sentences using relative pronouns. This shows their function and improves sentence variety.

Apply in writing revision. During editing, students look for opportunities to combine sentences with relative pronouns.

DIFFERENTIATION:
For struggling learners: Focus on who, which, and that first. Provide sentence combining practice. Use clear examples. Skip whom initially.

For advanced learners: Distinguish essential vs. non-essential clauses. Master who vs. whom. Analyze relative pronoun use in professional writing. Experiment with sentence variety.

VOCABULARY:
Relative pronoun, who, whom, whose, which, that, clause, connect, combine, sentence

CONNECTION TO FUTURE LEARNING:
Relative pronoun mastery supports sophisticated sentence structure. Students will use complex sentences in academic writing. Understanding clause structure helps with foreign languages. These skills support clear, varied, mature writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pronouns' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Verb Tenses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Verb Tenses' AND grade_level_min = 4),
  'Verb Tenses (Grade 4) Topic Guide',
  'Teaching students to use progressive verb tenses correctly',
  'PROGRESSIVE VERB TENSES - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should understand basic past, present, and future tenses. They should use verbs consistently in writing. Understanding of verb function in sentences is important. Students should be writing regularly.

LEARNING OBJECTIVES:
- Form and use progressive verb tenses (am/is/are + -ing)
- Distinguish between simple and progressive tenses
- Use progressive tenses to convey ongoing action
- Maintain tense consistency in writing
- Apply verb tense knowledge in editing

KEY CONCEPTS:
1) Progressive tenses show ongoing or continuing action
2) Present progressive: am/is/are + -ing (I am running)
3) Past progressive: was/were + -ing (I was running)
4) Future progressive: will be + -ing (I will be running)
5) Progressive tenses add nuance to when and how actions occur

COMMON MISCONCEPTIONS:
- Using progressive when simple tense is needed
- Forming progressive tenses incorrectly
- Inconsistent tense use within writing
- Not understanding the difference in meaning between simple and progressive
- Overusing progressive tenses

TEACHING SEQUENCE:
Compare simple and progressive tenses:
- "I run every day" (simple = habitual)
- "I am running right now" (progressive = ongoing)
- "I ran yesterday" (simple = completed)
- "I was running when it started to rain" (progressive = ongoing in the past)

Teach formation patterns:
- Present progressive: am/is/are + verb-ing
- Past progressive: was/were + verb-ing
- Future progressive: will be + verb-ing

Practice choosing appropriate tenses for context. When would you use "I eat" vs. "I am eating"? Context determines choice.

Apply in writing. Use progressive tenses to add detail about when actions occur. Edit for consistency.

DIFFERENTIATION:
For struggling learners: Focus on present progressive first. Use visual timelines. Provide clear formation rules. Practice with familiar verbs.

For advanced learners: Explore perfect progressive tenses. Analyze tense choices in literature. Consider how tense affects narrative. Experiment with tense shifts for effect.

VOCABULARY:
Progressive, tense, ongoing, continuing, past, present, future, action, verb, form

CONNECTION TO FUTURE LEARNING:
Tense mastery supports precise communication. Students will learn perfect tenses and complex tense sequences. Understanding tense helps with foreign language study. These skills support narrative writing and academic expression.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Verb Tenses' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Context Clues (Grade 4)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Context Clues' AND grade_level_min = 4),
  'Context Clues (Grade 4) Topic Guide',
  'Teaching students to determine word meanings from context',
  'CONTEXT CLUES (GRADE 4) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have Grade 3 experience with context clues. They should understand that unknown words can often be figured out. Comfort with reading grade-level texts is important. Students should be reading texts with academic vocabulary.

LEARNING OBJECTIVES:
- Use context to determine the meaning of words and phrases
- Apply multiple context clue strategies flexibly
- Determine meanings of academic and domain-specific vocabulary
- Verify contextual meanings using references
- Develop vocabulary through strategic contextual reading

KEY CONCEPTS:
1) Context includes the sentence, paragraph, and broader text
2) Multiple clue types may appear: definition, example, synonym, antonym, inference
3) Academic vocabulary often has context support in textbooks
4) Contextual meaning should be verified when important
5) Context clue use builds vocabulary automatically

COMMON MISCONCEPTIONS:
- Looking only at the immediate sentence
- Missing subtle or implicit context clues
- Not verifying guesses when stakes are high
- Giving up when context is not immediately obvious
- Assuming the first meaning guess is correct

TEACHING SEQUENCE:
Build on Grade 3 clue types and add sophistication:
- Look beyond the sentence to surrounding paragraphs
- Use topic knowledge and text structure as clues
- Consider what would make sense given the subject matter
- Look for restatement in different words

Model with challenging academic vocabulary. Science and social studies texts often embed definitions or provide clear context for technical terms.

Teach verification strategies. When understanding matters (for tests, important content), check dictionary after making contextual guess. This confirms and deepens learning.

Practice with authentic texts across content areas. Academic vocabulary in context appears in all subjects.

DIFFERENTIATION:
For struggling learners: Use texts with explicit context clues. Highlight clue language. Practice verification routinely. Work with familiar content.

For advanced learners: Work with subtle and implicit clues. Analyze author''s vocabulary support strategies. Use context for nuanced word meanings. Build academic vocabulary strategically.

VOCABULARY:
Context clues, meaning, definition, example, synonym, antonym, inference, verify, academic vocabulary

CONNECTION TO FUTURE LEARNING:
Context clue mastery supports independent learning. Students will encounter specialized vocabulary across all subjects. Strategic contextual reading builds vocabulary efficiently. These skills are essential for academic success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Context Clues' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Reference Materials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Reference Materials' AND grade_level_min = 4),
  'Reference Materials (Grade 4) Topic Guide',
  'Teaching students to use glossaries and dictionaries effectively',
  'REFERENCE MATERIALS - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have basic dictionary skills from Grade 3. They should know alphabetical order. Understanding of parts of a dictionary entry is developing. Students should know when to look up words.

LEARNING OBJECTIVES:
- Use print and digital glossaries to clarify meanings
- Use print and digital dictionaries for pronunciation, meaning, and part of speech
- Choose the appropriate definition for context
- Use reference materials efficiently
- Verify contextual word meanings with references

KEY CONCEPTS:
1) Glossaries define key terms specific to a text or subject
2) Dictionaries provide comprehensive word information
3) Digital references offer advantages (speed, audio pronunciation)
4) Multiple definitions require choosing based on context
5) Reference materials confirm and extend contextual understanding

COMMON MISCONCEPTIONS:
- Using the first definition without checking context
- Not knowing how to navigate digital dictionaries
- Missing pronunciation guides
- Overlooking glossaries in textbooks
- Using references inefficiently (looking up every word)

TEACHING SEQUENCE:
Compare glossaries and dictionaries:
- Glossary: specific to the text, limited entries, tailored definitions
- Dictionary: comprehensive, multiple definitions, pronunciation, etymology

Master dictionary entry components:
- Entry word and pronunciation
- Part of speech
- Multiple definitions (numbered)
- Example sentences
- Related words

Teach digital dictionary navigation:
- Search functions
- Audio pronunciation
- Related word links
- Multiple dictionary sources

Practice choosing correct definitions. Read all definitions. Consider the context. Select the best fit. Verify by substituting in the sentence.

DIFFERENTIATION:
For struggling learners: Use simple dictionaries. Focus on choosing correct definitions. Practice with clear contexts. Use audio pronunciation support.

For advanced learners: Explore etymology. Use specialized dictionaries (thesaurus, subject-specific). Analyze word histories. Compare dictionary definitions.

VOCABULARY:
Dictionary, glossary, definition, pronunciation, entry, reference, context, part of speech, meaning

CONNECTION TO FUTURE LEARNING:
Reference skills support independent learning. Students will use increasingly specialized references. Digital literacy includes navigating online resources. These skills support vocabulary development and precise communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reference Materials' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING UNIT
-- ============================================================================

-- Opinion Writing (Grade 4)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 4),
  'Opinion Writing (Grade 4) Topic Guide',
  'Teaching students to write organized opinions with supporting reasons',
  'OPINION WRITING - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have Grade 3 experience with opinion writing. They should understand the difference between facts and opinions. Paragraph structure should be developing. Students should be able to organize ideas logically.

LEARNING OBJECTIVES:
- Introduce a topic and state an opinion clearly
- Organize reasons and information logically
- Support reasons with facts and details
- Use transitional words and phrases effectively
- Provide a concluding statement related to the opinion

KEY CONCEPTS:
1) Opinion writing persuades readers by presenting logical arguments
2) Strong opinions are supported by multiple reasons with evidence
3) Organization matters - reasons should be ordered effectively
4) Transitions guide readers through the argument
5) Conclusions reinforce the opinion and leave impact

COMMON MISCONCEPTIONS:
- Providing reasons without supporting evidence
- Disorganized presentation of ideas
- Weak transitions between paragraphs
- Conclusions that introduce new ideas
- Not anticipating reader questions or objections

TEACHING SEQUENCE:
Study opinion mentor texts. Analyze how writers introduce topics, present reasons, provide support, use transitions, and conclude. Identify effective techniques.

Teach logical organization:
- Introduction: Hook, background, thesis (opinion statement)
- Body: One reason per paragraph, each with supporting evidence
- Conclusion: Restate thesis, summarize reasons, call to action or final thought

Build transition vocabulary:
- Introducing reasons: First, One reason, To begin
- Adding reasons: Additionally, Furthermore, Also
- Contrasting: However, On the other hand
- Concluding: In conclusion, Therefore, For these reasons

Practice with authentic topics. Write about school issues, community concerns, or literary interpretations. Authentic purposes motivate quality.

DIFFERENTIATION:
For struggling learners: Use structured templates. Provide transition word banks. Focus on two reasons with support. Conference during writing.

For advanced learners: Address counterarguments. Use more sophisticated evidence. Develop distinct voice. Write for real audiences and purposes.

VOCABULARY:
Opinion, reason, evidence, support, transition, introduce, conclude, organize, persuade, argument

CONNECTION TO FUTURE LEARNING:
Opinion writing develops into argumentative writing. Students will use evidence-based reasoning across subjects. Persuasive skills support civic engagement. These skills are essential for college and career success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Informative Writing (Grade 4)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Informative Writing' AND grade_level_min = 4),
  'Informative Writing (Grade 4) Topic Guide',
  'Teaching students to write informational texts with clear organization',
  'INFORMATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have Grade 3 experience with informational writing. They should understand how to find and organize information. Paragraph structure should be developing. Experience with research supports this writing.

LEARNING OBJECTIVES:
- Introduce topics clearly and group related information
- Develop topics with facts, definitions, details, and quotations
- Use precise language and domain-specific vocabulary
- Link ideas using transitional words and phrases
- Provide a concluding statement or section

KEY CONCEPTS:
1) Informative writing explains topics clearly and accurately
2) Organization helps readers understand information
3) Different topics may require different organizational structures
4) Precise vocabulary and accurate facts are essential
5) Text features can enhance informative writing

COMMON MISCONCEPTIONS:
- Including opinions in informative writing
- Inadequate development of ideas
- Disorganized information that jumps between topics
- Using imprecise or vague language
- Missing introductions or conclusions

TEACHING SEQUENCE:
Study informational mentor texts. Notice organizational patterns, use of facts and examples, precise vocabulary, and text features. Analyze effective techniques.

Teach organizational patterns:
- Definition and description
- Compare and contrast
- Cause and effect
- Problem and solution
- Chronological sequence

Develop topics thoroughly:
- Facts and statistics
- Definitions of key terms
- Concrete details and examples
- Quotations from experts
- Text features (headings, graphics)

Practice across content areas. Write about topics from science, social studies, or personal interests. Apply informative writing to learning.

DIFFERENTIATION:
For struggling learners: Use structured templates. Write about familiar topics. Provide research support. Focus on clear organization before elaboration.

For advanced learners: Research complex topics. Use sophisticated organizational patterns. Include multiple text features. Develop engaging voice within informative mode.

VOCABULARY:
Informative, topic, organize, facts, details, vocabulary, transition, introduce, conclude, explain

CONNECTION TO FUTURE LEARNING:
Informative writing is essential across all subjects. Students will write increasingly complex reports and essays. Clear explanatory writing is crucial for college and careers. These skills support learning and communication in all contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Informative Writing' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Narrative Writing (Grade 4)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 4),
  'Narrative Writing (Grade 4) Topic Guide',
  'Teaching students to write narratives with character development and dialogue',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have Grade 3 experience with narrative writing. They should understand story elements. Basic dialogue punctuation should be developing. Students should enjoy storytelling.

LEARNING OBJECTIVES:
- Orient the reader with situation, narrator, and characters
- Use dialogue and description to develop characters and events
- Organize events using a clear sequence and pacing
- Use concrete words and sensory details
- Provide a conclusion that follows from the narrated events

KEY CONCEPTS:
1) Effective narratives establish situation and characters quickly
2) Dialogue reveals character and advances plot
3) Pacing controls how quickly events unfold
4) Sensory details help readers experience the story
5) Endings should feel earned and connected to the story

COMMON MISCONCEPTIONS:
- Telling instead of showing
- Dialogue that does not sound natural
- Poor pacing (too rushed or too slow)
- Weak or disconnected endings
- Underdeveloped characters

TEACHING SEQUENCE:
Study narrative mentor texts. Analyze how authors establish situation, develop characters through dialogue and action, pace events, and create endings. Collect techniques.

Develop character through multiple methods:
- Dialogue: what they say and how
- Action: what they do
- Thought: what they think
- Description: how they look and move
- Interaction: how others respond to them

Master dialogue conventions:
- New paragraph for new speaker
- Quotation marks around spoken words
- Varied dialogue tags
- Action beats between dialogue

Focus on pacing and tension:
- Slow down important moments
- Speed through transitions
- Build tension toward climax
- Allow resolution

DIFFERENTIATION:
For struggling learners: Use story planning templates. Focus on one technique at a time. Practice dialogue separately. Conference during writing.

For advanced learners: Experiment with narrative techniques. Develop complex characters. Vary sentence structure for effect. Write longer, more developed pieces.

VOCABULARY:
Narrative, character, dialogue, description, pacing, sequence, sensory details, conclude, show, tell

CONNECTION TO FUTURE LEARNING:
Narrative skills support creative expression. Students will develop personal and fiction writing. Storytelling techniques transfer to many contexts. These skills support engagement with literature as both readers and writers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- Research Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Writing' AND grade_level_min = 4),
  'Research Writing (Grade 4) Topic Guide',
  'Teaching students to conduct research from print and digital sources',
  'RESEARCH WRITING - TOPIC TEACHING GUIDE (GRADE 4)

PREREQUISITES:
Students should have Grade 3 experience with simple research. They should be able to take notes and paraphrase. Familiarity with print and digital sources is developing. Students should understand plagiarism basics.

LEARNING OBJECTIVES:
- Conduct short research projects that build knowledge
- Recall relevant information and gather from print and digital sources
- Take notes and categorize information
- Provide a list of sources
- Integrate research into informative or explanatory writing

KEY CONCEPTS:
1) Research answers questions and builds knowledge
2) Good researchers use multiple sources
3) Notes should capture key information in own words
4) Information should be organized before writing
5) Sources must be documented

COMMON MISCONCEPTIONS:
- Copying from sources instead of paraphrasing
- Using only one source
- Not evaluating source reliability
- Disorganized note-taking
- Forgetting to cite sources

TEACHING SEQUENCE:
Develop research questions. Move from topics to questions:
- Topic: Dolphins
- Questions: How do dolphins communicate? Why are dolphins endangered?

Evaluate and select sources:
- Is this source reliable?
- Does it answer my questions?
- Is it appropriate for my reading level?

Take organized notes:
- Use graphic organizers by question or subtopic
- Paraphrase - put in own words
- Note source information

Synthesize and write:
- Organize notes into outline
- Draft using integrated information
- Include source list

Apply to content area projects. Research supports learning in science, social studies, and other subjects.

DIFFERENTIATION:
For struggling learners: Provide curated sources. Use structured note-taking templates. Focus on one or two questions. Support paraphrasing.

For advanced learners: Evaluate source credibility. Synthesize contradictory information. Use formal citation. Research complex topics.

VOCABULARY:
Research, source, notes, paraphrase, question, information, cite, reliable, organize, synthesize

CONNECTION TO FUTURE LEARNING:
Research skills are essential for academic success. Students will conduct increasingly sophisticated research projects. Information literacy is crucial in our digital world. These skills support lifelong learning and inquiry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Writing' AND grade_level_min = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 4 Reading Topics: 16 comprehensive prompts
-- Units covered:
--   1. Reading Literature (4 topics)
--   2. Reading Informational Text (4 topics)
--   3. Language Skills (4 topics)
--   4. Writing (4 topics)
-- ============================================================================
