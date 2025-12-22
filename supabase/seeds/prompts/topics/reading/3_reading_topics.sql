-- Grade 3 Reading Topic Prompts
-- Comprehensive teaching guides for Grade 3 Reading/ELA topics
-- Each prompt provides 500+ words of pedagogical guidance

-- ============================================================================
-- READING LITERATURE UNIT
-- ============================================================================

-- Central Message and Theme
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Central Message and Theme' AND grade_level_min = 3),
  'Central Message and Theme (Grade 3) Topic Guide',
  'Teaching students to determine the lesson or moral of stories',
  'CENTRAL MESSAGE AND THEME - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand basic story elements (characters, setting, plot). They should have experience identifying what stories are "mostly about." Familiarity with fables and folk tales helps as these have explicit morals. Students should be able to retell stories and describe events.

LEARNING OBJECTIVES:
- Identify the central message, lesson, or moral of a story
- Explain how key details support the central message
- Distinguish between topic and theme
- Recognize common themes across different stories
- Articulate the theme in their own words

KEY CONCEPTS:
1) The central message is the big idea or lesson the author wants readers to understand
2) Theme is different from topic - topic is what the story is about, theme is what it teaches
3) Themes are often life lessons (friendship is important, hard work pays off, be yourself)
4) Details in the story (what characters do, say, and learn) support the theme
5) Different stories can share the same theme

COMMON MISCONCEPTIONS:
- Confusing theme with summary or plot
- Stating the topic instead of the theme ("this story is about friendship" vs. "true friends help each other")
- Thinking every story has one obvious theme (themes can be interpreted)
- Not using text evidence to support theme identification
- Believing the theme is always stated directly

TEACHING SEQUENCE:
Begin with fables and folk tales where morals are explicit. Read Aesop''s fables and discuss the stated moral. Then practice inferring the lesson before reading the stated moral. This builds understanding of what a "lesson" means in stories.

Distinguish topic from theme explicitly. Topic = one or two words (friendship, courage, family). Theme = a complete sentence about what the story teaches (Friends help each other through hard times). Practice converting topics to theme statements.

Use a theme evidence chart. After reading, identify the theme at the top. Then find 2-3 specific details that support this theme. Details might include what the character learns, how the character changes, or consequences of actions.

Explore common themes across literature: working together is better than working alone, be kind to others, believe in yourself, family is important, good things come to those who work hard. Notice when different stories share themes.

DIFFERENTIATION:
For struggling learners: Start with very short texts with obvious lessons. Provide theme choices to select from. Use visual theme posters as references. Focus on character change to identify lessons.

For advanced learners: Explore stories with multiple or complex themes. Discuss how readers can interpret themes differently. Compare themes across genres. Analyze how authors develop themes through literary elements.

VOCABULARY:
Theme, central message, lesson, moral, topic, detail, evidence, support, story, character, learn

CONNECTION TO FUTURE LEARNING:
Theme analysis is central to literary study across all grades. Students will explore increasingly complex themes in novels and plays. Understanding how authors develop themes supports deeper literary analysis. Theme identification helps students connect literature to their own lives and the world.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Central Message and Theme' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Character Traits
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Traits' AND grade_level_min = 3),
  'Character Traits (Grade 3) Topic Guide',
  'Teaching students to describe characters through their actions, thoughts, and words',
  'CHARACTER TRAITS - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should be able to identify characters in stories. They should understand that characters have feelings and motivations. Experience describing people using adjectives is helpful. Students should be reading connected texts at grade level.

LEARNING OBJECTIVES:
- Describe characters using their traits (brave, kind, curious, stubborn)
- Use evidence from character actions, words, and thoughts to identify traits
- Explain how character traits affect story events
- Track how characters change throughout a story
- Compare traits of different characters

KEY CONCEPTS:
1) Character traits are qualities that describe what a character is like as a person
2) We learn about traits through what characters DO, SAY, and THINK
3) Traits are different from feelings - traits are lasting qualities; feelings change
4) Characters can have multiple traits, even conflicting ones
5) Character traits often drive story events and influence plot

COMMON MISCONCEPTIONS:
- Confusing feelings (happy, sad) with traits (kind, brave)
- Describing physical appearance instead of personality traits
- Making claims about traits without text evidence
- Thinking characters have only one trait
- Not recognizing that characters can change and grow

TEACHING SEQUENCE:
Build a class trait vocabulary. Create a word wall of character trait words organized by positive/negative or by category. Include words like: brave, kind, curious, clever, stubborn, selfish, honest, shy, determined, patient, greedy, generous.

Model the evidence-to-trait connection. "The text says Charlotte stayed up all night to save Wilbur. What does this action tell us about Charlotte? She is loyal and caring because she sacrificed her rest to help her friend." Practice connecting actions to traits.

Use character trait graphic organizers. Place the trait in the center with evidence from actions, words, and thoughts branching out. This makes the connection between evidence and inference explicit.

Track character development across longer texts. "How was the character at the beginning? What happened that made them change? What are they like now?" This introduces dynamic characterization.

DIFFERENTIATION:
For struggling learners: Provide a limited trait word bank. Use picture books with clear character actions. Match given traits to text evidence. Focus on one character before comparing.

For advanced learners: Analyze complex characters with conflicting traits. Explore character motivations. Compare characters across different stories. Discuss how authors develop characters through techniques.

