-- Grade 5 Reading Topic Prompts
-- Comprehensive teaching guides for Grade 5 Reading/ELA topics
-- Each prompt provides 500+ words of pedagogical guidance

-- ============================================================================
-- READING LITERATURE UNIT
-- ============================================================================

-- Using Text Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Using Text Evidence' AND grade_level_min = 5),
  'Using Text Evidence (Grade 5) Topic Guide',
  'Teaching students to quote accurately when explaining text',
  'USING TEXT EVIDENCE - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have experience supporting answers with text. They should understand the difference between paraphrasing and quoting. Basic paragraph writing skills are essential. Students should be reading grade-level texts critically.

LEARNING OBJECTIVES:
- Quote accurately from text to support inferences and explanations
- Integrate quotes smoothly into written and oral responses
- Select the most relevant evidence to support claims
- Explain how evidence supports conclusions
- Use proper citation format for quotes

KEY CONCEPTS:
1) Text evidence includes direct quotes and accurate paraphrasing
2) Claims require specific support from the text
3) Quotes should be introduced and explained, not just dropped in
4) The best evidence is specific and directly supports the claim
5) Readers must explain the connection between evidence and claim

COMMON MISCONCEPTIONS:
- Dropping quotes without introduction or explanation
- Using evidence that does not directly support the claim
- Over-quoting instead of being selective
- Not explaining how evidence supports the point
- Misquoting or taking quotes out of context

TEACHING SEQUENCE:
Teach the "evidence sandwich" or ICE method:
- I: Introduce the quote with context
- C: Cite the quote with proper punctuation
- E: Explain how the quote supports your point

Model selecting relevant evidence:
- "My claim is that the character is brave. Let me find evidence that shows bravery specifically, not just any quote about the character."

Practice integrating quotes smoothly:
- Signal phrases: "The text states..." "According to the author..."
- Blended quotes: The character felt "terrified" but kept going.
- Full quotes: "She squared her shoulders and walked into the darkness."

Apply across response types. Use evidence in discussion, short responses, and essays. Make evidence use automatic.

DIFFERENTIATION:
For struggling learners: Provide sentence frames for evidence integration. Practice finding evidence for given claims. Focus on one quote at a time. Use highlighters to locate evidence.

For advanced learners: Use embedded quotes fluently. Select from multiple pieces of evidence. Evaluate evidence strength. Develop sophisticated analysis connecting evidence to claims.

VOCABULARY:
Evidence, quote, cite, support, claim, introduce, explain, text, infer, conclude, according to

CONNECTION TO FUTURE LEARNING:
Evidence-based reasoning is essential for academic success. Students will write evidence-based essays across all subjects. Close reading and analysis depend on textual evidence. These skills prepare students for rigorous secondary coursework.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Text Evidence' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Theme and Summary
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme and Summary' AND grade_level_min = 5),
  'Theme and Summary (Grade 5) Topic Guide',
  'Teaching students to determine theme and summarize complex texts',
  'THEME AND SUMMARY - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand theme from Grade 4. They should be able to summarize stories. Experience identifying how themes develop is important. Students should be reading longer, more complex texts.

LEARNING OBJECTIVES:
- Determine theme from specific details in the text
- Summarize the text including theme
- Explain how themes are developed through character, events, and setting
- Distinguish between multiple themes in complex texts
- Create concise summaries that capture essential meaning

KEY CONCEPTS:
1) Theme emerges from patterns of meaning across the text
2) Characters'' changes and realizations often reveal theme
3) Summaries should include what the text is about AND what it means (theme)
4) Complex texts may develop multiple related themes
5) Good summaries are concise but complete

COMMON MISCONCEPTIONS:
- Summarizing plot without addressing theme
- Stating theme without text support
- Including too much detail in summaries
- Missing themes that are implied rather than stated
- Confusing theme with topic or moral

TEACHING SEQUENCE:
Develop theme through analysis questions:
- What challenges does the character face?
- How does the character change?
- What does the character learn?
- What does the author seem to believe about life/people?

Teach objective summary:
- Include major plot points
- Capture the theme
- Remain objective (no personal opinions)
- Be concise (not every detail)

Model theme statements:
- Topic: courage
- Theme: True courage means facing fears even when you are afraid.

Practice with increasingly complex texts. Move from clear themes to implied and multiple themes. Discuss how reasonable readers might interpret themes differently.

DIFFERENTIATION:
For struggling learners: Use shorter texts with clearer themes. Provide summary templates. Focus on character change as theme entry point. Work in discussion groups.

For advanced learners: Analyze texts with ambiguous or multiple themes. Explore how different elements develop different themes. Write analytical responses about thematic development. Compare themes across authors.

