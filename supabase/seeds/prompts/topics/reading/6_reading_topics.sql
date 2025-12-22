-- ============================================================================
-- GRADE 6 READING TOPIC PROMPTS
-- Comprehensive teaching guides for all Grade 6 Reading/ELA topics
-- ============================================================================

-- Unit: Reading Literature
-- Topic: Citing Textual Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Citing Textual Evidence' AND grade_level_min = 6),
  'Citing Textual Evidence (Grade 6) Topic Guide',
  'Teaching students to use evidence from text to support analysis',
  'CITING TEXTUAL EVIDENCE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to read grade-level text independently and identify main ideas. They should understand the difference between their own opinions and what an author explicitly states. Basic paragraph structure knowledge is helpful, as is familiarity with using quotation marks.

LEARNING OBJECTIVES:
- Cite specific textual evidence to support analysis of what the text says explicitly
- Draw logical inferences from text and support them with evidence
- Distinguish between strong and weak textual evidence
- Integrate quotes smoothly into written and spoken analysis
- Explain how evidence supports a given interpretation

KEY CONCEPTS:
1) Textual evidence consists of specific words, phrases, sentences, or passages that directly support an interpretation or analysis
2) Explicit evidence comes directly from what the text states, while implicit evidence requires inference
3) Strong evidence is relevant, specific, and directly connected to the claim being made
4) Citing evidence involves introducing quotes, embedding them properly, and explaining their significance
5) Multiple pieces of evidence can strengthen an argument when they work together

COMMON MISCONCEPTIONS:
- Thinking any quote from the text counts as good evidence, regardless of relevance
- Believing that simply including a quote is enough without explaining its significance
- Confusing personal opinion with textual inference
- Assuming longer quotes are always better than shorter, more focused ones
- Thinking that paraphrasing eliminates the need to cite evidence

TEACHING SEQUENCE:
Begin by modeling the difference between claims supported by evidence and unsupported opinions. Show students how readers naturally look back at text to verify their thinking. Introduce the concept of "text detectives" who find clues to support their ideas. Demonstrate how to locate relevant passages using text features and rereading strategies. Practice with think-alouds where you identify a claim, search for evidence, and explain the connection. Move from explicit evidence hunting to inferential evidence, showing how details combine to support conclusions. Introduce quote integration techniques including signal phrases like "According to the text" and "The author states." Practice explaining evidence using the "quote and comment" technique where students provide analysis after each piece of evidence.

DIFFERENTIATION:
For struggling learners: Provide graphic organizers with claim-evidence-explanation sections. Use highlighting to identify potential evidence before analysis. Start with shorter texts and more explicit evidence requirements. Offer sentence starters for introducing and explaining quotes.
For advanced learners: Challenge students to find evidence that could support multiple interpretations. Have them evaluate the strength of different pieces of evidence. Introduce counterevidence and how to address it. Practice synthesizing evidence from multiple sources.

VOCABULARY:
Textual evidence, cite, citation, quote, explicit, implicit, inference, analysis, claim, support, passage, relevant, interpret, demonstrate, excerpt

CONNECTION TO FUTURE LEARNING:
Mastering textual evidence skills prepares students for sophisticated literary analysis, research writing, and argumentative essays. These skills transfer directly to academic writing across all subjects and form the foundation for advanced literary criticism. Students will build on these skills to evaluate sources, construct arguments, and engage in scholarly discourse throughout their education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Citing Textual Evidence' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Theme Development
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme Development' AND grade_level_min = 6),
  'Theme Development (Grade 6) Topic Guide',
  'Teaching identification and tracing of themes in stories',
  'THEME DEVELOPMENT - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to identify the main events in a story and describe character actions and motivations. Understanding of basic story elements including plot, character, and setting is essential. Students should distinguish between topic (what a story is about) and theme (the message or lesson).

LEARNING OBJECTIVES:
- Determine a theme or central idea of a text
- Analyze how the theme is conveyed through particular details
- Trace how a theme develops over the course of a text
- Distinguish between topic and theme
- Identify how character actions and plot events reveal theme

KEY CONCEPTS:
1) Theme is the underlying message, lesson, or insight about life that the author conveys
2) Topics are general subjects (friendship, courage) while themes are specific statements about those subjects
3) Themes develop through character actions, dialogue, conflicts, and resolutions
4) Authors rarely state themes directly; readers must infer them from story elements
5) A single text may contain multiple themes, with one often being more prominent

COMMON MISCONCEPTIONS:
- Confusing theme with plot summary or main events
- Stating theme as a single word (love, war) rather than a complete insight
- Thinking themes are always explicitly stated in the text
- Believing every reader must interpret the same theme from a text
- Assuming theme only appears at the end of a story

TEACHING SEQUENCE:
Begin by distinguishing topic from theme through paired examples: "This story is about friendship" (topic) versus "True friends support each other even when it is difficult" (theme). Use familiar texts or movies to identify themes collaboratively before moving to new material. Teach students to look for patterns in character behavior, repeated images or symbols, and moments of realization or change. Model how to trace theme development by marking key moments where the theme becomes clearer. Practice stating themes as complete sentences that express insights about life. Introduce anchor questions: "What did the character learn?" "What does the author want readers to understand about [topic]?" Show how the resolution often clarifies the theme but that hints appear throughout.

DIFFERENTIATION:
For struggling learners: Provide a list of common themes to choose from initially. Use graphic organizers tracking character growth alongside theme development. Focus on stories with clear, single themes before introducing complexity. Create theme statements together as a class.
For advanced learners: Explore how authors use symbols and motifs to develop theme. Compare how different texts treat similar themes. Analyze how themes reflect historical or cultural contexts. Introduce the concept of conflicting or nuanced themes.

VOCABULARY:
Theme, central idea, topic, insight, message, lesson, develop, convey, reveal, underlying, implicit, emerge, universal, motif, resolution

CONNECTION TO FUTURE LEARNING:
Theme analysis skills prepare students for sophisticated literary interpretation across genres. Understanding how themes develop through narrative techniques builds analytical reading skills essential for advanced literature courses. These skills also transfer to analyzing arguments, identifying authorial purpose, and understanding how meaning is constructed in all types of texts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme Development' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Plot Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Plot Structure' AND grade_level_min = 6),
  'Plot Structure (Grade 6) Topic Guide',
  'Teaching understanding of exposition, rising action, climax, and resolution',
  'PLOT STRUCTURE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to retell stories in sequence and identify major events. Understanding of character and conflict is helpful. Students should be able to distinguish between beginning, middle, and end of stories.

LEARNING OBJECTIVES:
- Identify the five stages of plot: exposition, rising action, climax, falling action, resolution
- Analyze how a particular sentence, chapter, or scene fits into the overall structure
- Explain how plot events build on each other to create tension
- Describe how conflicts drive plot development
- Analyze how pacing affects reader experience

KEY CONCEPTS:
1) Exposition introduces characters, setting, and initial situation before the main conflict
2) Rising action includes events that build tension and complicate the conflict
3) The climax is the turning point of highest tension where the main conflict reaches its peak
4) Falling action shows the consequences of the climax and moves toward resolution
5) Resolution (denouement) reveals how conflicts are resolved and establishes a new normal

COMMON MISCONCEPTIONS:
- Thinking the climax is simply the most exciting part rather than the turning point
- Confusing multiple exciting events without identifying the central climax
- Believing exposition must be boring or can be skipped
- Assuming all stories follow exactly the same structure
- Thinking resolution means everyone lives happily ever after

TEACHING SEQUENCE:
Introduce plot structure using the mountain diagram or Freytag pyramid visual. Begin with well-known fairy tales or movies where structure is clear and familiar. Model identifying each element while reading aloud, pausing to label plot stages. Emphasize that exposition provides essential information even if not action-packed. Practice distinguishing between individual conflicts and the main conflict that drives the plot. Teach students to identify the moment everything changes as the climax. Analyze how authors control pacing to build and release tension. Compare plot structures across multiple texts to see variations while recognizing patterns. Have students create plot diagrams for texts they have read independently.