VOCABULARY:
Trait, character, personality, action, behavior, evidence, describe, change, develop, motivation, compare

CONNECTION TO FUTURE LEARNING:
Character analysis is essential for literary interpretation. Students will analyze character motivation, development, and relationships in novels and plays. Understanding character helps students connect to literature and develop empathy. Character analysis supports understanding of real human behavior.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Traits' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Point of View
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Point of View' AND grade_level_min = 3),
  'Point of View (Grade 3) Topic Guide',
  'Teaching students to distinguish their point of view from narrator or characters',
  'POINT OF VIEW - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand that stories have narrators who tell the story. They should be able to identify characters and their perspectives. Experience with both first-person and third-person texts is helpful. Students should understand that different people can see things differently.

LEARNING OBJECTIVES:
- Distinguish between first-person and third-person narration
- Identify whose point of view is presented in a story
- Distinguish the reader''s point of view from the narrator''s or character''s
- Explain how different characters might view events differently
- Recognize how point of view affects what readers know

KEY CONCEPTS:
1) Point of view is who is telling the story and what they can see/know
2) First person uses "I" - the narrator is a character in the story
3) Third person uses "he/she/they" - the narrator is outside the story
4) Different characters can have different opinions about the same events
5) Readers can have their own opinions different from characters

COMMON MISCONCEPTIONS:
- Confusing point of view with opinion
- Not recognizing first vs. third person narrative clues
- Thinking point of view is about physical position (where someone stands)
- Difficulty separating reader''s feelings from character''s feelings
- Not realizing narrators can be unreliable or limited in knowledge

TEACHING SEQUENCE:
Introduce narrative voice through pronoun clues. First person: "I went to the store" - the narrator is telling their own story. Third person: "She went to the store" - someone else is telling the story. Practice identifying which is used.

Compare character perspectives within stories. In The True Story of the Three Little Pigs, how does the wolf see events versus how the pigs see them? Both are telling the truth from their point of view. This shows how perspective affects the story.

Separate reader perspective from character perspective. "The character thinks hiding is a good idea, but I as a reader can see the danger. My point of view is different from the character''s because I know things they don''t."

Use perspective-taking activities. Rewrite a scene from a different character''s point of view. This deepens understanding of how point of view affects narrative.

DIFFERENTIATION:
For struggling learners: Focus on first vs. third person identification first. Use very clear examples. Provide pronoun highlighting activities. Use familiar stories to practice.

For advanced learners: Explore limited vs. omniscient third person. Discuss unreliable narrators. Analyze how authors choose point of view for effect. Compare versions of stories told from different perspectives.

VOCABULARY:
Point of view, narrator, first person, third person, perspective, character, opinion, reader, I, he, she, they

CONNECTION TO FUTURE LEARNING:
Point of view is essential for literary analysis at all levels. Students will explore how narration affects meaning, analyze unreliable narrators, and consider author''s choices. Understanding perspective supports critical thinking about bias in both fiction and nonfiction. This skill transfers to analyzing historical accounts and news sources.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Point of View' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Comparing Stories
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Stories' AND grade_level_min = 3),
  'Comparing Stories (Grade 3) Topic Guide',
  'Teaching students to compare themes, settings, and plots across texts',
  'COMPARING STORIES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand theme, setting, and plot independently. They should have experience with Venn diagrams or other comparison tools. Reading multiple versions of familiar tales is helpful. Students should be able to describe story elements.

LEARNING OBJECTIVES:
- Compare and contrast themes across different stories
- Compare settings and their effects on stories
- Compare plot structures and events
- Identify similarities and differences using text evidence
- Explain how stories by the same author are alike and different

KEY CONCEPTS:
1) Stories can be compared by examining their elements: theme, setting, characters, plot
2) Different stories may share similar themes even with different characters and settings
3) The same story can be told differently in different cultures or time periods
4) Authors often have common themes or styles across their works
5) Comparison deepens understanding of each individual text

COMMON MISCONCEPTIONS:
- Only comparing surface features (both have animals) without deeper analysis
- Not providing evidence for comparisons
- Treating every difference as equally important
- Difficulty holding two stories in mind for comparison
- Not recognizing that comparison includes both similarities AND differences

TEACHING SEQUENCE:
Begin with fractured fairy tales and cultural variants. Compare Cinderella stories from different cultures. Use a structured comparison chart: What is the same? What is different? Why might these differences exist?

Compare stories by the same author. Read multiple books by one author (Kevin Henkes, Patricia Polacco, etc.) and notice recurring themes, character types, or settings. Authors often return to similar ideas.

Use comparison graphic organizers. Venn diagrams work for two texts. T-charts can compare specific elements. Triple Venn diagrams work for three texts. The visual organization supports analysis.

Move from structured to open comparison. Initially provide the elements to compare. Then have students identify what is most important or interesting to compare. This develops analytical thinking.

DIFFERENTIATION:
For struggling learners: Compare very similar texts first. Use structured comparison templates. Focus on one element at a time. Reread both texts before comparing.

For advanced learners: Compare across genres (how is this folk tale theme present in a realistic fiction story?). Analyze why authors make different choices. Write comparative essays with text evidence.

VOCABULARY:
Compare, contrast, similar, different, theme, setting, plot, character, evidence, alike, both, however, whereas

