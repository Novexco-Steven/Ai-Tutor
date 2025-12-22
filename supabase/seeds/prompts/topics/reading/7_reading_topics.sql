-- ============================================================================
-- GRADE 7 READING TOPIC PROMPTS
-- Comprehensive teaching guides for all Grade 7 Reading/ELA topics
-- ============================================================================

-- Unit: Literary Analysis
-- Topic: Theme and Central Idea
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme and Central Idea' AND grade_level_min = 7),
  'Theme and Central Idea (Grade 7) Topic Guide',
  'Teaching identification and tracing of themes throughout texts',
  'THEME AND CENTRAL IDEA - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the difference between topic and theme from Grade 6. They should be able to identify main ideas and supporting details. Experience with analyzing character development and plot structure helps students trace thematic development.

LEARNING OBJECTIVES:
- Determine a theme or central idea of a text and analyze its development over the course of the text
- Provide an objective summary of the text that captures thematic elements
- Trace how characters, plot, and setting contribute to theme development
- Analyze how authors use specific techniques to develop theme
- Compare themes across multiple texts

KEY CONCEPTS:
1) Themes emerge through the accumulation of details, character choices, and plot events
2) Authors develop themes through repetition, contrast, symbolism, and character transformation
3) A texts central idea is what it is about; the theme is the insight or message about that idea
4) Complex texts may develop multiple themes that interact with each other
5) Themes often connect to universal human experiences that transcend time and culture

COMMON MISCONCEPTIONS:
- Stating theme as a single word rather than a complete insight about life
- Confusing the moral of a story with its deeper thematic meaning
- Thinking theme is always stated explicitly rather than developed implicitly
- Assuming all readers must agree on a single correct theme
- Believing theme only emerges at the end rather than developing throughout

TEACHING SEQUENCE:
Begin by reviewing theme versus topic and practicing stating themes as complete sentences. Model tracing theme development by identifying key moments where themes become clearer. Teach students to look for patterns: repeated images, contrasting characters, moments of realization. Analyze how authors develop themes through showing rather than telling. Practice identifying how different elements (character, setting, conflict, resolution) each contribute to theme. Compare how similar themes appear in different texts and how context affects development. Write thematic analysis paragraphs with textual evidence showing theme development.

DIFFERENTIATION:
For struggling learners: Provide theme statement templates (This story shows that...). Use graphic organizers tracking theme evidence across the text. Start with texts that have clear, single themes. Create theme word banks for common universal themes.
For advanced learners: Analyze competing or contradictory themes within texts. Study how cultural and historical context affects theme interpretation. Compare theme treatment across genres and time periods. Analyze how authors subvert or complicate expected themes.

VOCABULARY:
Theme, central idea, develop, emerge, trace, universal, insight, message, moral, symbol, motif, analyze, implicit, explicit, objective summary

CONNECTION TO FUTURE LEARNING:
Theme analysis skills prepare students for sophisticated literary interpretation and understanding how texts comment on human experience. These skills transfer to analyzing arguments, understanding subtext, and interpreting meaning across all media. Students will build on these abilities for advanced literary study and critical thinking.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme and Central Idea' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Character Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 7),
  'Character Analysis (Grade 7) Topic Guide',
  'Analyzing how characters change and what motivates them',
  'CHARACTER ANALYSIS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should be able to identify character traits using textual evidence. Understanding of basic character types and the difference between static and dynamic characters is helpful. Familiarity with how actions and dialogue reveal character is expected.

LEARNING OBJECTIVES:
- Analyze how particular elements of a story or drama interact
- Trace how characters develop over the course of a text
- Explain how setting, plot events, and other characters influence character development
- Analyze character motivation and its effects on plot
- Evaluate character decisions and their consequences

KEY CONCEPTS:
1) Character development occurs through responses to conflict, relationships, and internal struggle
2) Motivation drives character action; understanding motivation explains behavior
3) Characters are shaped by and shape their settings and circumstances
4) Complex characters may have conflicting motivations or undergo significant change
5) Character analysis requires inferring from speech, actions, thoughts, and others reactions

COMMON MISCONCEPTIONS:
- Describing only what characters do rather than analyzing why
- Treating characters as simply good or bad without recognizing complexity
- Assuming character change happens suddenly rather than through development
- Missing how secondary characters contribute to protagonist development
- Confusing what characters say about themselves with their true nature

TEACHING SEQUENCE:
Begin by reviewing how readers infer character traits from text evidence. Introduce the concept of character motivation: what does the character want? What does the character need? Model tracking character development through key scenes, noting how responses change. Analyze how setting and circumstances constrain or enable character choices. Study character relationships and how characters influence each other. Practice writing analytical paragraphs that trace character development with supporting evidence. Compare how authors develop flat versus round characters and analyze the purpose of each.

DIFFERENTIATION:
For struggling learners: Use character tracking charts across text sections. Provide motivation prompts (wants, fears, needs). Focus on one character before analyzing interactions. Create sentence starters for character analysis writing.
For advanced learners: Analyze unreliable self-presentation and ironic characterization. Compare character development techniques across authors. Study how cultural context affects character choices. Analyze character archetypes and how authors adapt them.

VOCABULARY:
Character development, motivation, dynamic, static, round, flat, foil, interaction, conflict, transformation, complexity, inference, trait, behavior