DIFFERENTIATION:
For struggling learners: Use color-coding to mark different plot stages in text. Provide partially completed plot diagrams to fill in. Focus on short stories with clear, single plot lines. Use visual story maps before introducing formal terminology.
For advanced learners: Analyze non-linear plot structures including flashbacks and frame narratives. Compare plot structure across genres. Examine subplots and how they interact with main plots. Study how authors manipulate structure for effect.

VOCABULARY:
Exposition, rising action, climax, falling action, resolution, denouement, conflict, tension, pacing, turning point, complication, sequence, structure, arc

CONNECTION TO FUTURE LEARNING:
Understanding plot structure prepares students for analyzing increasingly complex narratives with multiple plot lines, unreliable narrators, and experimental structures. These analytical skills transfer to understanding narrative techniques in film, drama, and creative nonfiction. Students will use this knowledge to structure their own narrative writing effectively.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plot Structure' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Character Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 6),
  'Character Analysis (Grade 6) Topic Guide',
  'Teaching analysis of character traits, motivations, and changes',
  'CHARACTER ANALYSIS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to identify main characters and describe their actions. Understanding of basic character types (protagonist, antagonist) is helpful. Students should be able to use evidence from text to support ideas about characters.

LEARNING OBJECTIVES:
- Analyze how particular elements of a story interact, including how characters respond to plot events
- Describe how a particular character changes over the course of a story
- Infer character traits from actions, dialogue, and thoughts
- Explain character motivations and how they drive plot
- Compare and contrast characters within and across texts

KEY CONCEPTS:
1) Character traits are inferred from what characters say, do, think, and how others react to them
2) Dynamic characters change significantly while static characters remain the same
3) Motivation is what drives characters to act, often stemming from their wants and needs
4) Character development occurs through responses to conflict and key experiences
5) Relationships between characters reveal important traits and themes

COMMON MISCONCEPTIONS:
- Describing only physical appearance rather than personality traits
- Assuming characters are simply good or bad without complexity
- Confusing what characters do with who they are
- Thinking character change happens suddenly rather than through development
- Overlooking how minor characters contribute to understanding major ones

TEACHING SEQUENCE:
Begin by modeling character inference using the STEAL method: Speech, Thoughts, Effect on others, Actions, and Looks. Practice distinguishing between what we are told about characters versus what we must infer. Create character trait webs that show evidence from text supporting each trait. Introduce the concept of character arc by tracking how a character responds differently to similar situations over time. Analyze key moments that reveal character or mark significant change. Compare characters motivations and how those motivations affect their choices. Practice writing analytical paragraphs that make claims about characters and support them with textual evidence.

DIFFERENTIATION:
For struggling learners: Provide character trait word banks with definitions. Use graphic organizers that pair traits with specific evidence. Focus on one character at a time before comparing. Create character timelines showing change across the story.
For advanced learners: Analyze how authors use foil characters to develop protagonists. Explore unreliable characterization and narrator bias. Compare character development across genre conventions. Analyze how cultural context affects character interpretation.

VOCABULARY:
Character trait, motivation, dynamic, static, protagonist, antagonist, characterization, development, arc, internal, external, conflict, foil, complex

CONNECTION TO FUTURE LEARNING:
Character analysis skills prepare students for understanding increasingly complex literary figures and their symbolic significance. These skills transfer to analyzing real people in historical texts and understanding psychological motivation in various contexts. Students will use these analytical skills when writing their own narratives with developed characters.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Point of View
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Point of View' AND grade_level_min = 6),
  'Point of View (Grade 6) Topic Guide',
  'Teaching first person, third person, and their effects on narrative',
  'POINT OF VIEW - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic pronoun usage and be able to identify the narrator or speaker in a text. Familiarity with the difference between characters and narrators is helpful. Students should have experience with stories told from different perspectives.

LEARNING OBJECTIVES:
- Explain how an authors choice of point of view develops the reader experience
- Distinguish between first person, third person limited, and third person omniscient
- Analyze how point of view affects what information readers receive
- Explain how different points of view create different effects in storytelling
- Compare how different points of view would change a familiar story

KEY CONCEPTS:
1) First person uses "I" and limits readers to one characters knowledge and perspective
2) Third person limited follows one character closely using "he/she" but restricts information
3) Third person omniscient knows all characters thoughts and can move freely between perspectives
4) Point of view affects reader sympathy, suspense, and understanding of events
5) Authors choose point of view strategically to create specific effects

COMMON MISCONCEPTIONS:
- Thinking point of view only refers to whose story is being told
- Confusing point of view with opinion or perspective on issues
- Believing first person is always the main character
- Assuming third person is always objective or unbiased
- Thinking point of view cannot change within a text

TEACHING SEQUENCE:
Begin by reading the same scene written from different points of view and discussing how each version affects understanding. Teach students to identify point of view through pronoun analysis and ask "What does the narrator know?" Model analyzing how point of view limits or expands reader knowledge in specific scenes. Practice rewriting short passages from different points of view to experience the effects firsthand. Discuss why authors might choose particular points of view for their stories. Analyze how point of view creates unreliable narration when narrators have limited knowledge or biased perspectives. Connect point of view to theme development and reader engagement.

DIFFERENTIATION:
For struggling learners: Create anchor charts with pronoun clues for each point of view. Use color-coding to track whose perspective we are following. Start with clear examples before analyzing ambiguous cases. Provide side-by-side comparisons of the same story in different points of view.
For advanced learners: Analyze unreliable narrators and how readers detect bias. Explore experimental point of view techniques including second person. Study how point of view shifts within novels create effects. Analyze the difference between narrator and implied author.

VOCABULARY:
Point of view, first person, third person, limited, omniscient, narrator, perspective, bias, unreliable, objective, subjective, voice, pronoun

CONNECTION TO FUTURE LEARNING:
Understanding point of view prepares students for analyzing sophisticated narrative techniques and understanding how perspective shapes meaning. These skills transfer to evaluating bias in informational texts, understanding historical accounts from different perspectives, and crafting effective narratives. Students will develop critical awareness of how all information is mediated through particular viewpoints.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Point of View' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Figurative Language
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 6),
  'Figurative Language (Grade 6) Topic Guide',
  'Teaching understanding of metaphors, similes, and personification',
  'FIGURATIVE LANGUAGE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand literal versus non-literal meaning. Basic familiarity with common figurative expressions from everyday speech is helpful. Students should be able to identify descriptive language in texts.

LEARNING OBJECTIVES:
- Identify similes, metaphors, personification, and hyperbole in text
- Interpret the meaning and effect of figurative language
- Analyze how figurative language contributes to tone and meaning
- Distinguish between literal and figurative interpretations
- Explain why authors use figurative language rather than literal description

KEY CONCEPTS:
1) Similes compare two unlike things using "like" or "as" to highlight shared qualities
2) Metaphors directly state that one thing is another, creating stronger comparisons
3) Personification gives human qualities to non-human things to create vivid imagery
4) Hyperbole uses extreme exaggeration for emphasis or humor
5) Figurative language creates imagery, evokes emotions, and conveys meaning efficiently

COMMON MISCONCEPTIONS:
- Thinking similes and metaphors are identical because both make comparisons
- Interpreting figurative language literally and missing intended meaning
- Believing figurative language is only found in poetry
- Assuming hyperbole is simply lying or being inaccurate
- Thinking personification means the object literally becomes human

TEACHING SEQUENCE:
Begin with figurative language from everyday speech that students already use and understand. Create a class collection of examples for each type, drawing from literature, music, and advertising. Teach identification by looking for comparison signals and impossible or exaggerated claims. Model interpreting figurative language by asking "What is being compared?" and "What quality does this highlight?" Practice explaining the effect: why does saying "she was a lion" work differently than "she was brave"? Analyze how figurative language contributes to characterization, mood, and theme. Have students experiment with creating their own figurative language to describe familiar things.