VOCABULARY:
Theme, summary, develop, character, change, realize, pattern, meaning, conclude, central idea

CONNECTION TO FUTURE LEARNING:
Theme and summary skills are central to literary analysis. Students will analyze increasingly complex texts with sophisticated themes. Summary skills support research and note-taking. Understanding theme connects literature to human experience.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme and Summary' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Comparing Characters
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Characters' AND grade_level_min = 5),
  'Comparing Characters (Grade 5) Topic Guide',
  'Teaching students to compare and contrast characters across texts',
  'COMPARING CHARACTERS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should analyze individual characters in depth. They should have comparison skills from earlier grades. Experience with character traits, motivations, and development is important. Students should be reading multiple texts that can be compared.

LEARNING OBJECTIVES:
- Compare and contrast characters from different texts
- Analyze how characters respond to similar challenges differently
- Use text evidence from multiple sources to support comparisons
- Explain what differences reveal about each character
- Identify archetypal patterns and variations

KEY CONCEPTS:
1) Characters can be compared by traits, motivations, challenges, and development
2) How characters respond to challenges reveals their nature
3) Different authors may create similar character types with variations
4) Comparison deepens understanding of each individual character
5) Evidence from both texts must support comparative claims

COMMON MISCONCEPTIONS:
- Surface-level comparison (physical traits only)
- Comparison without evidence
- Not analyzing significance of differences
- Forcing comparisons when characters are too different
- Forgetting to analyze each character individually first

TEACHING SEQUENCE:
Establish comparison basis:
- Same challenge, different responses
- Same archetype, different treatments
- Same traits, different contexts
- Same character type across genres

Use structured comparison:
- Character A trait/evidence → Character B trait/evidence
- What similarities emerge?
- What differences emerge?
- What does this reveal about each character?

Analyze responses to challenges:
- Both characters face [similar challenge]
- Character A responds by... Character B responds by...
- This reveals that A is... while B is...

Practice with paired texts chosen for comparison potential.

DIFFERENTIATION:
For struggling learners: Compare clearly similar characters. Provide comparison templates. Focus on one dimension at a time. Support with discussion before writing.

For advanced learners: Analyze complex characters across genres. Consider author''s purpose in characterization. Write extended comparative essays. Explore archetypes and variations.

VOCABULARY:
Compare, contrast, character, challenge, respond, reveal, trait, motivation, similar, different, evidence

CONNECTION TO FUTURE LEARNING:
Character comparison is foundational for literary analysis. Students will analyze character archetypes and author''s craft. Comparative analysis transfers to all academic writing. Understanding characters supports empathy and human understanding.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Characters' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Story Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Story Structure' AND grade_level_min = 5),
  'Story Structure (Grade 5) Topic Guide',
  'Teaching students to analyze how chapters and scenes build on each other',
  'STORY STRUCTURE - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand basic story structure (beginning, middle, end). They should have experience with chapter books. Understanding of plot elements (exposition, rising action, climax, resolution) is developing. Students should be reading novels.

LEARNING OBJECTIVES:
- Explain how chapters, scenes, and stanzas contribute to overall structure
- Analyze how parts of text build upon each other
- Identify how structural choices affect meaning and tension
- Trace how plot develops through chapters
- Understand how poets use stanzas to organize meaning

KEY CONCEPTS:
1) Authors deliberately structure texts for effect
2) Chapters and scenes break narrative into meaningful units
3) Each section builds on what came before and sets up what follows
4) Structural choices affect pacing, tension, and meaning
5) Analyzing structure reveals author''s craft

COMMON MISCONCEPTIONS:
- Treating chapters as arbitrary divisions
- Not seeing connections between sections
- Missing how structure builds tension
- Not applying structural analysis to poetry
- Ignoring scene breaks within chapters

TEACHING SEQUENCE:
Analyze chapter functions:
- What happens in this chapter?
- What changes from beginning to end of chapter?
- How does this chapter connect to the previous one?
- What questions does it raise for the next chapter?

Track cumulative development:
- How does tension build across chapters?
- What is introduced early that becomes important later?
- How does the author manage pacing?

Apply to poetry:
- How do stanzas organize the poem''s ideas?
- What shift occurs between stanzas?
- How does structure affect meaning?

Create structure maps showing how parts connect and build.

DIFFERENTIATION:
For struggling learners: Analyze shorter texts or picture books first. Focus on chapter-by-chapter summary before analysis. Use visual structure maps. Work in small groups.

For advanced learners: Analyze complex structural techniques (flashbacks, parallel plots). Compare structural choices across authors. Examine how structure reinforces theme. Analyze how poets use stanza breaks.

VOCABULARY:
Structure, chapter, scene, stanza, build, develop, tension, connect, organize, contribute, pacing