CONNECTION TO FUTURE LEARNING:
Character analysis skills prepare students for understanding human psychology and motivation in literature and life. These skills transfer to analyzing real people in historical texts, understanding narrative in various media, and developing characters in their own writing. Students will build increasingly sophisticated psychological analysis abilities.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Analysis' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Point of View
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Point of View' AND grade_level_min = 7),
  'Point of View (Grade 7) Topic Guide',
  'Comparing first-person, third-person limited, and omniscient narration',
  'POINT OF VIEW - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand basic point of view types from Grade 6. Familiarity with how pronouns indicate point of view is helpful. Understanding that narrators have limited or complete knowledge affects interpretation.

LEARNING OBJECTIVES:
- Analyze how an authors development of point of view affects meaning and reader experience
- Compare and contrast points of view of different characters in the same text
- Explain how differences in point of view create effects such as suspense or humor
- Analyze how authors use point of view to develop character
- Evaluate the reliability of narrators based on their perspective

KEY CONCEPTS:
1) Point of view controls what information readers receive and how they receive it
2) Different characters within a story have different perspectives that may conflict
3) Authors choose point of view strategically to create specific effects
4) Limited perspectives can create suspense, dramatic irony, or unreliable narration
5) Contrasting character perspectives within a text reveals complexity and meaning

COMMON MISCONCEPTIONS:
- Thinking point of view only matters for whose story it is
- Missing how point of view creates bias even in third-person narration
- Assuming narrators always tell the truth
- Confusing characters views with the authors message
- Thinking point of view cannot shift within a single text

TEACHING SEQUENCE:
Review point of view types and their typical effects. Analyze passages showing how the same event appears different from different perspectives. Introduce the concept of unreliable narrators and how readers detect bias or limitations. Study how authors create dramatic irony when readers know more than characters. Practice identifying whose perspective is being shared at any moment in complex texts. Analyze how point of view contributes to characterization and theme. Compare how different point of view choices would change a narrative. Write analytical paragraphs about how point of view creates specific effects.

DIFFERENTIATION:
For struggling learners: Create perspective charts showing what different characters know. Use graphic novels where point of view is visual. Practice identifying perspective shifts with clear markers. Compare straightforward narrators before analyzing unreliable ones.
For advanced learners: Analyze sophisticated uses of multiple perspectives. Study experimental point of view techniques. Examine how point of view reflects cultural and historical context. Practice writing the same scene from multiple perspectives.

VOCABULARY:
Point of view, perspective, narrator, first person, third person, limited, omniscient, unreliable, bias, dramatic irony, suspense, reliability

CONNECTION TO FUTURE LEARNING:
Point of view analysis prepares students for understanding how perspective shapes all forms of communication. These skills transfer to evaluating sources, understanding bias in media, and recognizing how information is always mediated through perspective. Students will develop critical awareness essential for informed citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Point of View' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Figurative Language
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 7),
  'Figurative Language (Grade 7) Topic Guide',
  'Identifying and interpreting similes, metaphors, personification, and more',
  'FIGURATIVE LANGUAGE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should recognize basic figurative language types from Grade 6. Understanding the difference between literal and figurative meaning is essential. Familiarity with how figurative language creates imagery is helpful.

LEARNING OBJECTIVES:
- Determine the meaning of words and phrases including figurative and connotative meanings
- Analyze the impact of rhymes and repetition on specific verses or stanzas
- Analyze how specific word choices contribute to meaning and tone
- Interpret figurative language in context and explain its effects
- Analyze patterns of figurative language across texts

KEY CONCEPTS:
1) Figurative language creates meaning beyond literal definitions through comparison and exaggeration
2) Connotation refers to the emotional and cultural associations words carry beyond dictionary definitions
3) Sound devices including rhyme, rhythm, and alliteration create musical effects and emphasize meaning
4) Authors use figurative language strategically to create tone, mood, and deeper meaning
5) Patterns of figurative language can develop themes and characterization

COMMON MISCONCEPTIONS:
- Thinking figurative language is decoration rather than essential to meaning
- Interpreting figurative language too literally
- Missing connotative meanings that affect interpretation
- Believing figurative language only appears in poetry
- Assuming one interpretation of figurative language is always correct

TEACHING SEQUENCE:
Review figurative language types and expand to include more sophisticated devices like oxymoron, allusion, and extended metaphor. Teach connotation by comparing words with similar denotations but different associations. Analyze how sound devices create effects in poetry and prose. Practice close reading focused on figurative language and its contribution to meaning. Study how authors develop extended metaphors or patterns of imagery across texts. Connect figurative language analysis to theme and characterization. Practice writing analytical paragraphs about how figurative language creates specific effects.

DIFFERENTIATION:
For struggling learners: Build on familiar examples before introducing new devices. Create illustrated figurative language dictionaries. Practice identifying before analyzing effects. Use contemporary music and advertising for accessible examples.
For advanced learners: Analyze complex allusions requiring background knowledge. Study how figurative language evolves over time. Examine cultural differences in figurative expressions. Create original extended metaphors and analyze published ones.

VOCABULARY:
Figurative language, connotation, denotation, metaphor, simile, personification, hyperbole, allusion, imagery, symbolism, oxymoron, rhyme, alliteration, tone

CONNECTION TO FUTURE LEARNING:
Figurative language analysis prepares students for sophisticated literary interpretation and understanding how language creates meaning. These skills transfer to analyzing rhetoric, understanding poetry, and recognizing how authors craft their messages. Students will develop appreciation for linguistic artistry and its effects.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Plot Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Plot Structure' AND grade_level_min = 7),
  'Plot Structure (Grade 7) Topic Guide',
  'Analyzing exposition, rising action, climax, and resolution',
  'PLOT STRUCTURE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand basic plot elements from Grade 6. Familiarity with conflict types and how they drive narrative is helpful. Understanding of how character development connects to plot is expected.