DIFFERENTIATION:
For struggling learners: Create illustrated examples showing literal versus figurative interpretations. Use graphic organizers that break down comparisons into their parts. Focus on recognition before interpretation. Provide sentence frames for explaining figurative language.
For advanced learners: Analyze extended metaphors and how they develop across texts. Study dead metaphors and how language evolves. Explore cultural differences in figurative language. Analyze how figurative language creates voice and style.

VOCABULARY:
Figurative language, literal, simile, metaphor, personification, hyperbole, imagery, comparison, vivid, exaggeration, effect, tone, symbolism

CONNECTION TO FUTURE LEARNING:
Understanding figurative language prepares students for appreciating poetry, analyzing literary style, and recognizing how language shapes meaning. These skills transfer to understanding persuasive techniques in advertising and rhetoric. Students will use figurative language to strengthen their own writing and develop their authorial voice.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Unit: Reading Informational Text
-- Topic: Central Ideas and Summaries
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Central Ideas and Summaries' AND grade_level_min = 6),
  'Central Ideas and Summaries (Grade 6) Topic Guide',
  'Teaching finding main ideas and summarizing texts',
  'CENTRAL IDEAS AND SUMMARIES - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to distinguish between fiction and nonfiction texts. Understanding of topic versus main idea is helpful. Students should have basic experience identifying what a text is mostly about.

LEARNING OBJECTIVES:
- Determine a central idea of a text and how it is conveyed through particular details
- Provide an objective summary of the text distinct from personal opinions
- Distinguish between central ideas and supporting details
- Trace how central ideas are developed across a text
- Summarize without including unnecessary details or personal reactions

KEY CONCEPTS:
1) Central ideas are the most important points an author wants readers to understand
2) Supporting details provide evidence, examples, and elaboration for central ideas
3) Objective summaries convey what the text says without adding interpretation or opinion
4) Summaries include only essential information and are significantly shorter than originals
5) Central ideas may be stated directly or implied through accumulated details

COMMON MISCONCEPTIONS:
- Including personal opinions or reactions in summaries
- Thinking the first sentence always states the main idea
- Confusing the topic with the central idea about that topic
- Including too many details or retelling the entire text
- Believing there is only one correct central idea

TEACHING SEQUENCE:
Begin by distinguishing topic (what the text is about) from central idea (what the author says about that topic). Model using the question "What is the most important thing the author wants me to understand?" Teach students to look for repeated ideas, emphasized points, and explicit statements of importance. Practice identifying supporting details and explaining how they develop central ideas. Introduce objective summary writing using structured approaches: state the central idea, include key supporting points, leave out minor details and opinions. Use think-alouds to model decisions about what to include and exclude. Practice peer evaluation of summaries for objectivity and completeness.

DIFFERENTIATION:
For struggling learners: Provide templates with sentence starters for summaries. Use highlighting to distinguish central ideas from details. Start with shorter texts with explicit main ideas. Create checklists for summary self-evaluation.
For advanced learners: Summarize texts with multiple central ideas and complex structures. Analyze how authors signal importance. Compare summaries for the same text and evaluate effectiveness. Practice summarizing increasingly complex and lengthy texts.

VOCABULARY:
Central idea, main idea, summary, objective, supporting details, convey, develop, emphasize, essential, distinguish, synthesize, paraphrase

CONNECTION TO FUTURE LEARNING:
Skills in identifying central ideas and summarizing prepare students for research, note-taking, and academic writing across subjects. These skills are essential for understanding complex informational texts and synthesizing information from multiple sources. Students will build on these abilities for standardized testing and higher-level academic work.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Central Ideas and Summaries' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Text Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Text Structure' AND grade_level_min = 6),
  'Text Structure (Grade 6) Topic Guide',
  'Teaching chronological, compare/contrast, cause/effect patterns',
  'TEXT STRUCTURE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to identify nonfiction text features like headings and paragraphs. Understanding that authors organize information purposefully is helpful. Basic familiarity with sequence and simple organizational patterns from earlier grades is expected.

LEARNING OBJECTIVES:
- Analyze how a particular sentence, paragraph, chapter, or section fits into the overall structure
- Identify common text structures: chronological, cause/effect, compare/contrast, problem/solution, description
- Explain how structure contributes to the development of ideas
- Use text structure to improve comprehension and locate information
- Recognize signal words that indicate different structures

KEY CONCEPTS:
1) Chronological structure presents events or steps in time order
2) Cause and effect structure explains why events happen and their consequences
3) Compare and contrast structure examines similarities and differences between subjects
4) Problem and solution structure identifies an issue and proposes or describes responses
5) Authors choose structures strategically based on their purpose and content

COMMON MISCONCEPTIONS:
- Thinking texts use only one structure throughout
- Missing structural shifts within longer texts
- Confusing cause/effect with chronological just because both involve sequence
- Believing structure is only about paragraph organization
- Not recognizing implicit structure when signal words are absent

TEACHING SEQUENCE:
Introduce each structure with clear, short examples and explicit signal words. Create anchor charts showing common signal words for each structure (first, next, finally for chronological; because, therefore, as a result for cause/effect). Model identifying structure by looking for patterns and signal words. Analyze how the same information could be organized differently and why authors make particular choices. Practice with texts that combine multiple structures, identifying where shifts occur. Connect structure to purpose: why would an author choose cause/effect for this topic? Have students create graphic organizers that match each structure type.

DIFFERENTIATION:
For struggling learners: Use color-coded signal word lists. Provide structure-specific graphic organizers. Start with short paragraphs with clear signals before analyzing longer texts. Use familiar topics where structure is predictable.
For advanced learners: Analyze texts where structure is implicit or unconventional. Study how authors layer multiple structures. Examine how structure choices affect reader understanding. Practice restructuring information for different purposes.

VOCABULARY:
Text structure, chronological, sequential, cause and effect, compare and contrast, problem and solution, description, signal words, transition, organization, development

CONNECTION TO FUTURE LEARNING:
Understanding text structure prepares students for efficiently navigating complex informational texts and academic materials. These skills transfer to organizing their own writing effectively and understanding how structure supports argumentation. Students will apply structural analysis to increasingly sophisticated texts across all content areas.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Text Structure' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Author's Purpose
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Author''s Purpose' AND grade_level_min = 6),
  'Author''s Purpose (Grade 6) Topic Guide',
  'Teaching identification of why authors write texts',
  'AUTHORS PURPOSE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand that texts are written by people who make choices. Familiarity with different types of texts (stories, articles, advertisements) is helpful. Basic understanding that authors have reasons for writing is expected.

LEARNING OBJECTIVES:
- Determine an authors point of view or purpose in a text
- Explain how an authors purpose is conveyed through particular details and style
- Distinguish between purposes: to inform, persuade, entertain, explain
- Analyze how purpose shapes authors choices about content and tone
- Identify when texts have multiple or layered purposes

KEY CONCEPTS:
1) Authors write to inform, persuade, entertain, express, or explain
2) Purpose influences every choice: topic, details, word choice, tone, and structure
3) Audience awareness affects how authors achieve their purpose
4) Some texts have primary and secondary purposes that work together
5) Recognizing purpose helps readers evaluate information critically

COMMON MISCONCEPTIONS:
- Thinking purpose is always explicitly stated
- Believing a text can only have one purpose
- Confusing personal interest in reading with the authors intent
- Assuming entertaining texts are not also informative or persuasive
- Thinking all informational texts are objective

TEACHING SEQUENCE:
Begin with obvious examples where purpose is clear: advertisements persuade, encyclopedias inform, jokes entertain. Model asking "Why did the author write this?" and looking for evidence in content and style. Analyze how word choice, detail selection, and tone reveal purpose. Compare texts on the same topic written for different purposes to highlight how purpose shapes presentation. Introduce the concept of multiple purposes: an article might inform while also persuading. Practice identifying target audience and how authors adapt for different readers. Connect purpose to critical reading: knowing why helps evaluate reliability.

DIFFERENTIATION:
For struggling learners: Use the PIE acronym (Persuade, Inform, Entertain) as a starting framework. Provide concrete examples of each purpose type. Use familiar texts like commercials and textbooks. Create purpose identification checklists.
For advanced learners: Analyze subtle persuasion in seemingly objective texts. Study how authors purposes change across different contexts. Examine how historical and cultural context affects purpose. Analyze propaganda and bias in informational sources.