CONNECTION TO FUTURE LEARNING:
Structural analysis is essential for literary interpretation. Students will analyze complex narrative structures in novels and drama. Understanding structure supports creative writing. These skills prepare students for analyzing author''s craft in secondary English.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Story Structure' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT UNIT
-- ============================================================================

-- Scientific and Historical Texts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Scientific and Historical Texts' AND grade_level_min = 5),
  'Scientific and Historical Texts (Grade 5) Topic Guide',
  'Teaching students to explain relationships in technical texts',
  'SCIENTIFIC AND HISTORICAL TEXTS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have experience with informational text comprehension. They should understand cause and effect and sequence. Familiarity with science and social studies content helps. Students should be able to identify main ideas in complex texts.

LEARNING OBJECTIVES:
- Explain relationships and interactions in scientific texts
- Explain events, ideas, and concepts in historical texts
- Use domain-specific vocabulary accurately
- Identify how scientific and historical thinking is presented in text
- Apply reading strategies specific to technical content

KEY CONCEPTS:
1) Scientific texts often present processes, cause-effect, and evidence-based reasoning
2) Historical texts present events, causation, and multiple perspectives
3) Domain-specific vocabulary must be understood for comprehension
4) These texts require active reading strategies
5) Understanding structure (chronological, cause-effect) aids comprehension

COMMON MISCONCEPTIONS:
- Reading technical texts the same way as narratives
- Skipping unfamiliar vocabulary
- Missing causal relationships
- Not attending to text structures
- Treating all information as equally important

TEACHING SEQUENCE:
Teach scientific text reading:
- Attend to processes and sequences
- Look for cause-effect relationships
- Note evidence and conclusions
- Use diagrams and visuals actively
- Build vocabulary from context and glossary

Teach historical text reading:
- Track chronology and causation
- Consider multiple perspectives
- Distinguish fact from interpretation
- Note sources of evidence
- Connect events to broader context

Practice with authentic content-area texts. Coordinate with science and social studies instruction.

DIFFERENTIATION:
For struggling learners: Pre-teach vocabulary. Use graphic organizers for structure. Read shorter selections. Provide background knowledge support.

For advanced learners: Analyze author''s reasoning and evidence. Compare accounts from different perspectives. Evaluate source reliability. Read primary sources.

VOCABULARY:
Scientific, historical, process, cause, effect, event, evidence, relationship, interaction, explain, domain-specific

CONNECTION TO FUTURE LEARNING:
Reading technical texts is essential for content learning. Students will read increasingly complex scientific and historical sources. These skills support research and inquiry. Technical reading skills are crucial for college and career success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scientific and Historical Texts' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Multiple Accounts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Multiple Accounts' AND grade_level_min = 5),
  'Multiple Accounts (Grade 5) Topic Guide',
  'Teaching students to analyze multiple accounts of the same event',
  'MULTIPLE ACCOUNTS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand that sources can differ. They should have experience comparing informational texts. Understanding perspective and point of view is important. Students should be developing critical reading skills.

LEARNING OBJECTIVES:
- Analyze multiple accounts of the same event or topic
- Identify similarities and differences in focus and perspective
- Recognize how perspective shapes presentation of information
- Evaluate which accounts provide more complete or reliable information
- Synthesize multiple accounts for fuller understanding

KEY CONCEPTS:
1) Different sources may present the same events differently
2) Authors have perspectives that influence their accounts
3) Focus and emphasis differ based on author''s purpose and audience
4) Multiple accounts can complement or contradict each other
5) Critical readers compare accounts to develop understanding

COMMON MISCONCEPTIONS:
- Thinking all accounts of the same event should be identical
- Not noticing differences in focus or emphasis
- Assuming differences mean one account is wrong
- Not questioning why accounts differ
- Treating first-encountered account as definitive

TEACHING SEQUENCE:
Compare accounts systematically:
- What does each account include?
- What does each account emphasize?
- What does each account omit?
- How does perspective explain differences?

Analyze reasons for differences:
- Different purposes or audiences
- Different perspectives or access
- Different time of writing
- Different interpretations

Synthesize across accounts:
- What do all accounts agree on?
- What additional information does each provide?
- How do differences enrich understanding?
- What questions remain unanswered?

Apply to current events and historical topics.

DIFFERENTIATION:
For struggling learners: Compare two clear accounts. Provide structured comparison organizers. Focus on identifying differences before analyzing. Use familiar topics.

For advanced learners: Compare multiple accounts including primary sources. Analyze bias and perspective deeply. Evaluate reliability. Write synthesis that acknowledges multiple perspectives.

VOCABULARY:
Account, perspective, focus, emphasis, compare, contrast, source, event, differ, synthesize, reliable