LEARNING OBJECTIVES:
- Analyze how a dramas or storys form or structure contributes to its meaning
- Explain how an author develops and contrasts points of view of different characters
- Analyze how particular elements of a story or drama interact
- Evaluate how structural choices create effects such as tension or surprise
- Compare structural approaches across different texts

KEY CONCEPTS:
1) Plot structure is not just sequence but strategic arrangement of events for effect
2) Authors manipulate pacing to control tension, emphasis, and reader engagement
3) Subplots interact with main plots to develop themes and characters
4) Non-linear structures including flashbacks and flash-forwards create specific effects
5) Structural choices reflect and support thematic content

COMMON MISCONCEPTIONS:
- Thinking all stories follow identical plot structures
- Confusing chronological order with narrative order
- Missing how pacing decisions affect experience of events
- Overlooking the purpose of exposition or falling action
- Believing subplots are less important than main plots

TEACHING SEQUENCE:
Review plot structure terminology and practice identifying elements in new texts. Analyze how authors control pacing: slowing down for important moments, speeding through transitions. Introduce non-linear techniques and analyze their effects: why does this story begin where it does? Study how subplots parallel or contrast with main plots. Compare structural choices across different versions of similar stories. Analyze how structure supports theme: what is emphasized, delayed, or juxtaposed? Practice writing analytical paragraphs about how structural choices create meaning.

DIFFERENTIATION:
For struggling learners: Use visual plot diagrams and timeline activities. Focus on clear, linear narratives before analyzing complex structures. Compare familiar adaptations with known plot structures. Create parallel tracking of plot and subplot.
For advanced learners: Analyze experimental and fragmented narrative structures. Study how genre conventions affect expected structures. Compare dramatic structure with narrative structure. Analyze unreliable chronology and its effects.

VOCABULARY:
Plot structure, exposition, rising action, climax, falling action, resolution, subplot, pacing, flashback, flash-forward, foreshadowing, tension, suspense, juxtaposition

CONNECTION TO FUTURE LEARNING:
Plot structure analysis prepares students for understanding narrative across all media and genres. These skills transfer to analyzing films, television, and interactive narratives as well as traditional literature. Students will develop awareness of how structure shapes meaning and experience in all storytelling.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plot Structure' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Unit: Informational Text
-- Topic: Central Ideas and Details
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Central Ideas and Details' AND grade_level_min = 7),
  'Central Ideas and Details (Grade 7) Topic Guide',
  'Identifying main ideas and supporting evidence in nonfiction',
  'CENTRAL IDEAS AND DETAILS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should be able to distinguish main ideas from supporting details. Understanding of how to summarize informational texts is helpful. Familiarity with common text structures aids identification of central ideas.

LEARNING OBJECTIVES:
- Determine two or more central ideas in a text and analyze their development
- Provide an objective summary distinct from personal opinions
- Analyze how central ideas are developed by particular details and examples
- Evaluate the effectiveness of supporting details in developing ideas
- Trace how central ideas interact and build on each other

KEY CONCEPTS:
1) Complex texts often develop multiple central ideas that work together
2) Central ideas are developed through facts, statistics, examples, anecdotes, and expert opinions
3) The relationship between central ideas and details is hierarchical and purposeful
4) Objective summaries convey what texts say without personal interpretation
5) Tracing idea development requires noting how understanding accumulates across a text

COMMON MISCONCEPTIONS:
- Including minor details in summaries instead of focusing on central ideas
- Missing implicit central ideas that are not directly stated
- Adding personal reactions or opinions to objective summaries
- Treating all paragraphs as equally important
- Confusing interesting details with essential supporting evidence

TEACHING SEQUENCE:
Model identifying multiple central ideas in complex informational texts. Teach strategies for determining relative importance: what does everything else support? Analyze how different types of details (facts, examples, statistics) develop central ideas. Practice distinguishing between major supporting points and minor details. Create hierarchical outlines showing relationships between ideas. Write objective summaries focusing on central ideas and key support. Compare summaries to evaluate inclusion decisions and objectivity.

DIFFERENTIATION:
For struggling learners: Use texts with clear organizational signals. Provide main idea and detail sorting activities. Create templates for objective summary writing. Focus on texts with single central ideas before analyzing multiple.
For advanced learners: Analyze how authors layer and complicate central ideas. Evaluate conflicting central ideas within single texts. Compare how different authors develop similar ideas. Practice summarizing increasingly complex and lengthy texts.

VOCABULARY:
Central idea, main idea, supporting details, summary, objective, development, evidence, facts, examples, statistics, hierarchy, implicit, explicit

CONNECTION TO FUTURE LEARNING:
Central idea and detail skills are essential for academic reading and research across all disciplines. These skills prepare students for note-taking, studying, and synthesizing complex information. Students will build on these abilities for increasingly sophisticated textual analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Central Ideas and Details' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Evaluating Arguments
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Evaluating Arguments' AND grade_level_min = 7),
  'Evaluating Arguments (Grade 7) Topic Guide',
  'Assessing the strength of claims, reasons, and evidence',
  'EVALUATING ARGUMENTS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the components of arguments: claims, reasons, and evidence. Familiarity with identifying authors purpose and point of view is helpful. Basic experience with distinguishing fact from opinion is expected.