VOCABULARY:
Authors purpose, inform, persuade, entertain, express, explain, point of view, perspective, audience, tone, intention, motivation, bias, objective, subjective

CONNECTION TO FUTURE LEARNING:
Understanding authors purpose is fundamental to critical literacy and media literacy. These skills prepare students for evaluating sources, detecting bias, and understanding how information is shaped by intention. Students will apply purpose analysis to increasingly complex texts and real-world media throughout their academic and civic lives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Author''s Purpose' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Analyzing Arguments
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Arguments' AND grade_level_min = 6),
  'Analyzing Arguments (Grade 6) Topic Guide',
  'Teaching evaluation of claims, evidence, and reasoning',
  'ANALYZING ARGUMENTS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand the difference between fact and opinion. Basic familiarity with persuasive writing and its purpose is helpful. Students should be able to identify main ideas and supporting details in texts.

LEARNING OBJECTIVES:
- Trace and evaluate the argument and specific claims in a text
- Distinguish claims that are supported by reasons and evidence from claims that are not
- Identify the relationship between claims, reasons, and evidence
- Evaluate the relevance and sufficiency of evidence
- Recognize logical fallacies and weak reasoning

KEY CONCEPTS:
1) Arguments consist of claims (positions) supported by reasons and evidence
2) Strong evidence is relevant, credible, and sufficient to support the claim
3) Reasoning connects evidence to claims and explains why evidence matters
4) Not all claims are equally supported; readers must evaluate argument quality
5) Authors may use emotional appeals or logical fallacies instead of strong reasoning

COMMON MISCONCEPTIONS:
- Thinking any statement of opinion counts as a claim
- Believing that if evidence is present, the argument must be strong
- Confusing emotional appeal with logical reasoning
- Assuming all published arguments are well-reasoned
- Thinking disagreement means an argument is wrong

TEACHING SEQUENCE:
Begin by distinguishing claims from facts and from unsupported opinions. Model identifying the main claim and supporting points in simple arguments. Teach the claim-reason-evidence framework and practice mapping arguments visually. Introduce evaluation criteria: Is evidence relevant? Is there enough evidence? Is the reasoning logical? Analyze examples of strong and weak arguments side by side. Introduce common fallacies appropriate for grade level: hasty generalization, appeal to popularity. Practice asking "So what?" to test whether reasoning actually connects evidence to claims. Evaluate arguments on both sides of familiar issues.

DIFFERENTIATION:
For struggling learners: Provide argument maps as graphic organizers. Start with short, clear arguments before analyzing complex ones. Use familiar topics where students have background knowledge. Create checklists for argument evaluation.
For advanced learners: Analyze sophisticated arguments with multiple claims and counterarguments. Study persuasive techniques beyond evidence. Evaluate arguments in media and advertising. Practice constructing and defending their own arguments.

VOCABULARY:
Argument, claim, evidence, reason, reasoning, support, evaluate, relevant, sufficient, credible, fallacy, logical, persuade, counterargument

CONNECTION TO FUTURE LEARNING:
Argument analysis skills are essential for academic success across disciplines, civic participation, and media literacy. These skills prepare students for research writing, debate, and critical evaluation of sources. Students will develop increasingly sophisticated analytical abilities for navigating a world full of competing claims and arguments.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Arguments' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Integrating Information
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 6),
  'Integrating Information (Grade 6) Topic Guide',
  'Teaching combining information from multiple sources',
  'INTEGRATING INFORMATION - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to identify main ideas and summarize single texts. Understanding that different sources may present information differently is helpful. Basic research experience including using multiple sources is expected.

LEARNING OBJECTIVES:
- Integrate information presented in different media or formats as well as in words
- Develop a coherent understanding of a topic from multiple sources
- Compare and contrast information from different sources on the same topic
- Resolve apparent contradictions between sources
- Synthesize information rather than simply summarizing each source separately

KEY CONCEPTS:
1) Different sources may present complementary, overlapping, or conflicting information
2) Integrating means combining information to create fuller understanding, not just listing sources
3) Visual and text information often work together and both contribute to understanding
4) When sources conflict, readers must evaluate reliability and consider context
5) Synthesis creates new understanding that goes beyond any single source

COMMON MISCONCEPTIONS:
- Thinking integration means copying information from multiple sources
- Ignoring contradictions between sources rather than addressing them
- Treating all sources as equally reliable without evaluation
- Summarizing each source separately instead of synthesizing
- Overlooking visual information in favor of text only

TEACHING SEQUENCE:
Begin with simple examples where two sources provide complementary information on the same topic. Model creating a synthesis by identifying what each source contributes and how they work together. Teach strategies for noting connections and contradictions while reading multiple sources. Practice with sources in different formats: text, charts, videos, images. Address what to do when sources disagree: evaluate credibility, consider context, note the disagreement. Introduce organizational structures for integrating information in writing. Practice creating products that demonstrate synthesis rather than source-by-source summary.

DIFFERENTIATION:
For struggling learners: Start with just two sources on familiar topics. Use graphic organizers that show how sources connect. Provide structured templates for synthesis writing. Focus on complementary sources before introducing contradictory ones.
For advanced learners: Integrate multiple sources with varying reliability. Address complex contradictions requiring evaluation. Synthesize across different media types and genres. Practice academic citation and attribution.

VOCABULARY:
Integrate, synthesize, synthesis, sources, complementary, contradictory, combine, compare, contrast, evaluate, reliable, format, media

CONNECTION TO FUTURE LEARNING:
Integration skills are essential for research across all disciplines and for navigating information in daily life. These skills prepare students for complex research projects, academic writing, and critical media consumption. Students will develop increasingly sophisticated abilities to build understanding from multiple information streams.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integrating Information' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Academic Vocabulary
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Academic Vocabulary' AND grade_level_min = 6),
  'Academic Vocabulary (Grade 6) Topic Guide',
  'Teaching understanding of domain-specific words and phrases',
  'ACADEMIC VOCABULARY - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to use basic context clues to determine word meaning. Understanding that different subjects have specialized vocabulary is helpful. Familiarity with using dictionaries and reference materials is expected.

LEARNING OBJECTIVES:
- Determine the meaning of academic and domain-specific words and phrases
- Use context clues, word parts, and reference materials to determine meanings
- Distinguish between general academic vocabulary and subject-specific terms
- Understand how the same word may have different meanings in different contexts
- Build vocabulary for use in reading, writing, and speaking

KEY CONCEPTS:
1) Academic vocabulary includes words used across subjects in scholarly contexts
2) Domain-specific vocabulary includes technical terms particular to specific fields
3) Context clues include definitions, examples, synonyms, and contrasts within text
4) Word parts (roots, prefixes, suffixes) provide meaning clues
5) Words may have different meanings in different domains or contexts

COMMON MISCONCEPTIONS:
- Thinking unfamiliar words can be skipped without affecting understanding
- Relying only on dictionary definitions without considering context
- Assuming a words everyday meaning applies in academic contexts
- Believing vocabulary is only for reading, not speaking and writing
- Thinking all unfamiliar words are equally important to learn

TEACHING SEQUENCE:
Introduce the distinction between general vocabulary, academic vocabulary, and domain-specific vocabulary. Teach multiple context clue strategies: look for definitions, examples, synonyms, antonyms, and general sense. Model using word parts to make educated guesses about meaning. Practice with words that have multiple meanings depending on context. Create vocabulary networks showing how related terms connect. Introduce academic word lists and high-utility terms that appear across subjects. Practice using new vocabulary in speaking and writing, not just recognition. Build personal vocabulary journals with examples and connections.

DIFFERENTIATION:
For struggling learners: Provide visual vocabulary cards with images and examples. Focus on high-frequency academic words first. Use word maps showing meaning, examples, and non-examples. Offer multiple exposures to new words across contexts.
For advanced learners: Study etymology and how words evolve. Analyze connotation and nuance among synonyms. Explore how academic vocabulary signals formality and expertise. Build vocabulary from challenging authentic texts.

