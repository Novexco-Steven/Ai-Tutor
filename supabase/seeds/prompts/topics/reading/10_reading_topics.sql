-- ============================================================================
-- GRADE 10 READING TOPIC PROMPTS
-- Comprehensive teaching guides for all Grade 10 Reading/ELA topics
-- ============================================================================

-- Unit: World Literature
-- Topic: Epic Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Epic Literature' AND grade_level_min = 10),
  'Epic Literature (Grade 10) Topic Guide',
  'Teaching analysis of epics from various cultures',
  'EPIC LITERATURE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with extended literary works. Understanding of narrative elements and literary analysis is essential. Basic knowledge of ancient civilizations provides helpful context.

LEARNING OBJECTIVES:
- Analyze the conventions of epic literature across cultures
- Identify and interpret epic hero characteristics and their cultural significance
- Explain how epic themes reflect cultural values and beliefs
- Compare epic traditions across different civilizations
- Apply epic conventions to understanding specific texts

KEY CONCEPTS:
1) Epics are long narrative poems celebrating heroic deeds and cultural values
2) Epic conventions include invocation, in medias res, epic similes, catalogs, and divine intervention
3) Epic heroes embody cultural ideals while often having significant flaws
4) Epic themes address fundamental questions about human existence, mortality, and honor
5) Different cultures epic traditions reflect their unique values and worldviews

COMMON MISCONCEPTIONS:
- Treating epic conventions as mere formula rather than meaningful patterns
- Missing how epic heroes reflect cultural values specific to their societies
- Assuming all epics follow identical structures
- Overlooking how oral tradition affects epic form
- Reading epics only as adventure stories without thematic depth

TEACHING SEQUENCE:
Introduce epic conventions using multiple examples from world literature. Analyze the epic hero archetype and its variations across cultures. Study how supernatural elements function in epic narratives. Compare themes across epics: heroism, mortality, honor, duty, fate. Examine how cultural context shapes epic values and conflicts. Analyze specific epic passages for technique and meaning. Connect epic themes to universal human concerns. Write comparative analyses of epic elements across cultures.

DIFFERENTIATION:
For struggling learners: Provide epic convention checklists. Use accessible translations and excerpts. Create character and event guides. Focus on one epic before comparing across cultures.
For advanced learners: Analyze how epics influenced later literature. Study oral-formulaic composition theory. Compare original language effects with translation. Research lesser-known epic traditions.

VOCABULARY:
Epic, epic hero, invocation, in medias res, epic simile, catalog, divine intervention, fate, oral tradition, heroic code, archetype, convention

CONNECTION TO FUTURE LEARNING:
Epic literature understanding provides foundation for world literary traditions. These skills prepare students for comparative literature and cultural studies. Students will develop appreciation for how foundational narratives shape civilizations.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Epic Literature' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Greek Drama
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Greek Drama' AND grade_level_min = 10),
  'Greek Drama (Grade 10) Topic Guide',
  'Teaching tragedy and comedy in ancient Greece',
  'GREEK DRAMA - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with dramatic literature. Understanding of plot structure and character analysis is essential. Basic knowledge of ancient Greek culture provides helpful context.

LEARNING OBJECTIVES:
- Analyze the structure and conventions of Greek tragedy and comedy
- Explain the concept of tragic hero and hamartia
- Interpret the role of the chorus in Greek drama
- Connect Greek dramatic themes to universal human experiences
- Evaluate the continuing influence of Greek drama on Western literature

KEY CONCEPTS:
1) Greek tragedy explores serious themes through the fall of noble characters
2) Tragic heroes possess hamartia (tragic flaw) that contributes to their downfall
3) The chorus provides commentary, context, and emotional response
4) Greek drama emerged from religious ritual and served civic functions
5) Catharsis purges audience emotions through pity and fear

COMMON MISCONCEPTIONS:
- Reducing hamartia to a simple moral failing
- Treating the chorus as interruption rather than essential element
- Assuming Greek values are identical to contemporary values
- Missing the religious and civic context of performance
- Reading drama as literature alone without considering performance

TEACHING SEQUENCE:
Introduce Greek theatrical context: religious, civic, and performance elements. Teach tragedy structure: prologue, parodos, episodes, stasimon, exodus. Analyze the tragic hero and the complexity of hamartia. Study the chorus functions: commentary, emotion, perspective. Compare Sophocles, Euripides, and Aeschylus approaches. Introduce Greek comedy and its different conventions. Connect Greek dramatic themes to contemporary relevance. Write analyses of tragic elements in specific plays.

DIFFERENTIATION:
For struggling learners: Provide dramatic structure guides. Use performance videos alongside texts. Create character and chorus function guides. Focus on one play before comparing.
For advanced learners: Study Aristotles Poetics and its influence. Compare Greek tragedy to other tragic traditions. Analyze translation choices and their effects. Research original performance conditions.

VOCABULARY:
Greek tragedy, Greek comedy, tragic hero, hamartia, hubris, catharsis, chorus, protagonist, antagonist, prologue, parodos, exodus, stasimon, episode

CONNECTION TO FUTURE LEARNING:
Greek drama understanding is essential for Western literary tradition. These skills prepare students for advanced drama study and critical theory. Students will develop appreciation for theatrical form and enduring human questions.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Greek Drama' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Shakespeare
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Shakespeare' AND grade_level_min = 10),
  'Shakespeare (Grade 10) Topic Guide',
  'Teaching introduction to Shakespearean drama',
  'SHAKESPEARE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with dramatic literature. Understanding of poetic language and figurative devices is essential. Willingness to engage with challenging language is expected.