LEARNING OBJECTIVES:
- Trace and evaluate the argument and specific claims in a text
- Assess whether the reasoning is sound and the evidence is relevant and sufficient
- Identify false statements and fallacious reasoning
- Analyze how authors use rhetoric to advance their position
- Compare arguments on the same topic to evaluate relative strength

KEY CONCEPTS:
1) Sound reasoning logically connects evidence to claims
2) Relevant evidence directly relates to the specific claim being made
3) Sufficient evidence provides enough support to make a claim convincing
4) Fallacies are errors in reasoning that undermine arguments
5) Rhetoric includes strategies authors use to persuade beyond logic alone

COMMON MISCONCEPTIONS:
- Thinking arguments are good because you agree with the conclusion
- Missing emotional appeals disguised as logical reasoning
- Assuming any evidence is sufficient to prove a claim
- Believing published arguments are automatically well-reasoned
- Confusing correlation with causation

TEACHING SEQUENCE:
Review argument structure and practice mapping claims, reasons, and evidence. Teach evaluation criteria: Is the reasoning logical? Is evidence relevant? Is there enough evidence? Introduce common fallacies: hasty generalization, false cause, appeal to authority. Practice identifying rhetorical strategies: emotional appeal, loaded language, rhetorical questions. Analyze arguments from multiple sides of issues to evaluate and compare. Practice writing evaluations that assess argument quality with specific criteria. Discuss how to disagree with reasoning without dismissing conclusions.

DIFFERENTIATION:
For struggling learners: Use argument evaluation checklists. Start with clearly flawed arguments before analyzing subtle weaknesses. Practice identifying one type of fallacy at a time. Map arguments visually before evaluating.
For advanced learners: Analyze sophisticated arguments with multiple claims. Identify subtle manipulation and propaganda techniques. Evaluate arguments in advertising and media. Practice constructing and defending their own complex arguments.

VOCABULARY:
Argument, claim, evidence, reasoning, evaluate, relevant, sufficient, sound, fallacy, rhetoric, persuade, logic, appeal, credibility

CONNECTION TO FUTURE LEARNING:
Argument evaluation skills are essential for academic success and informed citizenship. These skills prepare students for research, debate, and critical media consumption. Students will develop increasingly sophisticated analytical abilities for navigating a world of competing claims.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Arguments' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Text Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Text Structure' AND grade_level_min = 7),
  'Text Structure (Grade 7) Topic Guide',
  'Recognizing cause/effect, compare/contrast, and problem/solution patterns',
  'TEXT STRUCTURE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should recognize basic organizational patterns from Grade 6. Understanding of signal words that indicate different structures is helpful. Familiarity with how structure relates to purpose aids comprehension.

LEARNING OBJECTIVES:
- Analyze the structure an author uses to organize a text, including how major sections contribute to the whole
- Identify how text structure develops key concepts
- Recognize when authors use multiple structures within single texts
- Analyze how structural choices support authors purpose
- Use structure to improve comprehension and navigation of complex texts

KEY CONCEPTS:
1) Authors choose structures that best serve their purpose and content
2) Complex texts often combine multiple organizational patterns
3) Major sections within texts have their own internal organization
4) Understanding structure helps readers predict, navigate, and remember content
5) Transitions between structures signal shifts in approach or focus

COMMON MISCONCEPTIONS:
- Expecting texts to use only one structure throughout
- Missing structural shifts within longer texts
- Confusing temporal sequence with cause and effect
- Ignoring how sections work together in longer texts
- Believing structure is merely organizational rather than meaningful

TEACHING SEQUENCE:
Review organizational patterns and their signal words. Model identifying structure at multiple levels: whole text, sections, paragraphs. Analyze how authors combine structures for different purposes. Practice predicting content based on identified structure. Study how transitions signal structural shifts. Analyze the same topic organized differently and compare effectiveness. Create graphic organizers matched to different structures. Write analyses of how structure develops and supports central ideas.

DIFFERENTIATION:
For struggling learners: Use color-coded signal word lists. Provide structure-specific graphic organizers. Start with clearly structured texts before analyzing complex ones. Practice identifying one structure type extensively before mixing.
For advanced learners: Analyze how genre affects structural expectations. Study how authors innovate within or subvert traditional structures. Compare digital text structures with print conventions. Analyze how visual and textual structures interact.

VOCABULARY:
Text structure, organization, chronological, cause and effect, compare and contrast, problem and solution, signal words, transition, section, development, sequence

CONNECTION TO FUTURE LEARNING:
Text structure analysis prepares students for efficiently navigating complex academic materials. These skills transfer to organizing their own writing effectively and understanding how structure supports meaning. Students will apply structural analysis to increasingly sophisticated texts across disciplines.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Text Structure' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Analyzing Media
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Media' AND grade_level_min = 7),
  'Analyzing Media (Grade 7) Topic Guide',
  'Comparing how different media present the same topic',
  'ANALYZING MEDIA - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that information can be presented in multiple formats. Basic experience with various media types (print, video, audio, digital) is helpful. Understanding of authors purpose aids media analysis.

LEARNING OBJECTIVES:
- Compare and contrast a text to its audio, filmed, staged, or multimedia version
- Analyze how each medium shapes the presentation of the subject
- Evaluate the effects of techniques unique to each medium
- Assess how the experience differs across media
- Determine how medium choices affect meaning and audience engagement

KEY CONCEPTS:
1) Different media have unique affordances and constraints that shape presentation
2) Adaptation involves interpretation; changes reveal what adapters emphasize
3) Visual and audio elements create meaning that words alone cannot convey
4) Medium affects pacing, emphasis, and what information is foregrounded
5) Critical media literacy requires analyzing how medium shapes message