CONNECTION TO FUTURE LEARNING:
Comparative analysis is fundamental to literary study. Students will write comparative essays and analyze intertextual connections. Comparison supports critical thinking across all subjects. Understanding how stories relate to each other builds a rich literary understanding.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Stories' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- READING INFORMATIONAL TEXT UNIT
-- ============================================================================

-- Main Idea and Details (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Main Idea and Details' AND grade_level_min = 3),
  'Main Idea and Details (Grade 3) Topic Guide',
  'Teaching students to identify main ideas and key supporting details in nonfiction',
  'MAIN IDEA AND DETAILS (INFORMATIONAL) - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should have second-grade experience with main idea in simpler texts. They should understand the difference between fiction and nonfiction. Familiarity with paragraph structure is helpful. Students should be able to distinguish between more and less important information.

LEARNING OBJECTIVES:
- Identify the main idea of paragraphs and longer texts
- Identify key details that support the main idea
- Explain how details connect to and support the main idea
- Use the main idea and details to summarize informational text
- Recognize that paragraphs often have their own main ideas within larger texts

KEY CONCEPTS:
1) The main idea is the most important point the author wants readers to understand
2) Key details are facts or information that explain, support, or tell more about the main idea
3) Not all details are key details - some are interesting but not essential
4) Each paragraph often has its own main idea that contributes to the text''s overall main idea
5) Main idea + key details = a summary

COMMON MISCONCEPTIONS:
- Confusing an interesting detail with the main idea
- Including too many minor details in summaries
- Thinking the main idea is always in the first sentence
- Not distinguishing between key details and less important ones
- Difficulty synthesizing main ideas across multiple paragraphs

TEACHING SEQUENCE:
Model main idea identification explicitly. Read a short informational paragraph. Think aloud: "I see lots of facts here. What are they all about? What is the author really trying to tell me?" Arrive at the main idea through analysis of details.

Teach the "topic + what about it" formula. The topic is the subject (whales). The main idea is the topic + what the author wants you to know about it (Whales have many adaptations that help them live in the ocean).

Use graphic organizers consistently. Main idea at the top, key details below. Practice identifying 2-3 key details that directly support the main idea. Ask: "Does this detail tell more about the main idea? Is it essential?"

Apply to longer texts. Identify main ideas of individual paragraphs, then synthesize into the main idea of the whole text. This builds toward summarization skills.

DIFFERENTIATION:
For struggling learners: Use very short texts with explicit main ideas. Provide multiple choice options. Highlight topic sentences. Use paired reading with discussion.

For advanced learners: Work with implied main ideas. Analyze how authors structure support for main ideas. Summarize longer, more complex texts. Evaluate the quality of supporting details.

VOCABULARY:
Main idea, key details, supporting details, topic, information, fact, summary, paragraph, text, explain, support

CONNECTION TO FUTURE LEARNING:
Main idea identification is essential for comprehension and note-taking across all subjects. Students will apply these skills in science, social studies, and other content areas. This skill supports research and academic writing. Identifying main ideas is crucial for test-taking and studying.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Main Idea and Details' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Text Features
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Text Features' AND grade_level_min = 3),
  'Text Features (Grade 3) Topic Guide',
  'Teaching students to use headings, glossaries, indexes, and other features',
  'TEXT FEATURES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand the difference between fiction and nonfiction. They should have some experience with informational books. Basic understanding of how books are organized is helpful. Students should know how to find information in texts.

LEARNING OBJECTIVES:
- Identify and use text features including headings, subheadings, glossaries, and indexes
- Understand the purpose of each text feature
- Use text features to locate information efficiently
- Explain how text features help readers understand content
- Apply text feature knowledge when reading across subjects

KEY CONCEPTS:
1) Text features are parts of a text that help organize and explain information
2) Headings and subheadings show how information is organized and help find specific content
3) Glossaries define important vocabulary words (usually at the end)
4) Indexes list topics alphabetically with page numbers (at the very end)
5) Other features include bold words, captions, diagrams, maps, charts, and tables

COMMON MISCONCEPTIONS:
- Skipping text features instead of using them
- Confusing the glossary with the index
- Not understanding how headings indicate topic organization
- Missing information contained in captions, diagrams, or sidebars
- Thinking text features are optional extras rather than essential content

TEACHING SEQUENCE:
Introduce text features through a scavenger hunt. Give students informational books and have them find examples of different features. Build a class chart of text features and their purposes.

Model strategic use of text features. "I want to know about what wolves eat. Instead of reading the whole book, I''ll use the index to find ''diet'' or ''food.'' The index says page 12. Now I''ll read just that section."

Practice with authentic questions. Give students questions that can be answered using text features. "Find the definition of ''hibernate'' - where will you look? Find the page about winter survival - how will you locate it quickly?"

Connect to content area reading. Science and social studies texts are rich with text features. Apply strategies when reading these texts for class.

DIFFERENTIATION:
For struggling learners: Focus on one feature at a time. Use simple texts with clear features. Create text feature reference cards. Practice with guided support.

For advanced learners: Analyze why authors use certain features in certain places. Evaluate the effectiveness of text features. Create informational texts with appropriate features.

VOCABULARY:
Text feature, heading, subheading, glossary, index, bold, caption, diagram, chart, table, map, sidebar, locate, organize