CONNECTION TO FUTURE LEARNING:
Analyzing multiple accounts is essential for historical and current events understanding. Students will evaluate sources for bias and reliability. Media literacy depends on comparing accounts. These skills support informed citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiple Accounts' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Integrating Information (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 5),
  'Integrating Information (Grade 5) Topic Guide',
  'Teaching students to combine information from multiple sources',
  'INTEGRATING INFORMATION - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have Grade 4 experience integrating sources. They should be able to take notes from multiple texts. Understanding how to synthesize rather than summarize is developing. Research skills are important.

LEARNING OBJECTIVES:
- Integrate information from multiple sources on the same topic
- Write or speak knowledgeably about a topic using several sources
- Synthesize information into a unified understanding
- Identify when sources agree, contradict, or complement
- Present integrated findings effectively

KEY CONCEPTS:
1) Multiple sources provide more complete understanding
2) Integration means combining information, not just listing sources
3) Sources may provide different types of information
4) Contradictions require evaluation and judgment
5) Integration leads to deeper knowledge than any single source

COMMON MISCONCEPTIONS:
- Summarizing sources separately rather than integrating
- Missing connections between sources
- Not noticing contradictions
- Treating all sources as equally reliable
- Thinking one source can provide complete information

TEACHING SEQUENCE:
Organize information across sources:
- Group by subtopic rather than by source
- Note what each source contributes
- Identify overlaps and gaps
- Flag contradictions for evaluation

Synthesize into unified understanding:
- Write about the topic, not about the sources
- Draw on all sources fluidly
- Address contradictions when relevant
- Present coherent, complete understanding

Apply to research projects and content learning. Make integration a regular part of inquiry.

DIFFERENTIATION:
For struggling learners: Integrate just two complementary sources. Use structured organizers. Provide synthesis sentence frames. Focus on adding information before addressing contradictions.

For advanced learners: Integrate multiple sources including varied formats. Resolve contradictions through evaluation. Write sophisticated syntheses. Present findings in multiple formats.

VOCABULARY:
Integrate, synthesize, combine, source, information, topic, complement, contradict, complete, understand

CONNECTION TO FUTURE LEARNING:
Information integration is essential for research and academic writing. Students will synthesize increasingly complex sources. These skills support learning across all subjects. Integration abilities are crucial for college and career success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Author Point of View
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Author Point of View' AND grade_level_min = 5),
  'Author Point of View (Grade 5) Topic Guide',
  'Teaching students to analyze how point of view influences text',
  'AUTHOR POINT OF VIEW - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand point of view in fiction. They should recognize that authors have purposes. Experience with persuasive and argumentative texts helps. Students should be developing critical reading skills.

LEARNING OBJECTIVES:
- Analyze how an author''s point of view influences the presentation of information
- Identify an author''s purpose and how it shapes the text
- Compare different authors'' points of view on the same topic
- Recognize how word choice, emphasis, and structure reflect perspective
- Evaluate how point of view affects reliability and completeness

KEY CONCEPTS:
1) Authors have perspectives that influence how they present information
2) Purpose (to inform, persuade, entertain) affects content and style
3) Word choice reveals author''s attitudes and perspective
4) What is included and omitted reflects point of view
5) Critical readers consider author perspective when evaluating texts

COMMON MISCONCEPTIONS:
- Thinking informational texts are completely objective
- Not noticing subtle signs of perspective
- Missing how word choice reveals attitude
- Not considering what is omitted
- Equating perspective with bias

TEACHING SEQUENCE:
Identify author''s perspective:
- What is the author''s purpose?
- What position does the author seem to hold?
- How is this perspective revealed?

Analyze how perspective influences text:
- Word choice: What connotations are used?
- Emphasis: What is highlighted?
- Omission: What is left out?
- Structure: How does organization reflect perspective?

Compare perspectives on same topic. Read multiple texts on one topic and analyze how different perspectives lead to different presentations.

Evaluate effect of perspective. Consider how perspective affects reliability and what readers should keep in mind.

DIFFERENTIATION:
For struggling learners: Use texts with clear perspectives. Focus on identifying purpose first. Analyze word choice explicitly. Compare two contrasting perspectives.

For advanced learners: Analyze subtle perspectives. Examine how perspective affects apparently objective texts. Compare multiple perspectives. Evaluate reliability in context of perspective.

VOCABULARY:
Point of view, perspective, author, purpose, influence, word choice, emphasis, omit, bias, objective, subjective

CONNECTION TO FUTURE LEARNING:
Understanding author perspective is essential for critical literacy. Students will analyze rhetoric and argumentation. Media literacy depends on perspective awareness. These skills support informed citizenship and academic success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Author Point of View' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LANGUAGE AND VOCABULARY UNIT
-- ============================================================================