COMMON MISCONCEPTIONS:
- Thinking adaptations should be identical to source material
- Missing how medium-specific techniques create meaning
- Assuming one medium is inherently better than another
- Overlooking how audience changes across media formats
- Treating multimedia as just text with pictures

TEACHING SEQUENCE:
Introduce the concept of medium as a shaping force on content. Compare specific passages with their filmed or audio versions, noting additions and omissions. Analyze how visual composition, music, and editing create effects. Study how print techniques (layout, typography, images) create meaning. Compare how the same news story appears across different media platforms. Analyze what each medium emphasizes, minimizes, or excludes. Practice evaluating which medium best serves particular purposes. Create analyses comparing content across media formats.

DIFFERENTIATION:
For struggling learners: Use familiar content across media (novels and films students know). Create comparison charts for side-by-side analysis. Focus on obvious differences before subtle ones. Use guided viewing and reading activities.
For advanced learners: Analyze how algorithms and platforms shape content delivery. Study how propaganda uses medium-specific techniques. Examine remediation and transmedia storytelling. Create original content adapting across media.

VOCABULARY:
Medium, media, adaptation, format, visual, audio, multimedia, technique, presentation, interpretation, affordance, composition, editing, platform

CONNECTION TO FUTURE LEARNING:
Media analysis skills are essential for critical citizenship in a multimedia world. These skills prepare students for evaluating information across platforms and understanding how medium shapes meaning. Students will develop sophisticated awareness of how all communication is mediated.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Media' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Unit: Writing Skills
-- Topic: Argumentative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Argumentative Writing' AND grade_level_min = 7),
  'Argumentative Writing (Grade 7) Topic Guide',
  'Writing persuasive essays with clear claims and evidence',
  'ARGUMENTATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have experience with basic argument structure from Grade 6. Understanding of claims, reasons, and evidence is essential. Familiarity with evaluating arguments helps students construct their own.

LEARNING OBJECTIVES:
- Write arguments to support claims with clear reasons and relevant evidence
- Introduce claims, acknowledge alternate or opposing claims, and organize logically
- Support claims with logical reasoning and accurate, credible sources
- Use words, phrases, and clauses to create cohesion among claims, counterclaims, reasons, and evidence
- Establish and maintain a formal style and provide a concluding statement

KEY CONCEPTS:
1) Strong arguments acknowledge and address opposing viewpoints
2) Logical organization builds from claim through reasoning to conclusion
3) Credible evidence from reliable sources strengthens arguments
4) Transitions clarify relationships between ideas and create cohesion
5) Formal style and objective tone enhance credibility

COMMON MISCONCEPTIONS:
- Thinking acknowledging counterarguments weakens their position
- Using emotional appeals instead of logical reasoning
- Treating all sources as equally credible
- Presenting reasons without connecting them to evidence
- Confusing opinion statement with well-supported claim

TEACHING SEQUENCE:
Review argument structure and analyze exemplary argumentative essays. Teach claim writing that is specific, debatable, and well-focused. Model acknowledging counterarguments and explaining why your position is stronger. Practice evaluating and integrating credible sources. Teach transition words and phrases that signal relationships. Develop formal style through word choice and sentence construction. Practice outlining before drafting to ensure logical organization. Use peer review focused on argument strength and evidence quality.

DIFFERENTIATION:
For struggling learners: Provide argument organizers with sections for claim, counterargument, reasons, and evidence. Offer curated source sets for familiar topics. Use sentence starters for transitions and concessions. Break writing process into manageable steps.
For advanced learners: Argue nuanced positions with multiple qualifications. Address multiple counterarguments substantively. Use sophisticated rhetorical techniques. Write for real audiences and purposes.

VOCABULARY:
Argument, claim, counterclaim, evidence, reasoning, credible, relevant, sufficient, acknowledge, refute, transition, formal style, cohesion, conclusion

CONNECTION TO FUTURE LEARNING:
Argumentative writing skills are essential for academic success and civic participation. These skills prepare students for persuasive writing across disciplines, debate, and advocacy. Students will develop increasingly sophisticated argumentation abilities for college and career.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Argumentative Writing' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Narrative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 7),
  'Narrative Writing (Grade 7) Topic Guide',
  'Crafting stories with vivid details, dialogue, and pacing',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have experience with basic narrative structure. Understanding of plot elements and character development from reading is helpful. Familiarity with using dialogue and description in writing is expected.

LEARNING OBJECTIVES:
- Write narratives to develop real or imagined experiences using effective technique
- Engage and orient the reader by establishing context and point of view
- Use narrative techniques such as dialogue, pacing, description, and reflection
- Use a variety of transitions to convey sequence, signal shifts, and show relationships
- Provide a conclusion that reflects on the narrated experience

KEY CONCEPTS:
1) Effective narratives engage readers from the opening and maintain interest throughout
2) Pacing controls how fast or slow events unfold to create tension and emphasis
3) Dialogue reveals character, advances plot, and creates authenticity
4) Reflection allows narrators to interpret and find meaning in experiences
5) Sensory details create vivid settings and experiences for readers

COMMON MISCONCEPTIONS:
- Including everything that happened rather than selecting purposefully
- Writing dialogue that serves no narrative purpose
- Rushing through important moments or dwelling on unimportant ones
- Ending without providing meaningful closure or reflection
- Telling readers what to feel rather than showing through detail