LEARNING OBJECTIVES:
- Analyze Shakespearean dramatic conventions and theatrical practices
- Interpret Shakespearean language including blank verse and prose
- Explain how Shakespeare develops complex characters and themes
- Analyze how Shakespearean drama reflects and comments on human nature
- Connect Shakespearean themes to contemporary issues and experiences

KEY CONCEPTS:
1) Shakespeares language uses iambic pentameter, prose, and rich imagery
2) Shakespearean drama blends genres and tones within single plays
3) Soliloquies reveal character thought and create audience intimacy
4) Shakespeare adapts sources while adding psychological complexity
5) Shakespearean themes address universal human concerns across time

COMMON MISCONCEPTIONS:
- Treating Shakespearean language as inaccessible or unlearnable
- Assuming Shakespeare is only for elite audiences
- Missing humor and accessibility in Shakespeares work
- Reading without attending to performance possibilities
- Believing there are single correct interpretations

TEACHING SEQUENCE:
Introduce Elizabethan theatrical context and conventions. Teach strategies for understanding Shakespearean language. Analyze blank verse and prose and how Shakespeare uses each. Study soliloquy as window into character psychology. Examine how Shakespeare develops themes through multiple plot lines. Compare text with performance interpretations. Connect Shakespearean themes to contemporary relevance. Write analyses of specific passages and dramatic techniques.

DIFFERENTIATION:
For struggling learners: Use modern translations alongside original. View performances to support comprehension. Focus on accessible scenes before challenging ones. Create glossaries and language guides.
For advanced learners: Analyze textual variants and their implications. Study critical interpretations and engage with them. Compare productions and directorial choices. Research Renaissance cultural context.

VOCABULARY:
Shakespeare, iambic pentameter, blank verse, soliloquy, aside, dramatic irony, tragedy, comedy, history play, folio, quarto, Elizabethan, theatrical convention

CONNECTION TO FUTURE LEARNING:
Shakespeare understanding is essential for English literary study. These skills prepare students for advanced drama and poetry analysis. Students will develop appreciation for dramatic art and linguistic richness.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shakespeare' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Global Perspectives
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Global Perspectives' AND grade_level_min = 10),
  'Global Perspectives (Grade 10) Topic Guide',
  'Teaching literature from Africa, Asia, and Latin America',
  'GLOBAL PERSPECTIVES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of cultural context in literature is helpful. Openness to diverse literary traditions is essential.

LEARNING OBJECTIVES:
- Analyze literature from diverse global traditions
- Explain how cultural context shapes literary expression
- Compare literary conventions across different cultures
- Evaluate postcolonial themes and perspectives
- Connect global literature to universal human experiences

KEY CONCEPTS:
1) Literature reflects and shapes cultural identity and values
2) Different cultures have distinct literary traditions and conventions
3) Postcolonial literature addresses colonialism and its ongoing effects
4) Translation affects how we receive literature from other languages
5) Global literature expands understanding of human experience

COMMON MISCONCEPTIONS:
- Treating non-Western literature as exotic rather than fully human
- Assuming Western literary standards apply universally
- Ignoring translation effects on reading experience
- Missing cultural context essential for understanding
- Generalizing about entire continents or regions

TEACHING SEQUENCE:
Introduce the importance of reading globally and examining ones assumptions. Provide cultural context for each text studied. Teach strategies for reading across cultural difference. Analyze how postcolonial themes appear in diverse literatures. Study how authors navigate multiple cultural identities. Examine translation as interpretation. Connect global themes to personal and universal experience. Write analyses that demonstrate cultural awareness.

DIFFERENTIATION:
For struggling learners: Provide cultural context guides. Start with accessible, engaging texts. Use visual and multimedia supports. Focus on universal themes as entry points.
For advanced learners: Study postcolonial theory and apply it. Analyze translation choices and effects. Research authors cultural contexts deeply. Compare global literary movements.

VOCABULARY:
Global literature, world literature, postcolonial, cultural context, translation, colonialism, identity, tradition, diaspora, hybridity, perspective

CONNECTION TO FUTURE LEARNING:
Global literature develops cultural awareness and empathy essential for engaged citizenship. These skills prepare students for diverse academic and professional contexts. Students will develop appreciation for literatures transformative power across cultures.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Global Perspectives' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Archetypal Criticism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Archetypal Criticism' AND grade_level_min = 10),
  'Archetypal Criticism (Grade 10) Topic Guide',
  'Teaching universal patterns in literature',
  'ARCHETYPAL CRITICISM - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with literary analysis across multiple texts. Understanding of character types and narrative patterns is helpful. Familiarity with mythology adds valuable context.

LEARNING OBJECTIVES:
- Identify archetypal patterns in literature including character types and narrative structures
- Explain how archetypes function across cultures and time periods
- Apply archetypal criticism to analyze specific texts
- Evaluate both the usefulness and limitations of archetypal approaches
- Connect archetypal patterns to psychological and cultural significance

KEY CONCEPTS:
1) Archetypes are recurring patterns, symbols, and character types across literatures
2) Common archetypes include the hero, mentor, threshold guardian, shadow, and trickster
3) The heros journey is a narrative archetype found across cultures
4) Archetypes may reflect universal human psychology or shared cultural heritage
5) Archetypal criticism is one lens among many for interpretation

COMMON MISCONCEPTIONS:
- Reducing texts to archetypal patterns without attention to uniqueness
- Assuming archetypes mean the same thing across all cultures
- Treating archetypal criticism as the only valid approach
- Missing how authors adapt or subvert archetypal expectations
- Overlooking cultural specificity in favor of universals