CONNECTION TO FUTURE LEARNING:
Text feature fluency supports research and study skills. Students will encounter increasingly complex informational texts with sophisticated features. These skills are essential for textbook reading, online research, and test-taking. Understanding text structure through features supports comprehension of complex content.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Text Features' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Cause and Effect
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Cause and Effect' AND grade_level_min = 3),
  'Cause and Effect (Grade 3) Topic Guide',
  'Teaching students to describe relationships between events in informational text',
  'CAUSE AND EFFECT - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand basic story sequence. They should have experience with "why" and "what happened" questions. Understanding that events can be connected is developing. Students should be reading grade-level informational texts.

LEARNING OBJECTIVES:
- Identify cause and effect relationships in informational text
- Distinguish between cause (why something happened) and effect (what happened)
- Recognize signal words for cause and effect (because, so, therefore, as a result)
- Explain how scientific, historical, and technical events are connected
- Apply cause-effect thinking to understand complex processes

KEY CONCEPTS:
1) A cause is why something happens - it comes before and leads to the effect
2) An effect is what happens - it is the result of the cause
3) One cause can have multiple effects; one effect can have multiple causes
4) Authors use signal words to show cause-effect relationships
5) Understanding cause and effect helps us understand how the world works

COMMON MISCONCEPTIONS:
- Confusing cause with effect (reversing the relationship)
- Thinking events that happen close together are always cause and effect
- Missing cause-effect relationships when signal words are not present
- Identifying only one cause or effect when multiple exist
- Confusing sequence with causation (just because B follows A does not mean A caused B)

TEACHING SEQUENCE:
Begin with obvious everyday cause-effect examples. "I didn''t water the plant, so it died." Identify the cause and effect. Practice with many simple examples before moving to text.

Teach signal words explicitly. Create a cause-effect signal word chart: because, since, therefore, so, as a result, consequently, due to, if...then, leads to, causes, results in. Practice finding these in texts.

Use graphic organizers. Cause → Effect arrows show the relationship. Sometimes use chains: Cause → Effect → Effect (the first effect becomes a cause for the next).

Apply to content area texts. Science (Why do plants grow toward light?), history (What caused people to move west?), and technical texts (What happens when you...) are rich with cause-effect relationships.

DIFFERENTIATION:
For struggling learners: Use explicit signal words initially. Provide cause-effect sentence frames. Work with one clear cause-effect pair before multiple. Use familiar topics.

For advanced learners: Analyze multiple causes and effects. Identify implicit cause-effect relationships. Evaluate whether cause-effect claims are supported. Explore cause-effect chains.

VOCABULARY:
Cause, effect, result, because, therefore, so, since, leads to, due to, as a result, consequence, relationship

CONNECTION TO FUTURE LEARNING:
Cause-effect understanding is fundamental for science, history, and critical thinking. Students will analyze complex causation in historical events and scientific processes. This skill supports argumentation and evidence evaluation. Understanding causation helps students make sense of the world and make predictions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cause and Effect' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Comparing Texts (Informational)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Texts' AND grade_level_min = 3),
  'Comparing Texts - Informational (Grade 3) Topic Guide',
  'Teaching students to compare information across different texts on the same topic',
  'COMPARING INFORMATIONAL TEXTS - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should identify main ideas and details in individual texts. They should have experience with comparison using Venn diagrams or charts. Reading multiple sources on the same topic requires sufficient background knowledge. Students should understand that sources can differ.

LEARNING OBJECTIVES:
- Compare and contrast information from different texts on the same topic
- Identify similarities and differences in key points
- Recognize when sources agree and disagree
- Use multiple sources to build deeper understanding
- Synthesize information from multiple texts

KEY CONCEPTS:
1) Different authors may emphasize different aspects of the same topic
2) Sources can provide complementary information that builds fuller understanding
3) Sometimes sources disagree - this requires critical evaluation
4) Comparing sources helps identify what is most important and well-supported
5) Good researchers consult multiple sources

COMMON MISCONCEPTIONS:
- Treating all information as equally valid or important
- Not noticing when sources contradict each other
- Only looking for differences without seeing how sources complement
- Difficulty integrating information across sources
- Assuming newer sources are always more accurate

TEACHING SEQUENCE:
Begin with two short texts on the same topic. Read both and create a comparison chart: What does Text 1 say? What does Text 2 say? What do both say? Use a high-interest topic like animals or sports.

Model synthesis thinking. "Text 1 told me about where bears live. Text 2 told me about what bears eat. Putting these together, I understand bears better than I would from just one text."

Address disagreement explicitly. "Text 1 says wolves are dangerous. Text 2 says wolves rarely attack humans. What should I think? Let''s look at the evidence each provides..."

Connect to research projects. When students research topics, require consulting multiple sources. Use graphic organizers to track information across sources.

DIFFERENTIATION:
For struggling learners: Use very short texts with clear similarities and differences. Provide structured comparison templates. Work with just two sources initially. Use familiar topics.

For advanced learners: Compare three or more sources. Analyze why sources might differ. Evaluate source credibility. Write synthesis paragraphs combining information.

VOCABULARY:
Compare, contrast, source, text, topic, agree, disagree, information, similar, different, both, synthesis

CONNECTION TO FUTURE LEARNING:
Comparing sources is fundamental to research and critical literacy. Students will evaluate sources for reliability and bias. Synthesis across sources is essential for academic writing. These skills support information literacy in digital environments where sources vary widely in quality.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Texts' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LANGUAGE AND VOCABULARY UNIT
-- ============================================================================