-- Perfect Verb Tenses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Perfect Verb Tenses' AND grade_level_min = 5),
  'Perfect Verb Tenses (Grade 5) Topic Guide',
  'Teaching students to use past, present, and future perfect tenses',
  'PERFECT VERB TENSES - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should use simple and progressive tenses correctly. They should understand verb tense basics. Consistent tense use in writing should be developing. Students should be writing regularly.

LEARNING OBJECTIVES:
- Form and use past, present, and future perfect tenses
- Understand when to use perfect tenses versus simple tenses
- Use perfect tenses to convey completed action
- Maintain consistent and appropriate tense use in writing
- Apply perfect tense knowledge in editing

KEY CONCEPTS:
1) Perfect tenses show completed action relative to another time
2) Present perfect (have/has + past participle): I have finished
3) Past perfect (had + past participle): I had finished before you arrived
4) Future perfect (will have + past participle): I will have finished by tomorrow
5) Perfect tenses add precision about when actions are completed

COMMON MISCONCEPTIONS:
- Using simple past when past perfect is needed
- Forming perfect tenses incorrectly
- Not understanding the completed aspect
- Overusing perfect tenses
- Confusing past participle with past tense for irregular verbs

TEACHING SEQUENCE:
Teach formation and meaning for each:

Present perfect: have/has + past participle
- "I have studied this chapter." (completed at some point before now)
- Connects past action to present

Past perfect: had + past participle
- "I had studied before the test began." (completed before another past event)
- Shows sequence of past events

Future perfect: will have + past participle
- "I will have studied everything by Friday." (will be completed before future time)
- Shows completion by a future time

Practice choosing appropriate tenses. Create scenarios where tense choice matters. Focus on the precision each tense provides.

Apply in writing revision. During editing, consider whether perfect tenses would add precision.

DIFFERENTIATION:
For struggling learners: Focus on present perfect first. Use timeline visuals. Practice formation systematically. Work with regular verbs before irregular.

For advanced learners: Use perfect progressive tenses. Analyze tense choices in literature. Consider subtle differences in meaning. Use precise tenses in complex narratives.

VOCABULARY:
Perfect tense, past participle, have, had, will have, completed, before, present perfect, past perfect, future perfect

CONNECTION TO FUTURE LEARNING:
Tense precision supports clear writing. Students will use sophisticated tense sequences in narratives and analysis. Understanding tenses helps with foreign language study. These skills support academic and professional writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perfect Verb Tenses' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Sentence Combining
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sentence Combining' AND grade_level_min = 5),
  'Sentence Combining (Grade 5) Topic Guide',
  'Teaching students to expand and combine sentences for variety',
  'SENTENCE COMBINING - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should write complete sentences. They should use some compound and complex sentences. Understanding of conjunctions is important. Students should be editing their own writing.

LEARNING OBJECTIVES:
- Combine simple sentences into compound and complex sentences
- Expand sentences with additional details and modifiers
- Use varied sentence structures for effect
- Improve writing fluency through sentence variety
- Revise choppy or repetitive sentences

KEY CONCEPTS:
1) Sentence variety makes writing more engaging
2) Compound sentences join equal ideas (and, but, or, so)
3) Complex sentences show relationships (because, when, although, if)
4) Modifiers expand sentences with detail
5) Sentence combining improves both fluency and meaning

COMMON MISCONCEPTIONS:
- Thinking longer sentences are always better
- Using only one type of sentence structure
- Creating run-on sentences when combining
- Not varying sentence beginnings
- Combining sentences that should remain separate

TEACHING SEQUENCE:
Teach combination strategies:

Compound sentences (coordinating conjunctions):
- "The dog barked. The cat ran." → "The dog barked, and the cat ran."
- FANBOYS: for, and, nor, but, or, yet, so

Complex sentences (subordinating conjunctions):
- "It was raining. We stayed inside." → "Because it was raining, we stayed inside."
- When, because, although, if, while, after, before, since, unless

Expansion with modifiers:
- "The dog barked." → "The large, brown dog barked loudly at the stranger."

Practice with pairs of sentences and paragraphs needing revision. Focus on improving meaning and flow, not just length.

DIFFERENTIATION:
For struggling learners: Practice one combination type at a time. Provide sentence pairs to combine. Use visual conjunction references. Focus on maintaining meaning.

For advanced learners: Vary sentence length intentionally for effect. Analyze sentence variety in mentor texts. Experiment with different structures for same content. Consider rhythm and emphasis.

VOCABULARY:
Combine, expand, compound sentence, complex sentence, conjunction, modifier, variety, fluency, structure