TEACHING SEQUENCE:
Introduce archetypal theory and its origins in mythology and psychology. Teach common archetypes: character types, narrative patterns, symbols. Practice identifying archetypes across diverse texts. Analyze how authors use, adapt, or subvert archetypal patterns. Study the heros journey and its variations. Evaluate the strengths and limitations of archetypal approaches. Connect archetypal patterns to psychological and cultural significance. Write analyses applying and critiquing archetypal criticism.

DIFFERENTIATION:
For struggling learners: Create archetype reference guides. Use familiar texts for initial identification. Focus on character archetypes before complex patterns. Provide structured analytical frameworks.
For advanced learners: Study Jung and Campbells original theories. Analyze critiques of archetypal universalism. Compare archetypal patterns across cultures. Develop nuanced applications of archetypal lens.

VOCABULARY:
Archetype, archetypal criticism, collective unconscious, heros journey, mentor, shadow, threshold, trickster, transformation, universal, symbol, pattern

CONNECTION TO FUTURE LEARNING:
Archetypal criticism introduces students to critical theory and literary interpretation. These skills prepare students for advanced literary analysis and psychological perspectives. Students will develop ability to see patterns while appreciating particularity.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Archetypal Criticism' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Unit: Rhetoric and Argumentation
-- Topic: Rhetorical Appeals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Rhetorical Appeals' AND grade_level_min = 10),
  'Rhetorical Appeals (Grade 10) Topic Guide',
  'Teaching ethos, pathos, logos in depth',
  'RHETORICAL APPEALS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have basic understanding of ethos, pathos, and logos from Grade 9. Experience with analyzing persuasive texts is essential. Understanding of audience and purpose is expected.

LEARNING OBJECTIVES:
- Analyze how speakers and writers use ethos, pathos, and logos strategically
- Evaluate the effectiveness of rhetorical appeals in context
- Explain how appeals work together to create persuasive effect
- Apply rhetorical appeal analysis to various text types
- Use rhetorical appeals effectively in original persuasion

KEY CONCEPTS:
1) Ethos establishes credibility through expertise, character, and goodwill
2) Pathos engages emotions to move audiences toward action or belief
3) Logos uses logic, evidence, and reasoning to support claims
4) Effective rhetoric balances appeals appropriately for audience and purpose
5) Appeals can be used ethically or manipulatively

COMMON MISCONCEPTIONS:
- Treating appeals as discrete categories rather than interacting elements
- Viewing emotional appeal as inherently manipulative
- Missing subtle uses of ethos in seemingly objective texts
- Assuming logical appeals are always valid
- Believing one appeal type is always superior

TEACHING SEQUENCE:
Deepen understanding of each appeal type beyond basic identification. Analyze how appeals interact and support each other. Study how context affects which appeals are most effective. Examine ethical versus manipulative uses of appeals. Practice detailed rhetorical analysis of complex texts. Evaluate effectiveness of persuasion in various contexts. Apply understanding to creating persuasive texts. Compare rhetorical strategies across genres and media.

DIFFERENTIATION:
For struggling learners: Use graphic organizers for appeal analysis. Practice with clear examples before subtle ones. Focus on one appeal at a time. Create appeal identification guides.
For advanced learners: Study classical rhetorical theory in depth. Analyze subtle and sophisticated rhetoric. Examine how digital media affects rhetorical practice. Research cultural variations in rhetorical effectiveness.

VOCABULARY:
Rhetoric, ethos, pathos, logos, credibility, emotional appeal, logical appeal, audience, purpose, persuasion, manipulation, strategy

CONNECTION TO FUTURE LEARNING:
Advanced rhetorical analysis is essential for academic and civic participation. These skills prepare students for AP Language and college writing. Students will develop critical awareness of how persuasion works in all contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rhetorical Appeals' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Logical Fallacies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Logical Fallacies' AND grade_level_min = 10),
  'Logical Fallacies (Grade 10) Topic Guide',
  'Teaching identification of flawed reasoning',
  'LOGICAL FALLACIES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand basic argument structure. Experience with evaluating evidence and reasoning is essential. Familiarity with some common fallacies from previous grades is helpful.

LEARNING OBJECTIVES:
- Identify and explain common logical fallacies
- Analyze how fallacies undermine argument strength
- Avoid fallacies in original arguments
- Evaluate real-world arguments for fallacious reasoning
- Explain why fallacies are persuasive despite being flawed

KEY CONCEPTS:
1) Logical fallacies are errors in reasoning that undermine argument validity
2) Fallacies may be formal (structural) or informal (content-based)
3) Some fallacies appeal to emotion; others misrepresent opposing views
4) Fallacies are often persuasive because they mimic valid reasoning
5) Recognizing fallacies is essential for critical thinking

COMMON MISCONCEPTIONS:
- Thinking any disagreement means someone is committing a fallacy
- Missing fallacies when they support ones own position
- Assuming fallacies are always intentional deception
- Believing presence of a fallacy completely invalidates an argument
- Confusing strong emotion with fallacious reasoning

TEACHING SEQUENCE:
Introduce categories of fallacies: appeals to emotion, faulty reasoning, attacks on person. Study specific fallacies with clear examples and names. Practice identifying fallacies in real-world arguments. Analyze why fallacies are persuasive despite being flawed. Discuss borderline cases where fallacy identification is debatable. Practice constructing arguments that avoid fallacies. Apply fallacy analysis to media, advertising, and public discourse. Write analyses evaluating argument quality based on fallacy detection.