-- Context Clues (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Context Clues' AND grade_level_min = 3),
  'Context Clues (Grade 3) Topic Guide',
  'Teaching students to use sentence context to determine word meanings',
  'CONTEXT CLUES (GRADE 3) - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have second-grade experience with basic context clues. They should understand that unknown words can often be figured out. Comfort with reading connected text is important. Students should not skip unknown words but attempt to determine meaning.

LEARNING OBJECTIVES:
- Use context within and around sentences to determine word meanings
- Identify different types of context clues (definition, example, synonym, antonym)
- Apply context clue strategies independently while reading
- Verify guessed meanings using context and reference materials
- Develop vocabulary through contextual reading

KEY CONCEPTS:
1) Context clues are hints in the surrounding text that help determine word meaning
2) Definition clues: the word is defined in the sentence
3) Example clues: examples illustrate the word''s meaning
4) Synonym clues: a similar word appears nearby
5) Antonym clues: an opposite word appears, often with signal words like "unlike" or "however"

COMMON MISCONCEPTIONS:
- Giving up on unknown words instead of looking for clues
- Looking only at the single sentence rather than surrounding text
- Assuming any nearby word is a clue to meaning
- Not checking if the guessed meaning makes sense
- Over-relying on one type of context clue

TEACHING SEQUENCE:
Teach context clue types explicitly with clear examples:
- Definition: "The arachnid, a type of eight-legged creature, spun its web." (defined in text)
- Example: "She loved tropical fruits like mangoes, papayas, and guavas." (examples show the category)
- Synonym: "The immense, huge building towered over us." (synonym nearby)
- Antonym: "Unlike her timid sister, Maya was bold." (opposite given)

Model the strategy step-by-step:
1) Identify the unknown word
2) Read the sentence and surrounding sentences
3) Look for clues (definitions, examples, synonyms, antonyms)
4) Make a guess about the meaning
5) Check: Does this meaning make sense in context?

Practice with authentic texts across genres. Use content-area texts where vocabulary is often defined or exemplified. Build habits of looking for clues rather than skipping or guessing randomly.

DIFFERENTIATION:
For struggling learners: Use sentences with obvious context clues. Identify the clue type before guessing meaning. Provide multiple choice options. Work with familiar topics.

For advanced learners: Work with subtler context clues. Identify multiple clue types in complex texts. Use context alongside word parts. Evaluate when context is insufficient.

VOCABULARY:
Context clues, meaning, definition, example, synonym, antonym, surrounding, sentence, guess, check, unknown word

CONNECTION TO FUTURE LEARNING:
Context clue use is essential for independent vocabulary learning throughout life. Students will encounter unfamiliar words constantly as texts become more complex. This strategy works alongside morphological analysis and dictionary use. Strong context clue skills support reading across all content areas.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Context Clues' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Roots and Affixes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Roots and Affixes' AND grade_level_min = 3),
  'Roots and Affixes (Grade 3) Topic Guide',
  'Teaching students to use prefixes, suffixes, and root words for meaning',
  'ROOTS AND AFFIXES - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should recognize common prefixes and suffixes from Grade 2 instruction. They should understand that words are made of parts. Basic understanding that affixes change meaning is developing. Students should be reading multisyllabic words.

LEARNING OBJECTIVES:
- Identify and understand common prefixes (un-, re-, pre-, dis-, mis-, non-)
- Identify and understand common suffixes (-ful, -less, -ly, -ness, -ment, -able)
- Use affix meanings to determine unfamiliar word meanings
- Identify root words within affixed words
- Apply morphological knowledge when reading and writing

KEY CONCEPTS:
1) Root words carry the core meaning; affixes modify that meaning
2) Prefixes come before the root and change the meaning (un- = not, re- = again)
3) Suffixes come after the root and often change word function (quick → quickly)
4) Multiple affixes can attach to one root (un-help-ful-ly)
5) Understanding word parts helps with thousands of words, not just the ones practiced

COMMON MISCONCEPTIONS:
- Not recognizing affixes as separate meaningful parts
- Thinking every word beginning with "un" has the prefix un- (uncle, under)
- Forgetting root meaning when focusing on affixes
- Not seeing connections between related words in word families
- Confusion with spelling changes when adding suffixes

TEACHING SEQUENCE:
Teach affixes as meaningful units with consistent meanings:
- Prefixes: un- (not), re- (again), pre- (before), dis- (not/opposite), mis- (wrongly), non- (not)
- Suffixes: -ful (full of), -less (without), -ly (how), -ness (state of), -ment (act of), -able (can be)

Use the "peel and reveal" strategy:
1) Find the prefix (at the beginning)
2) Find the suffix (at the end)
3) Find the root word (what''s left)
4) Combine meanings to understand the whole word

Build word families from roots. Show how one root generates many words: help → helpful, helpless, unhelpful, helper, helping. This demonstrates the power of morphological knowledge.

Apply during authentic reading. When encountering unknown words, prompt: "Do you see any word parts you know?" Make morphological analysis a regular strategy.

DIFFERENTIATION:
For struggling learners: Focus on the most common affixes one at a time. Use consistent visuals. Build words with manipulatives. Practice with word sorts.