CONNECTION TO FUTURE LEARNING:
Sentence variety is essential for engaging writing. Students will develop sophisticated style through structure choices. These skills support all writing across subjects. Understanding sentence structure aids reading comprehension.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sentence Combining' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Context and Word Parts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Context and Word Parts' AND grade_level_min = 5),
  'Context and Word Parts (Grade 5) Topic Guide',
  'Teaching students to use context clues and morphology for word meaning',
  'CONTEXT AND WORD PARTS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have experience with both context clues and affixes. They should know common prefixes and suffixes. Understanding of root words is important. Students should encounter unfamiliar words regularly.

LEARNING OBJECTIVES:
- Combine context clues with word part analysis
- Use Greek and Latin roots to determine meanings
- Apply multiple strategies flexibly for unknown words
- Expand vocabulary through morphological knowledge
- Verify meanings using reference materials

KEY CONCEPTS:
1) Context clues and word parts work together for word learning
2) Greek and Latin roots appear in many academic words
3) Multiple strategies should be used flexibly
4) Morphological knowledge applies to families of words
5) Verification confirms and deepens understanding

COMMON MISCONCEPTIONS:
- Using only context OR word parts, not both
- Not recognizing Greek and Latin roots
- Overgeneralizing from word parts
- Stopping after first guess without verification
- Not seeing word family connections

TEACHING SEQUENCE:
Introduce common Greek and Latin roots:
- Greek: bio (life), graph (write), phone (sound), scope (see), meter (measure)
- Latin: aud (hear), dict (say), port (carry), rupt (break), struct (build)

Model combined strategy use:
- "I see the word ''biography.'' I know bio means life and graph means write. The context suggests this is a book about someone''s life. Biography must mean writing about someone''s life."

Build word families from roots:
- graph → biography, autobiography, paragraph, graphic, geography

Practice with academic vocabulary across subjects. Content areas are rich with morphologically complex words.

DIFFERENTIATION:
For struggling learners: Focus on most common roots. Use visual word family trees. Provide root reference cards. Practice combining strategies explicitly.

For advanced learners: Explore less common roots. Analyze etymology. Build extensive word families. Use morphology for sophisticated vocabulary.

VOCABULARY:
Root, Greek, Latin, prefix, suffix, morphology, context, word part, analyze, family, meaning

CONNECTION TO FUTURE LEARNING:
Morphological knowledge dramatically expands vocabulary. Students will encounter Greek and Latin roots throughout academic learning. Word part analysis supports learning across all subjects. These skills enable independent vocabulary growth.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Context and Word Parts' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Figurative Language
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 5),
  'Figurative Language (Grade 5) Topic Guide',
  'Teaching students to interpret similes, metaphors, and idioms',
  'FIGURATIVE LANGUAGE - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should understand literal versus non-literal language. They should have exposure to similes and metaphors. Basic understanding of comparison is important. Students should be reading texts rich with figurative language.

LEARNING OBJECTIVES:
- Interpret similes and metaphors in context
- Understand common idioms
- Explain how figurative language enhances meaning
- Distinguish between literal and figurative meaning
- Use figurative language effectively in writing

KEY CONCEPTS:
1) Figurative language means something different from the literal words
2) Similes compare using "like" or "as" (fast as lightning)
3) Metaphors compare without "like" or "as" (life is a journey)
4) Idioms have meanings that cannot be figured out from individual words (raining cats and dogs)
5) Figurative language creates imagery and expresses ideas vividly

COMMON MISCONCEPTIONS:
- Interpreting figurative language literally
- Not recognizing figurative language in text
- Knowing similes but not understanding what comparison reveals
- Not understanding unfamiliar idioms
- Using figurative language incorrectly in writing

TEACHING SEQUENCE:
Teach identification and interpretation:

Similes: Identify the comparison and what it reveals
- "Her voice was as smooth as silk." What quality is being described? Smoothness suggests gentle, pleasant quality.

Metaphors: Unpack the comparison without "like/as"
- "Time is money." Time and money are compared. We should value and not waste time.

Idioms: Learn meanings as units
- "Break a leg" = good luck
- Explore origins when helpful

Analyze effect in context. Why does the author use figurative language here? What does it add?

Apply in writing. Use figurative language purposefully to enhance description and meaning.

DIFFERENTIATION:
For struggling learners: Focus on recognition first. Build idiom knowledge systematically. Use visuals for literal vs. figurative. Practice interpretation with support.

For advanced learners: Analyze extended metaphors. Explore personification and other devices. Examine how authors create original figurative language. Analyze effect on tone and meaning.

VOCABULARY:
Figurative language, literal, simile, metaphor, idiom, compare, interpret, imagery, expression, meaning