DIFFERENTIATION:
For struggling learners: Create fallacy reference cards with examples. Practice with obvious fallacies before subtle ones. Focus on most common fallacy types. Use familiar contexts for identification practice.
For advanced learners: Study formal logic and formal fallacies. Analyze sophisticated arguments for subtle fallacies. Research how fallacies function in propaganda. Examine philosophical debates about fallacy theory.

VOCABULARY:
Logical fallacy, ad hominem, straw man, false dichotomy, slippery slope, hasty generalization, appeal to authority, circular reasoning, red herring, equivocation, bandwagon, validity

CONNECTION TO FUTURE LEARNING:
Fallacy recognition is essential for critical thinking and civic participation. These skills prepare students for academic argumentation and evaluating information. Students will develop abilities to assess reasoning quality in all contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logical Fallacies' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Analyzing Speeches
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Speeches' AND grade_level_min = 10),
  'Analyzing Speeches (Grade 10) Topic Guide',
  'Teaching analysis of famous speeches and their techniques',
  'ANALYZING SPEECHES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should understand rhetorical appeals and basic argument analysis. Experience with analyzing how context affects meaning is helpful. Familiarity with historical speeches provides valuable background.

LEARNING OBJECTIVES:
- Analyze rhetorical strategies in famous speeches
- Explain how historical context shapes speech meaning and effect
- Evaluate the effectiveness of oratorical techniques
- Compare how different speakers address similar purposes
- Apply speech analysis skills to contemporary oratory

KEY CONCEPTS:
1) Speeches are crafted for specific audiences, occasions, and purposes
2) Effective speakers use repetition, parallelism, and rhetorical questions
3) Delivery elements (tone, pacing, emphasis) affect meaning and impact
4) Historical context is essential for understanding speech significance
5) Great speeches continue to influence and inspire across time

COMMON MISCONCEPTIONS:
- Reading speeches without considering oral delivery
- Ignoring historical context that shaped content and reception
- Assuming great speeches succeed through content alone
- Missing how cultural moment affects what rhetoric is possible
- Treating speech analysis as only identifying techniques

TEACHING SEQUENCE:
Provide historical context for each speech studied. Analyze both text and audio/video when available. Identify rhetorical techniques: repetition, parallelism, antithesis, rhetorical questions. Study how speakers establish ethos and connect with audiences. Analyze emotional and logical appeals in action. Compare different speakers approaches to similar challenges. Connect historical speeches to contemporary relevance. Write rhetorical analyses of specific speeches.

DIFFERENTIATION:
For struggling learners: Provide historical context summaries. Use audio/video to support comprehension. Focus on accessible, shorter speeches first. Create technique identification guides.
For advanced learners: Analyze speeches in original historical context. Study rhetorical theory behind techniques. Compare speeches across cultures and time periods. Research how speeches shaped historical events.

VOCABULARY:
Oratory, speech, rhetoric, audience, occasion, repetition, parallelism, antithesis, rhetorical question, anaphora, delivery, historical context

CONNECTION TO FUTURE LEARNING:
Speech analysis develops rhetorical awareness and appreciation for effective communication. These skills prepare students for public speaking and civic engagement. Students will develop understanding of how language can move people and shape events.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Speeches' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Debate and Discussion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Debate and Discussion' AND grade_level_min = 10),
  'Debate and Discussion (Grade 10) Topic Guide',
  'Teaching formal argumentation skills',
  'DEBATE AND DISCUSSION - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with argumentative writing. Understanding of claims, evidence, and reasoning is essential. Willingness to engage with opposing viewpoints is expected.

LEARNING OBJECTIVES:
- Construct and defend arguments orally with evidence and reasoning
- Respond to counterarguments effectively and respectfully
- Apply formal debate structures and conventions
- Evaluate arguments for logic, evidence, and persuasiveness
- Engage in productive academic discussion

KEY CONCEPTS:
1) Formal debate has structures that ensure fair and thorough examination of issues
2) Effective debaters understand and can argue multiple sides of issues
3) Listening and responding are as important as stating ones own position
4) Academic discussion requires evidence, reasoning, and respect
5) Good argumentation distinguishes between positions and people

COMMON MISCONCEPTIONS:
- Equating debate with fighting or personal conflict
- Believing winning is more important than truth-seeking
- Thinking strong emotion equals strong argument
- Assuming inability to argue the other side means weakness
- Missing the collaborative nature of academic discussion

TEACHING SEQUENCE:
Introduce formal debate structures and their purposes. Practice constructing arguments on assigned positions. Develop skills in listening and responding to opposing views. Learn to address counterarguments substantively. Practice evaluating arguments during debate. Study how to disagree respectfully and productively. Apply skills in classroom discussion and Socratic seminars. Reflect on how debate develops understanding.

DIFFERENTIATION:
For struggling learners: Provide argument organizers and speaking frames. Start with pair debates before larger groups. Offer preparation time and support. Focus on one skill at a time.
For advanced learners: Participate in competitive debate formats. Research complex issues deeply. Take on challenging positions. Lead and facilitate discussions.

VOCABULARY:
Debate, discussion, argumentation, claim, evidence, rebuttal, counterargument, resolution, affirmative, negative, cross-examination, constructive

CONNECTION TO FUTURE LEARNING:
Debate and discussion skills are essential for academic and civic participation. These skills prepare students for college seminars and professional collaboration. Students will develop abilities to engage productively with complex issues and diverse perspectives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Debate and Discussion' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Media Literacy (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Media Literacy' AND grade_level_min = 10),
  'Media Literacy (Grade 10) Topic Guide',
  'Teaching analysis of persuasion in media',
  'MEDIA LITERACY - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience evaluating source credibility. Understanding of rhetorical appeals is essential. Familiarity with various media formats is expected.