For advanced learners: Introduce Latin and Greek roots. Analyze words with multiple affixes. Explore etymology. Use morphology to learn academic vocabulary.

VOCABULARY:
Root word, base word, prefix, suffix, affix, meaning, word part, before, after, change, family

CONNECTION TO FUTURE LEARNING:
Morphological knowledge dramatically expands vocabulary. Students will learn Greek and Latin roots prevalent in academic and scientific vocabulary. Understanding word parts supports spelling. This knowledge transfers across all content areas where specialized vocabulary appears.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Roots and Affixes' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Using a Dictionary
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Using a Dictionary' AND grade_level_min = 3),
  'Using a Dictionary (Grade 3) Topic Guide',
  'Teaching students to use print and digital dictionaries and glossaries',
  'USING A DICTIONARY - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should know alphabetical order to the third letter. They should understand that dictionaries define words. Basic understanding of guide words is helpful. Students should recognize when they need to look up a word.

LEARNING OBJECTIVES:
- Use print dictionaries to find word meanings, pronunciations, and parts of speech
- Use digital dictionaries effectively
- Use glossaries in textbooks and other resources
- Choose the correct definition for the context
- Verify word meanings discovered through context clues

KEY CONCEPTS:
1) Dictionaries are organized alphabetically to help find words quickly
2) Guide words at the top of pages show the first and last entry on that page
3) Entries include pronunciation, part of speech, and multiple definitions
4) Context determines which definition applies when words have multiple meanings
5) Glossaries are mini-dictionaries for specific books or subjects

COMMON MISCONCEPTIONS:
- Using the first definition without considering context
- Not knowing how to use guide words efficiently
- Difficulty with pronunciation symbols
- Frustration with alphabetizing beyond the first letter
- Not recognizing when a glossary would be more efficient than a dictionary

TEACHING SEQUENCE:
Practice alphabetizing skills. Review alphabetical order to the first, second, and third letter. Make this automatic before introducing dictionary skills.

Teach guide word strategy. "If I''m looking for ''blanket,'' and the guide words are ''blade'' and ''bland,'' is ''blanket'' on this page? Bl-a-n comes after bl-a-d and before bl-a-n-d, so yes!"

Navigate dictionary entries. Point out: the entry word (in bold), pronunciation guide, part of speech abbreviation, numbered definitions, example sentences. Practice reading all parts of entries.

Choose the right definition. "The word ''run'' has many definitions. In ''I run every morning,'' which definition fits? In ''a run in my stocking,'' which definition fits?" Context determines meaning.

Practice with digital dictionaries. Many students will use these more often. Teach how to search, navigate results, and use audio pronunciations.

DIFFERENTIATION:
For struggling learners: Use simple dictionaries with fewer definitions. Focus on frequently needed words. Provide guide word practice sheets. Pair with a partner for lookups.

For advanced learners: Use advanced dictionaries with etymology and usage notes. Explore thesaurus connections. Analyze how words gain multiple meanings. Compare dictionary and glossary entries.

VOCABULARY:
Dictionary, glossary, alphabetical order, guide words, entry, definition, pronunciation, part of speech, context, meaning

CONNECTION TO FUTURE LEARNING:
Dictionary skills support independent word learning and verification of context-based guesses. Students will use specialized dictionaries and thesauruses. Digital literacy includes effective use of online reference tools. These skills support vocabulary development and precise language use in writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using a Dictionary' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Grammar Skills
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Grammar Skills' AND grade_level_min = 3),
  'Grammar Skills (Grade 3) Topic Guide',
  'Teaching students to use nouns, verbs, adjectives, and adverbs correctly',
  'GRAMMAR SKILLS - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should understand basic sentence structure. They should recognize nouns and verbs. Experience with descriptive writing is helpful. Students should be producing written work regularly.

LEARNING OBJECTIVES:
- Identify and use different types of nouns (common, proper, abstract, collective)
- Use verb tenses correctly and consistently
- Use adjectives and adverbs to enhance writing
- Distinguish between adjectives (describe nouns) and adverbs (describe verbs)
- Apply grammar knowledge to improve writing

KEY CONCEPTS:
1) Nouns name people, places, things, and ideas (including abstract nouns like "happiness")
2) Verbs show action or state of being and change form to show tense
3) Adjectives describe nouns (the tall tree, a beautiful sunset)
4) Adverbs describe verbs, adjectives, or other adverbs (run quickly, very tall)
5) Good writers choose precise nouns, verbs, adjectives, and adverbs

COMMON MISCONCEPTIONS:
- Confusing adjectives and adverbs (saying "quick" when meaning "quickly")
- Shifting verb tenses inconsistently within writing
- Overusing adjectives and adverbs instead of choosing precise nouns and verbs
- Not recognizing abstract nouns as nouns
- Using "good" as an adverb instead of "well"

TEACHING SEQUENCE:
Review and extend noun knowledge. Introduce types: common/proper, concrete/abstract, singular/plural, collective. Practice identifying each type. Use nouns precisely in writing.

Build verb tense consistency. Review past, present, and future tenses. Practice maintaining consistent tense within writing. Address common irregular verb errors.

Develop adjective and adverb use. Distinguish by what they modify (adjective → noun; adverb → verb). Many adverbs end in -ly but not all. Practice expanding sentences with precise adjectives and adverbs.

Apply in writing revision. During editing, students review for: tense consistency, precise word choice, effective use of modifiers. Grammar knowledge serves writing improvement.