CONNECTION TO FUTURE LEARNING:
Figurative language interpretation is essential for literary analysis. Students will analyze increasingly sophisticated rhetorical devices. Understanding figurative language enriches reading experience. These skills support creative writing and appreciation of literature.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING UNIT
-- ============================================================================

-- Opinion Essays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Opinion Essays' AND grade_level_min = 5),
  'Opinion Essays (Grade 5) Topic Guide',
  'Teaching students to write opinion pieces with logically grouped points',
  'OPINION ESSAYS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have Grade 4 experience with opinion writing. They should understand logical organization. Evidence use should be developing. Students should be writing multi-paragraph essays.

LEARNING OBJECTIVES:
- Introduce a topic and state an opinion clearly
- Create an organizational structure with logically grouped supporting points
- Provide logically ordered reasons supported by facts and details
- Link opinions and reasons using words, phrases, and clauses
- Provide a concluding statement or section

KEY CONCEPTS:
1) Opinion essays argue for a position using logical reasoning
2) Points should be grouped logically, not randomly listed
3) Each point needs supporting evidence
4) Transitions create coherent argument flow
5) Conclusions reinforce the opinion and leave impact

COMMON MISCONCEPTIONS:
- Listing reasons without logical grouping
- Providing insufficient evidence
- Weak transitions between paragraphs
- Conclusions that introduce new ideas
- Not addressing potential counterarguments

TEACHING SEQUENCE:
Teach logical organization:
- Group related points together
- Order points strategically (strongest first/last)
- Create clear paragraph focus
- Use transitions that show relationships

Develop evidence and reasoning:
- Each reason needs specific support
- Evidence can include facts, examples, anecdotes
- Explain how evidence supports the point

Build sophisticated transitions:
- Sequence: First, Additionally, Furthermore
- Contrast: However, On the other hand
- Consequence: Therefore, As a result
- Emphasis: Most importantly, Above all

Practice with meaningful topics. Authentic purposes motivate quality.

DIFFERENTIATION:
For struggling learners: Use structured templates with clear sections. Provide transition word banks. Focus on two well-developed points. Conference during writing.

For advanced learners: Address counterarguments. Use sophisticated evidence. Develop distinctive voice. Write for authentic audiences.

VOCABULARY:
Opinion, argument, reason, evidence, support, organize, transition, conclude, convince, logical

CONNECTION TO FUTURE LEARNING:
Opinion writing develops into argumentative writing. Students will use evidence-based reasoning across all subjects. Persuasive skills support civic engagement. These skills are essential for college and career success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opinion Essays' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Informative Essays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Informative Essays' AND grade_level_min = 5),
  'Informative Essays (Grade 5) Topic Guide',
  'Teaching students to write informational texts with clear organization',
  'INFORMATIVE ESSAYS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have Grade 4 experience with informational writing. They should be able to research and organize information. Understanding of various organizational patterns is important. Students should be writing multi-paragraph essays.

LEARNING OBJECTIVES:
- Introduce topics clearly with general observations and focus
- Develop topics with facts, definitions, details, quotations, and examples
- Group related information logically using organizational structures
- Link ideas using transitions
- Use precise language and domain-specific vocabulary

KEY CONCEPTS:
1) Informative essays explain topics clearly and thoroughly
2) Clear organizational structures aid comprehension
3) Development requires varied types of support
4) Precise vocabulary enhances clarity
5) Text features can support informative writing

COMMON MISCONCEPTIONS:
- Weak or missing organizational structure
- Inadequate development of ideas
- Imprecise or vague language
- Choppy paragraphs without transitions
- Including opinion in informative writing

TEACHING SEQUENCE:
Teach organizational options:
- Categories/classification
- Chronological sequence
- Compare and contrast
- Cause and effect
- Problem and solution

Develop topics thoroughly:
- Facts and statistics
- Definitions of key terms
- Detailed examples
- Quotations from experts
- Explanations of processes

Build transitions appropriate to structure:
- Chronological: First, Next, Then, Finally
- Compare/contrast: Similarly, In contrast, However
- Cause/effect: Because, As a result, Therefore

Use precise language. Replace vague words with specific ones. Incorporate domain vocabulary accurately.

DIFFERENTIATION:
For struggling learners: Choose clear organizational structures. Provide templates. Focus on clear explanation before elaboration. Support vocabulary use.

For advanced learners: Use sophisticated structures. Develop engaging voice within informative mode. Include complex text features. Write for authentic purposes.

VOCABULARY:
Informative, organize, develop, facts, details, vocabulary, precise, transition, explain, topic