LEARNING OBJECTIVES:
- Analyze how media messages are constructed and for what purposes
- Evaluate credibility and bias in news and information sources
- Explain how algorithms and platforms shape information access
- Recognize persuasive techniques specific to digital and visual media
- Apply critical evaluation to all media consumption

KEY CONCEPTS:
1) All media is constructed with choices about what to include, exclude, and emphasize
2) Media creators have purposes and perspectives that shape content
3) Visual and design elements create meaning and persuasive effects
4) Platforms and algorithms affect what information people encounter
5) Critical media literacy requires active evaluation, not passive consumption

COMMON MISCONCEPTIONS:
- Thinking only news requires critical evaluation
- Believing popular or shared content is verified
- Assuming platforms are neutral information providers
- Trusting sources based on appearance rather than investigation
- Thinking media literacy means avoiding all media

TEACHING SEQUENCE:
Analyze how media messages are constructed across formats. Study visual rhetoric: how images, design, and layout create meaning. Examine how algorithms create filter bubbles and echo chambers. Practice lateral reading and source verification. Identify persuasion techniques specific to advertising and social media. Evaluate news sources for credibility and bias. Discuss ethical issues in media production and consumption. Develop habits of critical evaluation for ongoing media encounters.

DIFFERENTIATION:
For struggling learners: Use clear examples of media construction. Provide evaluation checklists. Focus on one media type at a time. Practice verification strategies step by step.
For advanced learners: Analyze sophisticated media manipulation. Study media industry structures and incentives. Research platform accountability issues. Examine their own media consumption critically.

VOCABULARY:
Media literacy, construction, bias, credibility, algorithm, filter bubble, echo chamber, visual rhetoric, verification, propaganda, misinformation, disinformation

CONNECTION TO FUTURE LEARNING:
Media literacy is essential for informed citizenship in the digital age. These skills prepare students for evaluating information throughout life. Students will develop critical habits applicable to all media consumption.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Media Literacy' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Unit: Writing
-- Topic: Synthesis Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Synthesis Writing' AND grade_level_min = 10),
  'Synthesis Writing (Grade 10) Topic Guide',
  'Teaching combining multiple sources effectively',
  'SYNTHESIS WRITING - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with research and source integration. Understanding of argument structure is essential. Experience with analysis beyond summary is expected.

LEARNING OBJECTIVES:
- Synthesize information from multiple sources to develop a coherent argument or explanation
- Organize by idea rather than by source
- Analyze relationships among sources: agreement, disagreement, qualification
- Develop original claims based on synthesis of existing ideas
- Integrate sources smoothly while maintaining authorial voice

KEY CONCEPTS:
1) Synthesis creates new understanding by combining multiple perspectives
2) Effective synthesis organizes by idea, not by source
3) Sources may agree, disagree, complement, or qualify each other
4) Synthesis requires analysis and original thinking, not just compilation
5) The writers voice and purpose drive synthesis structure

COMMON MISCONCEPTIONS:
- Thinking synthesis means summarizing each source in turn
- Organizing by source rather than by idea
- Ignoring contradictions among sources
- Believing synthesis eliminates need for original argument
- Treating all sources as equally significant

TEACHING SEQUENCE:
Distinguish synthesis from summary and source-by-source organization. Teach strategies for finding thematic connections across sources. Practice identifying how sources relate: support, contradict, extend, qualify. Model organization by idea with sources woven throughout. Develop original thesis claims based on synthesized understanding. Practice integrating multiple sources in single paragraphs. Apply synthesis skills to timed writing contexts. Write extended synthesis essays on complex topics.

DIFFERENTIATION:
For struggling learners: Use graphic organizers for finding thematic connections. Practice synthesis with two sources before adding more. Provide model paragraphs showing synthesis structure. Focus on complementary sources before contradictory ones.
For advanced learners: Synthesize numerous and complex sources. Navigate significant contradictions and ambiguity. Develop sophisticated original analysis. Practice AP-style synthesis writing.

VOCABULARY:
Synthesis, integrate, combine, theme, connection, contradiction, qualify, extend, organize, original, analysis, perspective

CONNECTION TO FUTURE LEARNING:
Synthesis skills are essential for college writing and professional analysis. These skills prepare students for AP exams and academic research. Students will develop abilities to build understanding from multiple information sources.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Synthesis Writing' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Research Papers (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Papers' AND grade_level_min = 10),
  'Research Papers (Grade 10) Topic Guide',
  'Teaching extended research and writing',
  'RESEARCH PAPERS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have completed shorter research projects. Understanding of source evaluation and citation is essential. Experience with synthesis and argument writing is expected.

LEARNING OBJECTIVES:
- Conduct extended research projects answering self-generated questions
- Synthesize multiple sources to support original thesis
- Integrate sources smoothly while maintaining argument focus
- Apply citation conventions accurately and consistently
- Revise research writing for argument strength and source integration

KEY CONCEPTS:
1) Extended research develops deep understanding of complex topics
2) Research questions should be focused, significant, and answerable
3) Effective research papers present original arguments supported by sources
4) Source integration requires smooth blending, not string-of-quotes
5) Revision for research writing addresses argument, evidence, and citation

COMMON MISCONCEPTIONS:
- Treating research as finding sources for predetermined conclusions
- Letting sources overwhelm original voice and argument
- Organizing chronologically or by source rather than by argument
- Citing only direct quotes, not paraphrased ideas
- Thinking research ends when enough sources are gathered

TEACHING SEQUENCE:
Develop focused, significant research questions. Teach advanced source finding including databases and specialized sources. Practice evaluating sources for scholarly authority. Model thesis development based on research findings. Teach integration that maintains writer authority while using sources. Practice revision for argument strength and source use. Apply citation format consistently. Complete extended research projects through full process.