VOCABULARY:
Academic vocabulary, domain-specific, context clues, word parts, prefix, suffix, root, connotation, denotation, technical, formal, register

CONNECTION TO FUTURE LEARNING:
Strong academic vocabulary is crucial for success in all content areas and standardized assessments. These skills prepare students for reading complex texts, participating in academic discourse, and demonstrating knowledge through writing. Students will continue building vocabulary as a lifelong learning skill.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Academic Vocabulary' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Unit: Writing
-- Topic: Argumentative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Argumentative Writing' AND grade_level_min = 6),
  'Argumentative Writing (Grade 6) Topic Guide',
  'Teaching persuasive essays with claims and evidence',
  'ARGUMENTATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to state opinions and provide basic reasons. Understanding of paragraph structure and essay organization is helpful. Students should have experience with persuasive reading and identifying claims and evidence.

LEARNING OBJECTIVES:
- Write arguments to support claims with clear reasons and relevant evidence
- Introduce claims and organize reasons and evidence logically
- Support claims with credible sources and demonstrate understanding of the topic
- Use words, phrases, and clauses to create cohesion and clarify relationships
- Provide a concluding statement that follows from the argument presented

KEY CONCEPTS:
1) Arguments have clear claims (thesis statements) that establish the writers position
2) Reasons explain why the claim is valid; evidence proves the reasons are accurate
3) Organization moves logically, with each paragraph supporting the central claim
4) Transitions connect ideas and show relationships between points
5) Counterarguments strengthen arguments by acknowledging and addressing opposing views

COMMON MISCONCEPTIONS:
- Thinking strong opinions alone make good arguments
- Presenting evidence without explaining how it supports the claim
- Ignoring opposing viewpoints instead of addressing them
- Believing arguments should be angry or aggressive in tone
- Thinking personal stories alone are sufficient evidence

TEACHING SEQUENCE:
Begin by analyzing model argumentative essays, identifying claims, reasons, and evidence. Teach claim writing: specific, debatable statements that establish position. Model organizing ideas using outlines that show claim, reasons, and supporting evidence. Practice selecting and evaluating evidence for relevance and credibility. Teach explanation: the crucial step of connecting evidence back to claims. Introduce transitions that signal addition, contrast, and conclusion. Address counterarguments: acknowledge opposing views and explain why your position is stronger. Practice revision focusing on logic, evidence quality, and cohesion.

DIFFERENTIATION:
For struggling learners: Provide argument organizers with clear sections. Offer claim and transition sentence starters. Use familiar, accessible topics with readily available evidence. Break the writing process into small, manageable steps.
For advanced learners: Argue complex, nuanced positions. Use multiple types of evidence and sources. Address multiple counterarguments substantively. Develop sophisticated style while maintaining clarity.

VOCABULARY:
Argument, claim, thesis, evidence, reason, reasoning, support, counterargument, rebuttal, credible, relevant, transition, cohesion, persuade

CONNECTION TO FUTURE LEARNING:
Argumentative writing skills are essential for academic success and civic participation. These skills prepare students for persuasive writing across disciplines, debate, and advocating for themselves and others. Students will develop increasingly sophisticated argumentation for academic and real-world contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Argumentative Writing' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Informative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Informative Writing' AND grade_level_min = 6),
  'Informative Writing (Grade 6) Topic Guide',
  'Teaching explaining topics clearly with facts and details',
  'INFORMATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should have experience reading informational texts. Basic research skills and ability to take notes are helpful. Understanding of paragraph organization and topic sentences is expected.

LEARNING OBJECTIVES:
- Write informative/explanatory texts to examine a topic and convey ideas clearly
- Introduce a topic and organize ideas using headings, graphics, and multimedia when useful
- Develop the topic with relevant facts, definitions, concrete details, and quotations
- Use appropriate transitions to create cohesion and clarify relationships among ideas
- Provide a concluding statement that follows from the information presented

KEY CONCEPTS:
1) Informative writing explains, describes, or teaches without arguing a position
2) Clear organization helps readers follow and understand complex information
3) Different types of information (facts, definitions, examples, descriptions) work together
4) Precise language and domain-specific vocabulary enhance clarity
5) Text features like headings and graphics can organize and illustrate information

COMMON MISCONCEPTIONS:
- Including personal opinions in informative writing
- Presenting information without clear organization
- Copying sources instead of synthesizing information in ones own words
- Thinking more information is always better without considering relevance
- Believing informative writing cannot be interesting or engaging

TEACHING SEQUENCE:
Begin by analyzing model informative texts, noting how they are organized and what kinds of information they include. Practice generating questions about topics that informative writing should answer. Teach research and note-taking strategies that prepare for writing. Model organizing information logically: introduction, body paragraphs on subtopics, conclusion. Practice developing paragraphs with various types of support: facts, definitions, examples, descriptions. Introduce formatting techniques: headings, lists, graphics when appropriate. Teach transitions that signal relationships between ideas. Practice synthesizing information from sources in ones own words.

DIFFERENTIATION:
For struggling learners: Provide structured templates with sections for different types of information. Use graphic organizers to plan before drafting. Start with familiar topics that require less research. Offer sentence starters for transitions and conclusions.
For advanced learners: Write about complex topics requiring significant research. Integrate multiple sources and perspectives. Use sophisticated text features and formatting. Develop authoritative voice while maintaining accessibility.

VOCABULARY:
Informative, explanatory, topic, thesis, development, support, facts, details, examples, definitions, transitions, organization, headings, synthesize

CONNECTION TO FUTURE LEARNING:
Informative writing skills are essential across all academic disciplines. These skills prepare students for research reports, lab reports, historical analyses, and professional communication. Students will develop increasingly sophisticated abilities to explain complex topics clearly and accessibly.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Informative Writing' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Narrative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 6),
  'Narrative Writing (Grade 6) Topic Guide',
  'Teaching story writing with plot, characters, and dialogue',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to tell stories orally and in writing. Understanding of plot structure and character development from reading is helpful. Basic experience with using descriptive language in writing is expected.

LEARNING OBJECTIVES:
- Write narratives to develop real or imagined experiences using effective technique
- Engage and orient the reader by establishing context and introducing characters
- Use narrative techniques such as dialogue, pacing, and description to develop experiences
- Use a variety of transition words and phrases to convey sequence and signal shifts
- Provide a conclusion that follows from the narrated experiences

KEY CONCEPTS:
1) Narratives have beginnings that establish context and engage readers
2) Effective dialogue reveals character, advances plot, and sounds natural
3) Pacing controls how fast or slow events unfold to create tension and emphasis
4) Descriptive details create vivid settings and help readers visualize the story
5) Strong conclusions provide closure and often connect to larger meaning

COMMON MISCONCEPTIONS:
- Telling everything that happened rather than focusing on key events
- Writing dialogue that sounds unnatural or serves no purpose
- Rushing through important moments or dragging out unimportant ones
- Describing setting once and forgetting it throughout the story
- Ending abruptly without providing satisfying closure

TEACHING SEQUENCE:
Begin by studying narrative techniques in mentor texts: how do skilled authors handle dialogue, pacing, and description? Practice writing engaging openings that establish context and hook readers. Teach dialogue conventions: punctuation, attribution, creating natural-sounding speech. Model pacing decisions: when to slow down with detail and when to speed up with summary. Practice using sensory details to create vivid settings and experiences. Explore different approaches to endings that provide closure and meaning. Use the writing process: planning, drafting, revising for technique, editing for conventions. Practice giving and receiving feedback focused on narrative elements.

DIFFERENTIATION:
For struggling learners: Provide story starters and plot frameworks. Use graphic organizers for planning narrative structure. Focus on one technique at a time before combining them. Offer mentor sentences for dialogue formatting.
For advanced learners: Experiment with non-linear narrative structures. Develop complex characters with internal conflicts. Use literary devices like foreshadowing and symbolism. Craft narratives that explore meaningful themes.