TEACHING SEQUENCE:
Study mentor texts for narrative techniques, analyzing how authors create effects. Practice writing engaging openings that establish context and hook readers. Develop pacing awareness: when to slow down with detail and when to speed through with summary. Refine dialogue skills: natural speech, proper formatting, purposeful inclusion. Practice using sensory details strategically rather than exhaustively. Introduce reflection as a tool for creating meaning. Work through the full writing process with peer feedback on narrative elements.

DIFFERENTIATION:
For struggling learners: Use story planning graphic organizers. Provide mentor sentences for dialogue and description. Focus on one narrative technique at a time. Offer structured revision checklists.
For advanced learners: Experiment with non-linear structures and multiple perspectives. Develop complex internal conflicts. Use literary devices like foreshadowing and symbolism. Create narratives that explore meaningful themes.

VOCABULARY:
Narrative, plot, character, setting, dialogue, pacing, description, reflection, sensory details, tension, conflict, resolution, technique, transition, closure

CONNECTION TO FUTURE LEARNING:
Narrative writing skills develop creativity, empathy, and sophisticated language use. These skills prepare students for personal essays, creative writing, and storytelling across media. Students will continue developing narrative craft for self-expression and communication throughout their lives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Research Skills
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Skills' AND grade_level_min = 7),
  'Research Skills (Grade 7) Topic Guide',
  'Finding, evaluating, and citing sources properly',
  'RESEARCH SKILLS - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have basic research experience from Grade 6. Understanding of paraphrasing versus quoting is essential. Familiarity with basic citation practices is helpful.

LEARNING OBJECTIVES:
- Conduct short research projects to answer a question, drawing on several sources
- Generate additional related, focused questions for further research
- Gather relevant information from multiple print and digital sources
- Assess the credibility and accuracy of each source
- Quote or paraphrase the data and conclusions of others while avoiding plagiarism

KEY CONCEPTS:
1) Good research generates new questions as understanding develops
2) Source evaluation requires examining authority, accuracy, currency, and purpose
3) Multiple sources provide fuller understanding and allow cross-verification
4) Proper attribution through citation respects intellectual property
5) Synthesis combines information from sources rather than summarizing separately

COMMON MISCONCEPTIONS:
- Thinking research means finding sources that agree with predetermined conclusions
- Trusting all published sources equally
- Copying and slightly rewording as acceptable paraphrasing
- Believing only direct quotes require citation
- Ending research when enough sources are found rather than when questions are answered

TEACHING SEQUENCE:
Begin with question development and how research questions evolve. Teach advanced search strategies including databases and specialized sources. Model source evaluation using the CRAAP test (Currency, Relevance, Authority, Accuracy, Purpose). Practice note-taking that clearly distinguishes sources and personal ideas. Refine paraphrasing skills for accurate restatement without copying. Teach citation formats and when citation is required. Practice synthesizing information from multiple sources. Guide students through research projects from question through product.

DIFFERENTIATION:
For struggling learners: Provide structured note-taking templates. Use evaluation checklists for sources. Offer curated source sets for initial projects. Break research process into clear, manageable steps.
For advanced learners: Use primary sources and specialized databases. Navigate conflicting sources and explain discrepancies. Conduct more extensive research projects. Develop annotated bibliographies evaluating source quality.

VOCABULARY:
Research, source, credibility, evaluation, paraphrase, quote, citation, plagiarism, primary source, secondary source, database, synthesis, bibliography

CONNECTION TO FUTURE LEARNING:
Research skills are essential for academic work and lifelong learning. These skills prepare students for independent inquiry and the ability to find and evaluate information. Students will develop increasingly sophisticated research abilities for academic and professional contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Skills' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Revision and Editing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Revision and Editing' AND grade_level_min = 7),
  'Revision and Editing (Grade 7) Topic Guide',
  'Improving drafts for clarity, organization, and conventions',
  'REVISION AND EDITING - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand the difference between revision and editing. Experience with the writing process including drafting and receiving feedback is expected. Basic grammar and mechanics knowledge is essential for editing.

LEARNING OBJECTIVES:
- Develop and strengthen writing by planning, revising, editing, and rewriting
- Address the most significant needs based on purpose and audience
- Give and receive constructive feedback on writing
- Revise for development, organization, style, and word choice
- Edit for conventions including grammar, spelling, and punctuation

KEY CONCEPTS:
1) Revision focuses on content and organization; editing focuses on correctness
2) Multiple revisions with different focuses improve different aspects of writing
3) Distance from drafts improves revision quality
4) Peer feedback provides perspectives writers cannot achieve alone
5) Writers must develop self-assessment skills to improve independently

COMMON MISCONCEPTIONS:
- Thinking revision means only fixing errors
- Making only surface changes when content revision is needed
- Believing good writers produce polished first drafts
- Accepting all peer feedback without evaluation
- Assuming spell check and grammar check catch all errors

TEACHING SEQUENCE:
Teach revision strategies for different aspects: content, organization, style. Model revision decisions using think-alouds with sample drafts. Develop peer review protocols that yield constructive, specific feedback. Practice giving feedback that identifies both strengths and areas for improvement. Teach self-assessment strategies using rubrics and checklists. Introduce editing techniques for systematic error correction. Build revision routines that become habitual. Track growth over time to demonstrate revision effectiveness.