DIFFERENTIATION:
For struggling learners: Provide structured research timelines. Offer curated source sets and guidance. Use templates for argument structure. Break revision into focused stages.
For advanced learners: Research complex, contested topics. Use primary and specialized sources. Develop sophisticated original arguments. Navigate scholarly debates.

VOCABULARY:
Research, thesis, synthesis, sources, database, scholarly, citation, integration, argument, analysis, bibliography, revision

CONNECTION TO FUTURE LEARNING:
Extended research skills are essential for college academic work. These skills prepare students for independent inquiry and scholarly writing. Students will develop research abilities applicable throughout academic and professional life.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Papers' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Literary Criticism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Literary Criticism' AND grade_level_min = 10),
  'Literary Criticism (Grade 10) Topic Guide',
  'Teaching application of critical lenses to texts',
  'LITERARY CRITICISM - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of multiple interpretive possibilities is helpful. Familiarity with close reading is essential.

LEARNING OBJECTIVES:
- Apply different critical lenses to literary texts
- Explain how critical approaches reveal different meanings
- Evaluate the usefulness of different approaches for different texts
- Synthesize multiple critical perspectives
- Develop original critical interpretations

KEY CONCEPTS:
1) Critical lenses are theoretical frameworks for interpretation
2) Different approaches reveal different aspects of texts
3) No single approach captures all meaning; multiple perspectives enrich understanding
4) Critical approaches have assumptions and values that affect interpretation
5) Readers can apply lenses strategically based on text and purpose

COMMON MISCONCEPTIONS:
- Thinking one critical approach is correct and others wrong
- Applying lenses mechanically without genuine insight
- Believing criticism must be negative
- Ignoring a lenses assumptions and limitations
- Treating lenses as purely objective tools

TEACHING SEQUENCE:
Introduce major critical approaches: formalist, historical, feminist, Marxist, psychoanalytic. Explain each approachs assumptions and typical questions. Practice applying different lenses to the same text. Analyze how different lenses reveal different meanings. Evaluate which approaches work best for particular texts. Discuss assumptions and limitations of each approach. Develop original critical interpretations using appropriate lenses. Write analyses that apply and may synthesize critical approaches.

DIFFERENTIATION:
For struggling learners: Introduce one lens at a time thoroughly. Provide question guides for each approach. Use accessible texts for practice. Focus on practical application before theory.
For advanced learners: Study critical theory in more depth. Engage with published literary criticism. Apply sophisticated combinations of approaches. Research debates within critical theory.

VOCABULARY:
Literary criticism, critical lens, formalism, historicism, feminist criticism, Marxist criticism, psychoanalytic criticism, reader-response, interpretation, theory

CONNECTION TO FUTURE LEARNING:
Literary criticism introduces students to theoretical thinking about texts. These skills prepare students for college literature courses and humanities study. Students will develop sophisticated interpretive abilities and awareness of methodology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Literary Criticism' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Comparative Essays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparative Essays' AND grade_level_min = 10),
  'Comparative Essays (Grade 10) Topic Guide',
  'Teaching comparison of works across cultures',
  'COMPARATIVE ESSAYS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience analyzing individual literary works. Understanding of literary elements and techniques is essential. Experience with thesis-driven writing is expected.

LEARNING OBJECTIVES:
- Analyze how two or more texts address similar themes or techniques
- Develop thesis statements that identify meaningful bases for comparison
- Organize comparative analysis for clarity and impact
- Balance attention to each text without mere parallel structure
- Draw conclusions about literary or cultural significance of comparisons

KEY CONCEPTS:
1) Effective comparison requires meaningful basis for connecting texts
2) Comparison can illuminate aspects of each text not visible alone
3) Point-by-point or subject-by-subject organization serves different purposes
4) Comparative thesis must make a claim, not just list similarities
5) Comparison can reveal both universal and culture-specific elements

COMMON MISCONCEPTIONS:
- Treating comparison as merely listing similarities and differences
- Choosing texts without meaningful connection
- Organizing mechanically without serving argument
- Summarizing texts rather than analyzing comparatively
- Privileging one text over another without justification

TEACHING SEQUENCE:
Introduce criteria for selecting meaningful comparisons. Teach thesis development for comparative essays. Analyze organizational options: point-by-point, subject-by-subject, hybrid. Practice balancing attention to each text. Model transition techniques for moving between texts. Develop concluding insights that arise from comparison. Apply comparative analysis to world literature. Write essays comparing works across cultures or periods.

DIFFERENTIATION:
For struggling learners: Provide comparison matrices for planning. Offer thesis templates for comparative claims. Focus on clearly related texts first. Use structured outlines with clear paragraph purposes.
For advanced learners: Compare complex, dissimilar texts. Develop sophisticated comparative thesis statements. Draw cultural and theoretical conclusions. Apply comparative analysis to independent reading.

VOCABULARY:
Comparative analysis, comparison, contrast, synthesis, parallel, basis, thesis, organization, cultural context, thematic, technique

CONNECTION TO FUTURE LEARNING:
Comparative analysis skills are essential for advanced literary study. These skills prepare students for AP Literature and college humanities. Students will develop abilities to see patterns and draw insights across texts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparative Essays' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Personal Narrative (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Personal Narrative' AND grade_level_min = 10),
  'Personal Narrative (Grade 10) Topic Guide',
  'Teaching memoir and personal essay writing',
  'PERSONAL NARRATIVE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with narrative writing. Understanding of reflection and meaning-making is helpful. Familiarity with memoir as genre is expected.