CONNECTION TO FUTURE LEARNING:
Informative writing is essential across all subjects. Students will write increasingly complex research papers and reports. Clear explanation is crucial for academic and professional success. These skills support learning and communication in all contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Informative Essays' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Narrative Writing (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 5),
  'Narrative Writing (Grade 5) Topic Guide',
  'Teaching students to write narratives with developed plot and dialogue',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have Grade 4 experience with narrative writing. They should use dialogue and description. Understanding of narrative techniques is developing. Students should enjoy storytelling and writing.

LEARNING OBJECTIVES:
- Orient the reader with situation, narrator, and characters
- Organize events using effective techniques (pacing, dialogue, description)
- Use a variety of transitional words and phrases to manage sequence
- Use concrete words, sensory details, and precise language
- Provide a conclusion that follows from the narrated experience

KEY CONCEPTS:
1) Effective narratives use techniques to engage readers
2) Pacing controls how quickly events unfold
3) Dialogue and description work together to develop characters and events
4) Precise language creates vivid imagery
5) Conclusions should feel earned and meaningful

COMMON MISCONCEPTIONS:
- Rushing through events without development
- Dialogue that sounds unnatural
- Inconsistent pacing
- Vague language instead of concrete details
- Weak endings that do not satisfy

TEACHING SEQUENCE:
Master pacing techniques:
- Slow down for important moments with details
- Speed up through transitions
- Build tension toward climax
- Allow time for resolution

Develop through showing:
- Dialogue reveals character
- Actions show personality
- Sensory details create imagery
- Inner thoughts show motivation

Use transitions for sequence:
- Time transitions: Later, The next day, Meanwhile
- Scene transitions: Back at home, When they arrived
- Flashback signals: She remembered, Years ago

Craft meaningful endings that connect to the story''s meaning.

DIFFERENTIATION:
For struggling learners: Use story planning templates. Focus on one technique at a time. Write shorter narratives. Conference during writing.

For advanced learners: Experiment with complex structures. Develop theme through narrative. Create multi-dimensional characters. Use literary techniques purposefully.

VOCABULARY:
Narrative, pacing, dialogue, description, sensory, concrete, transition, sequence, character, conclusion

CONNECTION TO FUTURE LEARNING:
Narrative skills support creative expression throughout life. Students will develop sophisticated personal and fiction writing. These techniques transfer to many contexts. Storytelling is fundamental to human connection.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Research Projects (Grade 5)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Projects' AND grade_level_min = 5),
  'Research Projects (Grade 5) Topic Guide',
  'Teaching students to conduct research using multiple sources',
  'RESEARCH PROJECTS - TOPIC TEACHING GUIDE (GRADE 5)

PREREQUISITES:
Students should have Grade 4 experience with research. They should evaluate sources for relevance. Note-taking and paraphrasing should be developed. Understanding of source documentation is important.

LEARNING OBJECTIVES:
- Conduct sustained research projects to answer questions
- Gather relevant information from multiple sources
- Summarize or paraphrase information without plagiarizing
- Provide a list of sources
- Draw evidence from texts to support analysis

KEY CONCEPTS:
1) Research builds knowledge through multiple sources
2) Questions guide inquiry
3) Paraphrasing puts information in own words
4) Sources must be documented
5) Evidence from research supports claims

COMMON MISCONCEPTIONS:
- Copying instead of paraphrasing
- Using only one or two sources
- Not evaluating source reliability
- Disorganized notes leading to plagiarism
- Poor source documentation

TEACHING SEQUENCE:
Develop focused research questions:
- What do I want to learn?
- What questions will guide my research?
- How can I narrow broad topics?

Evaluate and select sources:
- Is this source reliable?
- Is it relevant to my questions?
- Is it appropriate for my purpose?

Take organized notes:
- Organize by question or subtopic
- Paraphrase in own words
- Record source information
- Note page numbers for quotes

Synthesize and write:
- Organize notes into outline
- Draft using integrated information
- Cite sources properly
- Use evidence to support claims

DIFFERENTIATION:
For struggling learners: Provide curated sources. Use structured note templates. Focus on fewer questions. Support paraphrasing explicitly.

For advanced learners: Evaluate source credibility deeply. Synthesize conflicting information. Use formal citation. Research complex, multi-faceted topics.

VOCABULARY:
Research, source, evaluate, paraphrase, synthesize, cite, evidence, question, reliable, document

CONNECTION TO FUTURE LEARNING:
Research skills are essential for academic success. Students will conduct increasingly sophisticated projects. Information literacy is crucial in our digital world. These skills support lifelong learning and inquiry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Projects' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 5 Reading Topics: 16 comprehensive prompts
-- Units covered:
--   1. Reading Literature (4 topics)
--   2. Reading Informational Text (4 topics)
--   3. Language and Vocabulary (4 topics)
--   4. Writing (4 topics)
-- ============================================================================