DIFFERENTIATION:
For struggling learners: Focus on one part of speech at a time. Use color-coding in sentences. Provide reference charts. Practice with oral sentences before written.

For advanced learners: Introduce comparative and superlative forms. Explore word choice effects on style and tone. Analyze grammar in mentor texts. Experiment with sentence variety.

VOCABULARY:
Noun, verb, adjective, adverb, tense, past, present, future, modify, describe, sentence, part of speech

CONNECTION TO FUTURE LEARNING:
Grammar knowledge supports clear communication in writing. Students will learn more sophisticated grammatical structures. Understanding parts of speech helps with foreign language study. Grammatical awareness supports editing and revision processes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Grammar Skills' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- WRITING UNIT
-- ============================================================================

-- Opinion Writing (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 3),
  'Opinion Writing (Grade 3) Topic Guide',
  'Teaching students to write organized opinions with supporting reasons',
  'OPINION WRITING - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should have second-grade experience with opinion writing. They should understand the difference between facts and opinions. Basic paragraph structure is developing. Students should be able to provide reasons for opinions orally.

LEARNING OBJECTIVES:
- Introduce a topic and clearly state an opinion
- Organize reasons logically with supporting facts and details
- Use linking words and phrases to connect ideas
- Provide a concluding statement or section
- Write for authentic purposes and audiences

KEY CONCEPTS:
1) Opinion writing shares what you think and aims to convince readers
2) A clear thesis states your opinion on a topic
3) Reasons must be organized logically - strongest first/last, or by category
4) Each reason should be supported with facts, examples, or explanations
5) Linking words (because, therefore, for example) connect ideas

COMMON MISCONCEPTIONS:
- Stating an opinion without adequate support
- Providing reasons that do not truly support the opinion
- Disorganized structure that jumps between ideas
- Weak or missing conclusions
- Confusing facts with opinions or vice versa

TEACHING SEQUENCE:
Study mentor texts. Analyze opinion articles, book reviews, and persuasive letters. Notice how writers state opinions, organize reasons, and provide support. Borrow techniques.

Plan before writing. Use graphic organizers: Opinion at top, 3-4 reasons below, supporting details under each reason, conclusion at bottom. Planning prevents disorganization.

Teach paragraph structure within opinion writing:
- Introduction: Hook + opinion statement
- Body paragraphs: One reason per paragraph with support
- Conclusion: Restate opinion + final thought

Practice with meaningful topics. Write about school issues, book recommendations, community concerns. Authentic audiences and purposes motivate quality writing.

DIFFERENTIATION:
For struggling learners: Use structured templates. Provide sentence starters for each section. Focus on two reasons before expecting more. Conference during writing.

For advanced learners: Acknowledge counterarguments. Use more sophisticated evidence. Write for real audiences and purposes. Develop voice and style.

VOCABULARY:
Opinion, reason, support, evidence, convince, because, therefore, for example, introduction, conclusion, paragraph

CONNECTION TO FUTURE LEARNING:
Opinion writing develops into argumentative writing with evidence and counterarguments. These skills are essential for academic writing across all subjects. Persuasive writing supports civic engagement and advocacy. The ability to argue effectively is crucial for college and career success.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Opinion Writing' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Informative Writing (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Informative Writing' AND grade_level_min = 3),
  'Informative Writing (Grade 3) Topic Guide',
  'Teaching students to write texts that examine topics with facts and details',
  'INFORMATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should have second-grade experience with informational writing. They should understand how to find and use facts. Basic paragraph structure is developing. Experience reading informational texts provides models.

LEARNING OBJECTIVES:
- Introduce a topic clearly and group related information
- Develop the topic with facts, definitions, and details
- Use linking words to connect ideas within and across paragraphs
- Include illustrations or text features when useful
- Provide a concluding statement or section

KEY CONCEPTS:
1) Informative writing teaches readers about a topic using facts
2) Information should be organized logically - by category, chronologically, or by importance
3) Each paragraph focuses on one subtopic or aspect
4) Text features (headings, diagrams, glossaries) can enhance informative writing
5) Good informative writing is clear, organized, and well-supported

COMMON MISCONCEPTIONS:
- Including opinions in informative writing
- Disorganized information that jumps between topics
- Not enough detail to fully explain the topic
- Plagiarism or near-copying from sources
- Missing introduction or conclusion

TEACHING SEQUENCE:
Study informational mentor texts. Notice how authors introduce topics, organize information, use text features, and conclude. Analyze what makes informative writing effective.

Plan with organizational structures:
- Categories: subtopics as sections (animals: habitat, diet, behavior)
- Chronological: events in time order (history, processes)
- Compare/contrast: similarities and differences
- Problem/solution: issue and response

Draft with focus on clarity and organization. Each paragraph develops one idea fully. Linking words connect ideas. Information is accurate and well-explained.

Include text features strategically. Headings organize content. Diagrams clarify complex information. Bold words signal vocabulary. Captions explain images.

DIFFERENTIATION:
For struggling learners: Write about familiar topics. Use structured templates. Provide research support. Focus on clear organization before elaboration.

For advanced learners: Research less familiar topics. Synthesize multiple sources. Include sophisticated text features. Develop engaging introductions and conclusions.

VOCABULARY:
Informative, topic, facts, details, organize, paragraph, heading, diagram, introduce, conclude, explain