LEARNING OBJECTIVES:
- Write personal narratives that explore experience and create meaning
- Develop authentic voice while maintaining craft awareness
- Balance scene and reflection effectively
- Create significance beyond the personal through universal connection
- Apply revision strategies to develop personal writing

KEY CONCEPTS:
1) Personal narrative explores experience to discover and share meaning
2) Effective memoir balances showing (scene) and telling (reflection)
3) Authentic voice emerges from attention to how we naturally think and speak
4) Personal experience connects to universal themes through reflection
5) Selection and arrangement of details creates narrative significance

COMMON MISCONCEPTIONS:
- Believing personal experience alone is sufficient without craft
- Including everything that happened rather than selecting purposefully
- Confusing diary writing with crafted memoir
- Thinking personal narrative is easier than other writing
- Avoiding vulnerability that creates authentic connection

TEACHING SEQUENCE:
Study published personal essays and memoirs for craft techniques. Explore memory and select experiences with significance potential. Practice writing scenes with sensory detail and dialogue. Develop reflection that creates meaning without moralizing. Work on authentic voice through attention to natural expression. Practice revision focused on selection and arrangement. Connect personal experience to broader themes. Create final pieces that balance personal authenticity with craft.

DIFFERENTIATION:
For struggling learners: Provide memoir excerpt models. Use prompts to generate memory material. Focus on scene writing before reflection. Offer structured revision guides.
For advanced learners: Study diverse memoir traditions. Experiment with innovative structures. Develop distinctive personal voice. Create longer memoir pieces.

VOCABULARY:
Personal narrative, memoir, personal essay, voice, scene, reflection, significance, authentic, craft, selection, arrangement, vulnerability

CONNECTION TO FUTURE LEARNING:
Personal narrative skills develop self-expression and authentic voice. These skills prepare students for college application essays and personal writing throughout life. Students will develop ability to find and share meaning through experience.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Personal Narrative' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Unit: Language
-- Topic: Complex Sentences (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Complex Sentences' AND grade_level_min = 10),
  'Complex Sentences (Grade 10) Topic Guide',
  'Teaching advanced sentence construction',
  'COMPLEX SENTENCES - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should recognize sentence types and clause structures. Understanding of coordination and subordination is essential. Experience with varying sentence structure is expected.

LEARNING OBJECTIVES:
- Construct sophisticated sentences using multiple clause types
- Use sentence structure strategically for meaning and effect
- Create rhythm and emphasis through syntactic variety
- Recognize and emulate effective sentence patterns in reading
- Revise for sentence-level sophistication

KEY CONCEPTS:
1) Sentence structure creates meaning, emphasis, and rhythm beyond content
2) Periodic sentences build to climax; loose sentences front-load main ideas
3) Balanced sentences create parallel emphasis; unbalanced sentences create stress
4) Sentence length variety creates rhythm and maintains reader engagement
5) Studying published sentences develops craft awareness

COMMON MISCONCEPTIONS:
- Equating length with sophistication
- Using only one sentence pattern repeatedly
- Ignoring how structure creates emphasis and rhythm
- Treating sentence construction as separate from meaning
- Overloading sentences until they lose clarity

TEACHING SEQUENCE:
Study sentence patterns in published prose: periodic, loose, balanced. Analyze how sentence structure creates emphasis and effect. Practice constructing sentences using different patterns. Develop awareness of sentence length variety and rhythm. Study how authors use short sentences for impact. Practice revision focused on sentence-level craft. Connect sentence construction to voice development. Create writing that demonstrates sophisticated sentence variety.

DIFFERENTIATION:
For struggling learners: Practice one pattern at a time. Use sentence combining with clear purposes. Analyze accessible examples before complex ones. Focus on revision for variety.
For advanced learners: Analyze literary sentence styles. Experiment with sophisticated patterns. Develop distinctive sentence-level voice. Study syntactic effects across authors.

VOCABULARY:
Sentence structure, periodic sentence, loose sentence, balanced sentence, syntax, rhythm, emphasis, variety, clause, complexity, sophistication

CONNECTION TO FUTURE LEARNING:
Sentence-level craft is essential for sophisticated writing. These skills prepare students for advanced composition and style analysis. Students will develop control over syntax that distinguishes polished prose.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Sentences' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Academic Vocabulary (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Academic Vocabulary' AND grade_level_min = 10),
  'Academic Vocabulary (Grade 10) Topic Guide',
  'Teaching Greek and Latin roots and academic terms',
  'ACADEMIC VOCABULARY - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have vocabulary learning strategies from Grade 9. Understanding of context clues and word parts is essential. Experience with academic reading is expected.

LEARNING OBJECTIVES:
- Apply knowledge of Greek and Latin roots systematically
- Acquire and use academic vocabulary across disciplines
- Determine meaning of unknown words using multiple strategies
- Use academic vocabulary accurately in writing and speaking
- Build vocabulary systems for ongoing learning

KEY CONCEPTS:
1) Greek and Latin roots form the basis of academic and technical vocabulary
2) Knowing roots enables inference about unfamiliar words
3) Academic vocabulary appears across disciplines in scholarly contexts
4) Vocabulary knowledge includes understanding use in context, not just definition
5) Active vocabulary use in speaking and writing consolidates learning

COMMON MISCONCEPTIONS:
- Memorizing definitions without understanding use
- Relying only on context clues without morphological analysis
- Assuming words mean the same thing across all contexts
- Thinking vocabulary learning is passive rather than active
- Believing academic vocabulary is pretentious