DIFFERENTIATION:
For struggling learners: Provide specific revision checklists by writing type. Use conferencing to model revision decisions. Focus editing on frequent error patterns. Celebrate improvements to build confidence.
For advanced learners: Revise for sophisticated elements like voice and rhythm. Develop personal revision processes based on individual needs. Mentor peers in revision strategies. Study revision processes of published authors.

VOCABULARY:
Revision, editing, drafting, proofreading, feedback, peer review, development, organization, style, conventions, clarity, coherence, self-assessment

CONNECTION TO FUTURE LEARNING:
Revision and editing skills are essential for producing quality writing in any context. These skills prepare students for high-stakes writing and for becoming self-directed writers. Students will develop lifelong habits of thoughtful revision and careful editing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Revision and Editing' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Unit: Language and Grammar
-- Topic: Sentence Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sentence Structure' AND grade_level_min = 7),
  'Sentence Structure (Grade 7) Topic Guide',
  'Writing varied sentence types: simple, compound, complex',
  'SENTENCE STRUCTURE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should recognize sentence types from Grade 6. Understanding of independent and dependent clauses is essential. Familiarity with coordinating and subordinating conjunctions is helpful.

LEARNING OBJECTIVES:
- Demonstrate command of standard English grammar by writing simple, compound, complex, and compound-complex sentences
- Use phrases and clauses to convey specific meanings and add variety
- Choose among sentence types to signal differing relationships among ideas
- Recognize and correct inappropriate sentence fragments and run-ons
- Use sentence structure strategically for emphasis and effect

KEY CONCEPTS:
1) Sentence type choice affects how readers understand relationships between ideas
2) Phrases (participial, prepositional, appositive) add detail and variety
3) Clause arrangement affects emphasis: information at the end receives most emphasis
4) Fragments and run-ons obscure meaning; understanding structure helps avoid them
5) Variety in sentence structure creates rhythm and maintains reader interest

COMMON MISCONCEPTIONS:
- Thinking longer sentences are always better
- Using only one sentence type throughout writing
- Creating fragments accidentally when using subordinating conjunctions
- Creating run-ons by joining sentences with commas only
- Believing sentence structure is merely about correctness, not style

TEACHING SEQUENCE:
Review clause types and sentence categories. Introduce phrases that add detail: participial, prepositional, appositive. Practice combining sentences to show different relationships. Analyze how sentence type choices create emphasis and rhythm. Identify and correct fragments (incomplete thoughts) and run-ons (improperly joined sentences). Study mentor texts for sentence variety and strategic choices. Practice revision focused on sentence structure variety. Analyze the effects of short sentences for emphasis and longer sentences for complexity.

DIFFERENTIATION:
For struggling learners: Use sentence frames for each type. Practice identifying sentence types before writing them. Focus on compound and complex sentences separately before combining. Create visual displays of sentence patterns.
For advanced learners: Analyze sophisticated sentence patterns in literature. Experiment with periodic and cumulative sentence styles. Study how sentence structure creates voice. Develop signature sentence patterns.

VOCABULARY:
Simple sentence, compound sentence, complex sentence, compound-complex, phrase, clause, independent, dependent, conjunction, fragment, run-on, comma splice, variety

CONNECTION TO FUTURE LEARNING:
Sentence structure mastery enables sophisticated written and oral communication. These skills prepare students for crafting prose and analyzing authorial style. Students will develop increasingly nuanced control over sentence structure for various effects.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sentence Structure' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Punctuation Mastery
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Punctuation Mastery' AND grade_level_min = 7),
  'Punctuation Mastery (Grade 7) Topic Guide',
  'Using commas, semicolons, and dashes correctly',
  'PUNCTUATION MASTERY - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should use basic punctuation including commas and quotation marks. Understanding of sentence types and clause structure is essential. Familiarity with punctuation conventions from Grade 6 is expected.

LEARNING OBJECTIVES:
- Use a comma to separate coordinate adjectives
- Demonstrate command of punctuation conventions including commas, semicolons, and dashes
- Use punctuation to set off nonrestrictive elements
- Choose punctuation strategically for clarity and effect
- Recognize and correct punctuation errors in editing

KEY CONCEPTS:
1) Semicolons connect closely related independent clauses without coordinating conjunctions
2) Commas separate coordinate adjectives that each independently modify a noun
3) Dashes, parentheses, and commas can set off nonessential information with different emphasis
4) Punctuation affects meaning; incorrect punctuation can change interpretation
5) Punctuation choices reflect style as well as correctness

COMMON MISCONCEPTIONS:
- Using semicolons like commas or colons
- Adding commas wherever there are pauses
- Using too many dashes, reducing their impact
- Treating all interruptive elements identically
- Ignoring punctuation in final proofreading

TEACHING SEQUENCE:
Review comma rules and introduce new applications. Teach semicolon use: connecting related independent clauses, separating complex list items. Practice coordinate adjective identification: does "and" work between them? Can they reverse? Introduce dashes for emphasis and abrupt breaks. Compare dashes, parentheses, and commas for setting off information with different effects. Analyze mentor texts for punctuation choices and their effects. Practice editing for punctuation errors using systematic approaches. Apply punctuation knowledge in original writing.

DIFFERENTIATION:
For struggling learners: Create rule cards for each punctuation use. Practice one type at a time with immediate feedback. Use mentor sentences for pattern recognition. Focus on most common and useful applications first.
For advanced learners: Analyze stylistic punctuation choices in published writing. Study unconventional punctuation for effect. Develop consistent personal punctuation style. Practice subtle distinctions (em dash versus en dash).

VOCABULARY:
Punctuation, comma, semicolon, dash, colon, parentheses, coordinate adjectives, nonrestrictive, restrictive, emphasis, clarity, convention, style