CONNECTION TO FUTURE LEARNING:
Informative writing is essential across all academic subjects. Students will write reports, research papers, and explanatory essays. These skills support content learning and assessment. Clear informative writing is crucial for professional communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Informative Writing' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Narrative Writing (Grade 3)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 3),
  'Narrative Writing (Grade 3) Topic Guide',
  'Teaching students to write stories with dialogue and descriptive details',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should have second-grade experience with narrative writing. They should understand story structure (beginning, middle, end). Exposure to narrative mentor texts is important. Students should enjoy telling stories.

LEARNING OBJECTIVES:
- Establish a situation and introduce a narrator and/or characters
- Use dialogue and description to develop characters and events
- Use temporal words and phrases to signal event order
- Provide a sense of closure
- Use narrative techniques to engage readers

KEY CONCEPTS:
1) Narratives tell stories with characters, settings, and events
2) Effective beginnings hook readers and establish the story situation
3) Dialogue brings characters to life and advances the plot
4) Descriptive details help readers picture the story
5) Strong endings provide closure and satisfy readers

COMMON MISCONCEPTIONS:
- Rushing through events without development
- Telling instead of showing (stating emotions rather than describing actions)
- Dialogue punctuation errors
- Weak or missing endings
- Events that do not connect logically

TEACHING SEQUENCE:
Study narrative mentor texts. Notice how authors hook readers, develop characters through dialogue and action, build tension, and create satisfying endings. Collect techniques to try.

Develop story elements before writing:
- Character: Who is this person? What do they want? What are they like?
- Setting: Where and when? How does it affect the story?
- Plot: What happens? What is the problem? How is it resolved?

Teach dialogue conventions:
- New speaker = new paragraph
- Quotation marks around spoken words
- Dialogue tags (said, asked, exclaimed)
- Punctuation inside quotes

Focus on showing, not telling. "She was scared" (telling) vs. "Her heart pounded. She pressed her back against the cold wall." (showing). Practice revising telling into showing.

DIFFERENTIATION:
For struggling learners: Use story planning templates. Focus on one technique (dialogue OR description) at a time. Write shorter narratives. Conference during writing.

For advanced learners: Experiment with narrative techniques (flashback, suspense). Develop complex characters. Use varied dialogue tags. Write longer, more developed stories.

VOCABULARY:
Narrative, character, setting, plot, dialogue, description, show, tell, beginning, middle, end, closure

CONNECTION TO FUTURE LEARNING:
Narrative writing develops creativity and voice. Students will write increasingly sophisticated fiction and personal narratives. Narrative skills support all writing through engaging techniques. Storytelling is fundamental to human communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- Research Projects
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Projects' AND grade_level_min = 3),
  'Research Projects (Grade 3) Topic Guide',
  'Teaching students to conduct short research projects and take notes',
  'RESEARCH PROJECTS - TOPIC TEACHING GUIDE (GRADE 3)

PREREQUISITES:
Students should be able to read informational texts and identify key information. They should have experience with nonfiction text features. Basic note-taking exposure is helpful. Students should be curious and able to form questions.

LEARNING OBJECTIVES:
- Generate research questions about a topic
- Locate information from multiple print and digital sources
- Take notes without copying directly from sources
- Organize information by subtopic or question
- Present findings in written or spoken form

KEY CONCEPTS:
1) Research answers questions we have about topics
2) Good researchers use multiple sources for fuller understanding
3) Note-taking captures important information in your own words
4) Information should be organized before writing or presenting
5) Researchers give credit to sources

COMMON MISCONCEPTIONS:
- Copying from sources instead of note-taking
- Using only one source
- Difficulty distinguishing important from interesting information
- Not organizing notes before writing
- Thinking research must answer every possible question

TEACHING SEQUENCE:
Begin with question generation. Move from broad topic to specific questions: "We''re learning about butterflies. What do you wonder about butterflies?" Generate 3-5 research questions.

Model finding and evaluating sources. Show how to locate relevant books, websites, and other sources. Discuss what makes a source trustworthy. Practice using text features to find information.

Teach paraphrasing for notes. Read a section. Close the book. Write what you remember in your own words. Check for accuracy. This prevents copying and builds understanding.

Organize notes before writing. Group notes by question or subtopic. Decide on a logical order. Create an outline or plan before drafting.

Present findings appropriately. Written reports, oral presentations, posters, or digital products can share research. Match format to purpose and audience.

DIFFERENTIATION:
For struggling learners: Research familiar topics. Provide guided note-taking templates. Work in pairs. Use simpler sources. Focus on one or two questions.

For advanced learners: Research complex topics. Evaluate source credibility. Synthesize contradictory information. Create sophisticated products. Cite sources formally.

VOCABULARY:
Research, question, source, notes, paraphrase, organize, information, topic, find, present, credit

CONNECTION TO FUTURE LEARNING:
Research skills are essential for academic success. Students will conduct increasingly sophisticated research projects. These skills support learning across all subjects. Information literacy is crucial in our digital world.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Projects' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 3 Reading Topics: 16 comprehensive prompts
-- Units covered:
--   1. Reading Literature (4 topics)
--   2. Reading Informational Text (4 topics)
--   3. Language and Vocabulary (4 topics)
--   4. Writing (4 topics)
-- ============================================================================