TEACHING SEQUENCE:
Systematically study Greek and Latin roots with their meanings. Practice morphological analysis of academic vocabulary. Build connections among words sharing roots. Study how academic vocabulary functions across disciplines. Practice using new vocabulary in speaking and writing. Develop personal vocabulary systems for ongoing learning. Connect vocabulary to reading comprehension across subjects. Apply vocabulary knowledge to standardized test preparation.

DIFFERENTIATION:
For struggling learners: Create visual root and vocabulary cards. Focus on high-frequency roots first. Practice in multiple contexts. Use vocabulary journals with personal connections.
For advanced learners: Study etymology and language history. Analyze subtle distinctions among related words. Build sophisticated disciplinary vocabulary. Research vocabulary development across languages.

VOCABULARY:
Root, prefix, suffix, etymology, academic vocabulary, morphology, context clue, denotation, connotation, discipline-specific

CONNECTION TO FUTURE LEARNING:
Academic vocabulary is essential for college success and standardized tests. These skills prepare students for reading and writing across disciplines. Students will develop vocabulary learning abilities that serve them throughout careers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Academic Vocabulary' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Style and Tone (Grade 10)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Style and Tone' AND grade_level_min = 10),
  'Style and Tone (Grade 10) Topic Guide',
  'Teaching adaptation of writing for audience and purpose',
  'STYLE AND TONE - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience writing for different purposes. Understanding of word choice and sentence structure effects is helpful. Familiarity with formal and informal registers is expected.

LEARNING OBJECTIVES:
- Adapt style and tone for different audiences and purposes
- Make conscious word choices that create intended effects
- Maintain consistent tone throughout extended writing
- Analyze how style creates meaning and effect in reading
- Develop personal style while meeting audience expectations

KEY CONCEPTS:
1) Style includes word choice, sentence structure, and overall approach
2) Tone reflects writers attitude toward subject and audience
3) Effective style matches purpose and audience while remaining authentic
4) Consistency in style and tone creates coherence
5) Analysis of published style develops craft awareness

COMMON MISCONCEPTIONS:
- Thinking sophisticated means using complex or obscure language
- Shifting tone unintentionally within pieces
- Believing formal means impersonal or boring
- Ignoring how style affects reader response
- Treating style as separate from meaning

TEACHING SEQUENCE:
Analyze how published writers create distinctive styles. Practice adapting the same content for different audiences. Study how word choice and sentence structure create tone. Develop awareness of register: formal, academic, conversational. Practice maintaining consistent tone throughout extended writing. Connect style choices to purpose and meaning. Analyze how style creates voice and personality. Develop personal style through experimentation and reflection.

DIFFERENTIATION:
For struggling learners: Provide style comparison activities. Use clear examples of different tones. Focus on matching style to clear purposes. Create revision checklists for consistency.
For advanced learners: Analyze sophisticated literary styles. Experiment with diverse stylistic approaches. Develop distinctive personal voice. Study how style reflects cultural context.

VOCABULARY:
Style, tone, voice, diction, syntax, register, formal, informal, academic, audience, purpose, consistency, adaptation

CONNECTION TO FUTURE LEARNING:
Style and tone awareness enhances all written communication. These skills prepare students for adapting writing across contexts. Students will develop flexible communication abilities for academic and professional settings.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Style and Tone' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- Topic: Citation Formats
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Citation Formats' AND grade_level_min = 10),
  'Citation Formats (Grade 10) Topic Guide',
  'Teaching MLA and APA styles',
  'CITATION FORMATS - TOPIC TEACHING GUIDE (GRADE 10)

PREREQUISITES:
Students should have experience with MLA citation from Grade 9. Understanding of why citation matters is essential. Experience with research writing is expected.

LEARNING OBJECTIVES:
- Apply MLA and APA citation formats accurately
- Understand the purposes and conventions of different citation styles
- Choose appropriate citation format based on discipline and assignment
- Use citation tools effectively while understanding formats
- Maintain citation consistency throughout documents

KEY CONCEPTS:
1) Different disciplines use different citation formats for specific reasons
2) MLA is standard for humanities; APA is standard for social sciences
3) Citation enables verification and credits intellectual sources
4) Format details differ but purposes are consistent across styles
5) Citation tools help but understanding formats ensures accuracy

COMMON MISCONCEPTIONS:
- Thinking citation formats are arbitrary rules
- Relying on citation generators without verification
- Using MLA and APA interchangeably
- Citing only direct quotes, not paraphrased ideas
- Ignoring discipline-specific conventions

TEACHING SEQUENCE:
Review purposes of citation across academic contexts. Compare MLA and APA: similarities in purpose, differences in format. Practice creating entries for various source types in both formats. Teach when each format is appropriate. Use citation tools while understanding underlying formats. Practice consistency in formatting throughout documents. Address common errors and how to avoid them. Apply appropriate citation in research writing.

DIFFERENTIATION:
For struggling learners: Provide format templates and checklists. Focus on most common source types. Use citation guides systematically. Practice one format thoroughly before comparing.
For advanced learners: Master citation for unusual source types. Understand format logic, not just rules. Compare additional citation styles (Chicago, CSE). Research why disciplines developed different standards.

VOCABULARY:
Citation, MLA format, APA format, Works Cited, References, in-text citation, bibliography, source, attribution, format, style guide

CONNECTION TO FUTURE LEARNING:
Citation format knowledge is essential for academic integrity across disciplines. These skills prepare students for college research in various fields. Students will develop documentation abilities applicable throughout academic and professional careers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Citation Formats' AND grade_level_min = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 10 READING TOPIC PROMPTS
-- Total: 19 comprehensive topic teaching guides
-- ============================================================================