VOCABULARY:
Narrative, plot, character, setting, dialogue, pacing, description, sensory details, tension, conflict, resolution, closure, technique, voice

CONNECTION TO FUTURE LEARNING:
Narrative writing skills develop creativity, empathy, and communication abilities essential across contexts. These skills prepare students for personal essays, creative writing, and storytelling in various media. Students will continue developing narrative craft for self-expression and understanding human experience.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Research Skills
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Skills' AND grade_level_min = 6),
  'Research Skills (Grade 6) Topic Guide',
  'Teaching gathering and organizing information from sources',
  'RESEARCH SKILLS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to read informational texts and identify main ideas. Basic familiarity with libraries and search engines is helpful. Understanding of the difference between primary and secondary sources is beneficial.

LEARNING OBJECTIVES:
- Conduct short research projects to answer a question
- Gather relevant information from multiple print and digital sources
- Assess the credibility and accuracy of each source
- Quote or paraphrase the data and conclusions of others while avoiding plagiarism
- Provide basic bibliographic information for sources

KEY CONCEPTS:
1) Good research begins with focused, answerable questions
2) Sources must be evaluated for credibility, accuracy, and relevance
3) Information should be recorded in organized notes, not copied wholesale
4) Paraphrasing and quoting are different skills; both require attribution
5) Plagiarism means presenting others ideas as your own; citation prevents this

COMMON MISCONCEPTIONS:
- Thinking the first search results are the best sources
- Believing everything published online is accurate
- Copying text and changing a few words counts as paraphrasing
- Assuming sources only need to be listed, not cited within text
- Thinking research means finding sources that agree with you

TEACHING SEQUENCE:
Begin with question development: turning broad topics into focused research questions. Teach search strategies for finding relevant and reliable sources. Model source evaluation using criteria: author expertise, publication quality, evidence of bias, currency. Practice note-taking that distinguishes between quotes, paraphrases, and personal ideas. Teach paraphrasing as genuine restatement, not word substitution. Introduce quotation techniques: when to quote, how to integrate quotes smoothly. Explain plagiarism and its consequences; demonstrate proper attribution. Practice creating basic citations and bibliographies. Guide students through short research projects from question to product.

DIFFERENTIATION:
For struggling learners: Provide curated source sets for initial projects. Use graphic organizers for note-taking. Offer templates for citations. Break research process into clearly defined steps.
For advanced learners: Research complex topics requiring diverse sources. Evaluate conflicting sources and explain discrepancies. Use advanced search techniques and databases. Develop annotated bibliographies.

VOCABULARY:
Research, sources, credibility, accuracy, relevance, evaluate, paraphrase, quote, citation, bibliography, plagiarism, primary source, secondary source

CONNECTION TO FUTURE LEARNING:
Research skills are essential for academic work and informed citizenship. These skills prepare students for increasingly complex research projects and the ability to learn independently. Students will develop sophisticated research abilities for academic and professional contexts throughout their lives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Skills' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Revising and Editing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Revising and Editing' AND grade_level_min = 6),
  'Revising and Editing (Grade 6) Topic Guide',
  'Teaching improving writing through revision',
  'REVISING AND EDITING - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should have experience with the writing process including drafting. Understanding of basic grammar and punctuation conventions is helpful. Students should recognize that writing improves through multiple drafts.

LEARNING OBJECTIVES:
- Develop and strengthen writing by planning, revising, editing, and rewriting
- Address what is most significant for a specific purpose and audience
- Distinguish between revision (content and organization) and editing (conventions)
- Give and receive constructive feedback on writing
- Use editing strategies and tools to improve accuracy

KEY CONCEPTS:
1) Revision focuses on content, organization, and clarity; editing focuses on conventions
2) Strong revision requires distance from the draft and fresh perspective
3) Feedback from others helps writers see what they cannot see themselves
4) Different revision strategies work for different issues and writers
5) Editing requires systematic attention to grammar, spelling, and punctuation

COMMON MISCONCEPTIONS:
- Thinking revision means only fixing spelling and punctuation
- Believing good writers produce perfect first drafts
- Making changes only when required by teachers
- Thinking peer feedback is not as valuable as teacher feedback
- Assuming spell check catches all errors

TEACHING SEQUENCE:
Teach the difference between revision (making writing better) and editing (making writing correct). Introduce revision strategies: reading aloud, reverse outlining, focusing on one element at a time. Model revision decisions using think-alouds with sample drafts. Practice giving specific, constructive feedback using guided protocols. Teach peer review procedures that yield useful feedback. Introduce editing strategies: reading for one type of error at a time, using checklists, reading backwards. Practice using reference materials and style guides. Build routines for self-assessment and reflection on writing growth.

DIFFERENTIATION:
For struggling learners: Provide specific revision checklists for each type of writing. Model revision extensively before asking students to revise independently. Use conferencing to guide revision decisions. Create editing checklists focused on frequent error types.
For advanced learners: Revise for sophisticated elements like voice and style. Provide feedback on complex peer writing. Self-select revision priorities based on writing goals. Study published authors revision processes.

VOCABULARY:
Revising, editing, drafting, proofreading, feedback, peer review, clarity, coherence, conventions, organization, strengthen, purpose, audience

CONNECTION TO FUTURE LEARNING:
Revision and editing skills are essential for producing polished writing in any context. These skills prepare students for high-stakes writing where quality matters and for becoming independent, self-directed writers. Students will develop lifelong habits of thoughtful revision and careful editing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Revising and Editing' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Using Evidence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Using Evidence' AND grade_level_min = 6),
  'Using Evidence (Grade 6) Topic Guide',
  'Teaching incorporating quotes and paraphrasing effectively',
  'USING EVIDENCE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand the purpose of evidence in supporting claims. Basic familiarity with quotation marks and attribution is helpful. Experience with identifying relevant information in sources is expected.

LEARNING OBJECTIVES:
- Use relevant evidence to support analysis, reflection, and research
- Quote accurately from sources and maintain meaning
- Paraphrase effectively while preserving the source meaning
- Integrate evidence smoothly into original writing
- Explain how evidence supports claims or assertions

KEY CONCEPTS:
1) Evidence must be relevant to the claim or point being made
2) Quotations should be exact copies of source text with proper punctuation
3) Paraphrases restate ideas in completely new words while preserving meaning
4) Evidence must be introduced, presented, and explained to be effective
5) The writer must connect evidence to claims rather than letting quotes speak for themselves

COMMON MISCONCEPTIONS:
- Thinking a quote alone proves a point without explanation
- Believing paraphrasing means changing a few words from the original
- Dropping quotes into text without introduction or attribution
- Using too many quotes instead of developing original analysis
- Thinking paraphrasing does not require citation

TEACHING SEQUENCE:
Begin by revisiting why evidence matters in academic writing. Model the difference between quoting (exact words) and paraphrasing (complete restatement). Teach quote integration using signal phrases and proper punctuation. Practice the "quote sandwich": introduce the quote, present it, explain its significance. Introduce paraphrasing strategies: read, look away, write in own words, check accuracy. Practice explaining evidence: how does this support your point? Model blending quotes and paraphrases for variety and effect. Create exemplars showing strong and weak evidence use for analysis.

DIFFERENTIATION:
For struggling learners: Provide sentence starters for introducing evidence. Use graphic organizers with spaces for quote, source, and explanation. Practice paraphrasing short passages before longer ones. Create checklists for evidence integration.
For advanced learners: Use evidence from multiple sources in single paragraphs. Weave together quotes, paraphrases, and analysis seamlessly. Analyze how published authors use evidence. Practice strategic decisions about when to quote versus paraphrase.

VOCABULARY:
Evidence, quote, quotation, paraphrase, integrate, signal phrase, attribution, citation, support, analysis, source, introduce, explain