CONNECTION TO FUTURE LEARNING:
Punctuation mastery enables clear, professional writing across contexts. These skills prepare students for academic writing where precision matters. Students will develop nuanced understanding of how punctuation shapes meaning and style.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Punctuation Mastery' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Vocabulary in Context
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Vocabulary in Context' AND grade_level_min = 7),
  'Vocabulary in Context (Grade 7) Topic Guide',
  'Using context clues, roots, and affixes to determine meaning',
  'VOCABULARY IN CONTEXT - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should have experience using basic context clues. Understanding of common prefixes and suffixes is helpful. Familiarity with dictionary use is expected.

LEARNING OBJECTIVES:
- Determine the meaning of unknown and multiple-meaning words and phrases
- Use context clues including definitions, examples, and restatements
- Use common Greek and Latin affixes and roots as clues to meaning
- Consult reference materials to verify meaning and pronunciation
- Understand figurative, connotative, and technical meanings

KEY CONCEPTS:
1) Context clues include definitions, examples, synonyms, antonyms, and general sense
2) Greek and Latin roots appear in many English words and provide meaning clues
3) Words may have different meanings in different contexts or fields
4) Connotation adds emotional and cultural associations to denotative meaning
5) Active vocabulary strategies include multiple encounters and contextual practice

COMMON MISCONCEPTIONS:
- Relying only on sounding out unfamiliar words
- Skipping difficult vocabulary instead of using strategies
- Assuming a words everyday meaning applies in all contexts
- Thinking knowing a definition means knowing how to use a word
- Believing vocabulary is fixed rather than constantly growing

TEACHING SEQUENCE:
Teach context clue strategies systematically: look for definitions, examples, synonyms, contrasts. Introduce common Greek and Latin roots with their meanings. Practice morphological analysis: breaking words into meaningful parts. Study how words change meaning across contexts and fields. Explore connotation through word comparisons (thrifty versus cheap). Build vocabulary through wide reading and multiple encounters. Practice using new vocabulary in speaking and writing. Create personal vocabulary systems for ongoing learning.

DIFFERENTIATION:
For struggling learners: Provide root and affix reference charts. Use visual vocabulary cards with images. Practice with high-frequency academic words. Focus on recognition before production.
For advanced learners: Study etymology and word history. Analyze subtle connotation differences. Build vocabulary from challenging authentic texts. Explore how vocabulary reflects power and culture.

VOCABULARY:
Context clues, root, prefix, suffix, affix, etymology, connotation, denotation, multiple meaning, technical vocabulary, reference materials

CONNECTION TO FUTURE LEARNING:
Strong vocabulary skills are crucial for academic success and comprehension across subjects. These skills prepare students for standardized tests and complex texts. Students will continue building vocabulary as a lifelong learning skill essential for reading and communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vocabulary in Context' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- Topic: Word Choice
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Word Choice' AND grade_level_min = 7),
  'Word Choice (Grade 7) Topic Guide',
  'Selecting precise words for tone, audience, and purpose',
  'WORD CHOICE - TOPIC TEACHING GUIDE (GRADE 7)

PREREQUISITES:
Students should understand that different words can express similar meanings. Awareness of formal and informal language registers is helpful. Experience with revision for word choice is expected.

LEARNING OBJECTIVES:
- Choose words and phrases to convey ideas precisely
- Choose language that expresses ideas concisely, eliminating wordiness
- Maintain consistency in style and tone
- Select words appropriate for specific audiences and purposes
- Use connotation effectively to create desired effects

KEY CONCEPTS:
1) Precise word choice conveys exact meaning more effectively than vague or general language
2) Concise writing eliminates unnecessary words while maintaining meaning
3) Word choice creates voice and tone that affect reader response
4) Different audiences and purposes require different vocabulary choices
5) Connotation carries emotional weight that influences reader perception

COMMON MISCONCEPTIONS:
- Thinking bigger words are always better
- Using unnecessary words that add length but not meaning
- Shifting tone unintentionally through inconsistent word choice
- Ignoring how word choice affects reader perception
- Believing formal writing requires eliminating all personality

TEACHING SEQUENCE:
Analyze mentor texts for effective word choice, noting precision and impact. Practice replacing vague words with specific alternatives. Identify and eliminate wordiness: redundancies, empty phrases, unnecessary modifiers. Study how synonyms differ in connotation and effect. Practice matching word choice to audience and purpose. Revise writing specifically for word choice improvement. Develop awareness of personal word choice tendencies and how to expand range. Create word banks for commonly needed concepts.

DIFFERENTIATION:
For struggling learners: Provide specific alternatives for overused words. Use comparison activities for connotation awareness. Focus on eliminating one type of wordiness at a time. Practice with familiar topics where vocabulary is accessible.
For advanced learners: Develop distinctive voice through word choice. Analyze how authors create tone through diction. Study the effects of plain versus complex vocabulary. Practice adapting style for very different audiences.

VOCABULARY:
Word choice, diction, precise, concise, connotation, denotation, tone, voice, audience, purpose, register, formal, informal, wordiness

CONNECTION TO FUTURE LEARNING:
Word choice skills enhance all forms of communication. These skills prepare students for crafting effective writing and speaking for various contexts. Students will develop increasingly sophisticated awareness of how word choice shapes meaning and response.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Choice' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 7 READING TOPIC PROMPTS
-- Total: 17 comprehensive topic teaching guides
-- ============================================================================