CONNECTION TO FUTURE LEARNING:
Evidence use skills are fundamental to academic writing across disciplines. These skills prepare students for research papers, literary analysis, and scholarly discourse. Students will develop increasingly sophisticated abilities to marshal evidence in support of complex arguments and analyses.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Using Evidence' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Unit: Language and Grammar
-- Topic: Pronouns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Pronouns' AND grade_level_min = 6),
  'Pronouns (Grade 6) Topic Guide',
  'Teaching subject, object, possessive, and relative pronouns',
  'PRONOUNS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to identify nouns and understand their function in sentences. Basic sentence structure knowledge is helpful. Familiarity with common pronouns from everyday usage is expected.

LEARNING OBJECTIVES:
- Ensure that pronouns are in the proper case (subjective, objective, possessive)
- Use relative pronouns (who, whose, whom, which, that) appropriately
- Recognize and correct inappropriate shifts in pronoun number and person
- Identify pronoun antecedents and ensure clear reference
- Use pronouns correctly in compound structures

KEY CONCEPTS:
1) Subject pronouns (I, he, she, we, they) act as subjects of sentences or clauses
2) Object pronouns (me, him, her, us, them) receive action or follow prepositions
3) Possessive pronouns (my, his, her, our, their, mine, yours) show ownership
4) Relative pronouns (who, whom, which, that) introduce relative clauses
5) Pronouns must agree with their antecedents in number and person

COMMON MISCONCEPTIONS:
- Using "me" as a subject ("Me and him went to the store")
- Confusing "who" and "whom" in formal writing
- Using "they" to refer to singular antecedents inconsistently
- Unclear pronoun reference when multiple nouns precede the pronoun
- Shifting between "you" and "one" within the same passage

TEACHING SEQUENCE:
Begin with subject versus object pronoun distinction using sentence position and function. Teach the compound test: "Him went" sounds wrong, so "He and I went" is correct. Introduce the preposition clue: object pronouns follow prepositions. Practice identifying possessive pronouns and distinguishing from contractions (its/its, their/theyre). Teach relative pronouns: who for people, which for things, that for both. Address who versus whom: who = subject, whom = object. Practice maintaining consistent pronoun person and number throughout paragraphs. Teach strategies for clear pronoun reference.

DIFFERENTIATION:
For struggling learners: Create pronoun charts organized by case. Use fill-in-the-blank exercises with immediate feedback. Focus on most common errors first. Provide oral practice before written.
For advanced learners: Analyze pronoun use in sophisticated texts. Study evolving conventions around singular "they." Explore how pronoun choice affects style and formality. Practice editing for pronoun clarity in complex sentences.

VOCABULARY:
Pronoun, antecedent, subject pronoun, object pronoun, possessive pronoun, relative pronoun, case, agreement, reference, shift, compound

CONNECTION TO FUTURE LEARNING:
Mastering pronouns is essential for clear, professional communication. These skills prepare students for formal writing across academic and professional contexts. Students will develop nuanced understanding of pronoun conventions as language continues to evolve.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pronouns' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Intensive Pronouns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Intensive Pronouns' AND grade_level_min = 6),
  'Intensive Pronouns (Grade 6) Topic Guide',
  'Teaching myself, yourself, and other intensive pronouns',
  'INTENSIVE PRONOUNS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand basic pronoun types and functions. Familiarity with subject and object pronouns is essential. Understanding of sentence structure helps students see how intensive pronouns add emphasis.

LEARNING OBJECTIVES:
- Recognize and use intensive pronouns correctly
- Distinguish between intensive and reflexive pronoun usage
- Use intensive pronouns to add emphasis in writing and speaking
- Avoid common errors with intensive pronoun placement
- Choose when intensive pronouns strengthen writing

KEY CONCEPTS:
1) Intensive pronouns end in -self or -selves: myself, yourself, himself, herself, itself, ourselves, yourselves, themselves
2) Intensive pronouns emphasize a noun or pronoun but are not essential to sentence meaning
3) Removing an intensive pronoun does not make the sentence grammatically incorrect
4) Intensive pronouns typically appear immediately after the word they emphasize
5) The same forms function as reflexive pronouns when the subject acts on itself

COMMON MISCONCEPTIONS:
- Using "myself" instead of "me" or "I" in compound subjects or objects
- Confusing intensive with reflexive use of these pronouns
- Thinking intensive pronouns are always necessary for emphasis
- Placing intensive pronouns incorrectly in sentences
- Creating non-standard forms like "hisself" or "theirselves"

TEACHING SEQUENCE:
Introduce intensive pronouns through examples that emphasize: "The president himself called." Demonstrate the removal test: "The president called" is still complete, so "himself" is intensive. Contrast with reflexive use: "He hurt himself" requires the pronoun; its not just emphasis. Practice identifying whether self pronouns are intensive or reflexive. Address the common error of using "myself" incorrectly: "The gift was for myself" should be "for me." Teach standard forms and correct non-standard variations. Practice using intensive pronouns to add emphasis to writing.

DIFFERENTIATION:
For struggling learners: Create charts distinguishing intensive from reflexive uses. Use the removal test systematically. Focus on recognition before production. Practice with clear, short sentences first.
For advanced learners: Analyze how published authors use intensive pronouns for emphasis. Study when emphasis is effective versus unnecessary. Explore formal versus informal pronoun conventions. Practice revision focusing on strategic emphasis.

VOCABULARY:
Intensive pronoun, reflexive pronoun, emphasis, emphasize, self-forms, removal test, essential, non-essential, stress

CONNECTION TO FUTURE LEARNING:
Understanding intensive pronouns helps students control emphasis and style in their writing. These skills prepare students for nuanced expression in formal and creative writing. Students will develop awareness of how small grammatical choices affect meaning and tone.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Intensive Pronouns' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Sentence Variety
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sentence Variety' AND grade_level_min = 6),
  'Sentence Variety (Grade 6) Topic Guide',
  'Teaching simple, compound, and complex sentences',
  'SENTENCE VARIETY - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should be able to identify subjects and verbs in sentences. Understanding of independent clauses is helpful. Basic familiarity with common conjunctions (and, but, or, because) is expected.

LEARNING OBJECTIVES:
- Recognize and write simple, compound, and complex sentences
- Vary sentence patterns for meaning, reader interest, and style
- Use coordinating and subordinating conjunctions appropriately
- Combine sentences to show relationships between ideas
- Avoid monotonous patterns of sentence length and structure

KEY CONCEPTS:
1) Simple sentences have one independent clause with a subject and predicate
2) Compound sentences join two independent clauses with coordinating conjunctions or semicolons
3) Complex sentences combine independent and dependent clauses with subordinating conjunctions
4) Sentence variety creates rhythm and maintains reader interest
5) Different sentence types emphasize different relationships between ideas

COMMON MISCONCEPTIONS:
- Thinking longer sentences are always better than shorter ones
- Using only commas to join independent clauses (comma splices)
- Believing all compound sentences need "and"
- Starting sentences the same way repeatedly without awareness
- Thinking complex sentences are just longer simple sentences

TEACHING SEQUENCE:
Begin by reviewing clause types: independent clauses can stand alone, dependent clauses cannot. Introduce simple sentences and their clarity for key points. Teach compound sentences using FANBOYS (for, and, nor, but, or, yet, so) and semicolons. Introduce complex sentences with subordinating conjunctions (because, although, when, if). Practice combining pairs of simple sentences into compound or complex sentences. Analyze mentor texts for sentence variety and rhythm. Model revision for variety: identify patterns and introduce variation. Practice varying sentence openings: subject, prepositional phrase, adverb, subordinate clause.

DIFFERENTIATION:
For struggling learners: Use sentence frames for each type. Practice identifying sentence types before writing them. Focus on compound sentences with "and" and "but" first. Use color-coding for clauses and conjunctions.
For advanced learners: Analyze sophisticated sentence patterns in literature. Experiment with inverted and periodic sentence structures. Study how writers use sentence length for pacing. Develop personal style through deliberate sentence choices.

VOCABULARY:
Simple sentence, compound sentence, complex sentence, independent clause, dependent clause, coordinating conjunction, subordinating conjunction, comma splice, variety, rhythm

CONNECTION TO FUTURE LEARNING:
Sentence variety skills enhance both writing quality and reading comprehension. These skills prepare students for crafting sophisticated prose and analyzing authorial style. Students will develop increasingly nuanced control over sentence structure for effect.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sentence Variety' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Punctuation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Punctuation' AND grade_level_min = 6),
  'Punctuation (Grade 6) Topic Guide',
  'Teaching commas, semicolons, and dashes for clarity',
  'PUNCTUATION - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should use basic punctuation including periods, commas in lists, and question marks. Understanding of sentence types and clause structure is helpful. Familiarity with quotation marks from previous grades is expected.

LEARNING OBJECTIVES:
- Use punctuation (commas, parentheses, dashes) to set off nonrestrictive elements
- Use commas to separate coordinate adjectives
- Use semicolons to connect independent clauses
- Distinguish between restrictive and nonrestrictive elements
- Use dashes for emphasis and parenthetical information

KEY CONCEPTS:
1) Nonrestrictive elements add extra information and are set off with commas, dashes, or parentheses
2) Restrictive elements are essential to meaning and are not set off
3) Semicolons connect closely related independent clauses without conjunctions
4) Coordinate adjectives each independently modify a noun and take commas between them
5) Dashes create emphasis or signal abrupt breaks in thought

COMMON MISCONCEPTIONS:
- Putting commas wherever there is a pause in reading
- Treating all interrupting elements the same regardless of function
- Using semicolons like commas or colons
- Adding commas between all adjectives before nouns
- Overusing dashes, diminishing their impact

TEACHING SEQUENCE:
Begin with the distinction between restrictive (essential) and nonrestrictive (extra) information. Teach the "remove it" test: if removal changes meaning, do not use commas. Practice with appositives and relative clauses: "My brother, who lives in Texas, visited" versus "The brother who lives in Texas visited." Introduce coordinate adjective test: if "and" works between adjectives and order can reverse, use comma. Teach semicolons as "soft periods" connecting related independent clauses. Introduce dashes for emphasis or parenthetical asides: "The answer—if there is one—remains unclear." Compare dashes, parentheses, and commas for setting off information with different emphasis levels.

DIFFERENTIATION:
For struggling learners: Focus on one punctuation rule at a time with extensive practice. Use the "remove it" test consistently. Provide sentence examples to label and punctuate. Create punctuation decision trees.
For advanced learners: Analyze punctuation choices in published writing. Study how punctuation affects tone and pacing. Practice using punctuation for stylistic effect. Edit complex passages for punctuation.

VOCABULARY:
Punctuation, comma, semicolon, dash, parentheses, restrictive, nonrestrictive, essential, coordinate adjectives, clause, emphasis, parenthetical

CONNECTION TO FUTURE LEARNING:
Punctuation mastery enables clear, professional writing across contexts. These skills prepare students for academic writing where precision matters and for understanding how punctuation shapes meaning in texts they read. Students will develop increasingly sophisticated punctuation use for clarity and style.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Punctuation' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Spelling Patterns
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Spelling Patterns' AND grade_level_min = 6),
  'Spelling Patterns (Grade 6) Topic Guide',
  'Teaching common spelling rules and exceptions',
  'SPELLING PATTERNS - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should have basic phonics knowledge and spelling experience. Understanding of syllable patterns and common word parts is helpful. Students should be able to use dictionaries and spell-check tools.

LEARNING OBJECTIVES:
- Spell correctly by using knowledge of spelling rules and patterns
- Recognize and apply common spelling conventions and exceptions
- Use spelling resources including dictionaries and spell-check effectively
- Apply morphological knowledge (roots, prefixes, suffixes) to spelling
- Identify and correct common spelling errors in writing

KEY CONCEPTS:
1) Many spelling rules have patterns that can be learned and applied
2) Understanding word parts (morphology) helps with spelling complex words
3) Some high-frequency words must be memorized because they break patterns
4) Etymology (word origin) often explains unusual spellings
5) Proofreading strategies help catch spelling errors that automated tools miss

COMMON MISCONCEPTIONS:
- Thinking spell-check catches all errors
- Believing English spelling has no patterns because of exceptions
- Memorizing spelling words without understanding underlying patterns
- Applying rules without considering exceptions
- Thinking good readers are automatically good spellers

TEACHING SEQUENCE:
Teach useful spelling rules with their common exceptions: i before e except after c (and in neighbor, weigh, etc.); drop silent e before adding vowel suffixes; double final consonants in certain situations. Connect spelling to morphology: knowing roots helps spell related words correctly. Introduce etymology to explain why some words are spelled unusually: psychology, knead, through. Teach proofreading strategies beyond spell-check: reading backwards, focusing on personal trouble spots, reading aloud. Build personal spelling lists of frequently misspelled words. Practice applying rules systematically in editing.

DIFFERENTIATION:
For struggling learners: Focus on most useful patterns with fewest exceptions. Create visual pattern charts. Use multisensory spelling practice. Build personal dictionaries of challenging words.
For advanced learners: Study etymology and how it affects spelling. Analyze spelling patterns across related words. Practice with challenging academic vocabulary. Explore spelling reform debates and history.

VOCABULARY:
Spelling, pattern, rule, exception, prefix, suffix, root, morphology, etymology, homophone, proofreading, convention

CONNECTION TO FUTURE LEARNING:
Accurate spelling is essential for credible writing in academic and professional contexts. These skills prepare students for high-stakes writing where errors diminish message effectiveness. Students will develop proofreading habits and spelling knowledge that serve them throughout their lives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Spelling Patterns' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- Topic: Style and Tone
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Style and Tone' AND grade_level_min = 6),
  'Style and Tone (Grade 6) Topic Guide',
  'Teaching word choice to match purpose and audience',
  'STYLE AND TONE - TOPIC TEACHING GUIDE (GRADE 6)

PREREQUISITES:
Students should understand that writing has different purposes and audiences. Basic vocabulary and word choice awareness is helpful. Experience with reading texts in different genres and registers is expected.

LEARNING OBJECTIVES:
- Maintain consistency in style and tone throughout writing
- Adapt language to match purpose and audience
- Choose words and phrases to convey ideas precisely
- Recognize how word choice affects formality and mood
- Distinguish between formal and informal styles

KEY CONCEPTS:
1) Style refers to how an author expresses ideas through word choice, sentence structure, and techniques
2) Tone is the writers attitude toward the subject or audience
3) Formal style uses academic vocabulary, complete sentences, and avoids contractions and slang
4) Informal style is conversational, may use contractions, and is more personal
5) Consistency in style and tone throughout a piece creates coherence

COMMON MISCONCEPTIONS:
- Thinking formal always means using big words
- Shifting between formal and informal style unintentionally
- Believing personal writing cannot have style
- Confusing tone with topic
- Thinking style only matters in creative writing

TEACHING SEQUENCE:
Begin by analyzing texts written for different purposes and audiences, noting language differences. Introduce the concept of register: formal, informal, and variations between. Practice rewriting the same message for different audiences: friend, teacher, principal. Teach word choice for precision: find the exact word rather than general approximations. Analyze how tone is created through word choice: the difference between "said" and "admitted" or "explained." Practice maintaining consistent style through revision, identifying and fixing unintentional shifts. Connect style choices to purpose and genre expectations.

DIFFERENTIATION:
For struggling learners: Provide anchor texts as models of different styles. Create word banks for formal versus informal alternatives. Focus on recognition before production. Use comparison activities with same content in different styles.
For advanced learners: Analyze how published authors develop distinctive styles. Experiment with different voices and personas. Study how style creates character in fiction. Develop personal style while meeting audience expectations.

VOCABULARY:
Style, tone, formal, informal, register, word choice, diction, audience, purpose, consistency, voice, connotation, mood

CONNECTION TO FUTURE LEARNING:
Style and tone awareness is essential for effective communication across contexts. These skills prepare students for adapting their writing to different academic and professional situations. Students will develop increasingly sophisticated control over style to achieve their communication goals.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Style and Tone' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 6 READING TOPIC PROMPTS
-- Total: 24 comprehensive topic teaching guides
-- ============================================================================
