-- ============================================================================
-- GRADE 9 READING TOPIC PROMPTS
-- Comprehensive teaching guides for all Grade 9 Reading/ELA topics
-- ============================================================================

-- Unit: Literary Analysis
-- Topic: Theme Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme Analysis' AND grade_level_min = 9),
  'Theme Analysis (Grade 9) Topic Guide',
  'Teaching identification and analysis of themes in literature',
  'THEME ANALYSIS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand the difference between topic and theme from middle school. Experience with identifying textual evidence to support interpretations is essential. Understanding of how literary elements work together to create meaning is expected.

LEARNING OBJECTIVES:
- Determine a theme or central idea of a text and analyze in detail its development over the course of the text
- Analyze how complex themes emerge and interact throughout a text
- Trace how specific details reveal and develop themes
- Explain how authors use literary techniques to convey thematic meaning
- Compare thematic treatment across multiple texts

KEY CONCEPTS:
1) Themes are the underlying insights about life that emerge through literary works
2) Complex themes develop through accumulation of details, not single moments
3) Multiple themes may interact, complement, or create tension with each other
4) Authors develop themes through character choices, symbolism, conflict resolution, and structural decisions
5) Thematic analysis requires synthesis of evidence from throughout a text

COMMON MISCONCEPTIONS:
- Stating theme as a single word rather than a complete insight
- Identifying only one theme when multiple themes interact
- Looking for theme only in explicit statements rather than accumulated meaning
- Assuming theme is identical across all works on similar topics
- Separating theme from the specific techniques that develop it

TEACHING SEQUENCE:
Review theme versus topic and the importance of stating themes as complete insights. Introduce the concept of thematic complexity: how multiple themes can develop within single works. Model tracing theme development through close reading of key passages. Analyze how literary elements (symbolism, character arc, irony) contribute to thematic meaning. Practice identifying how themes interact or create tension with each other. Study how resolution or lack of resolution affects thematic interpretation. Write analytical essays that trace theme development with textual evidence. Compare thematic treatment of similar ideas across different texts and authors.

DIFFERENTIATION:
For struggling learners: Provide theme statement templates and common theme word banks. Use graphic organizers tracking theme evidence across text sections. Start with texts containing single, clear themes before analyzing complexity.
For advanced learners: Analyze how historical and cultural context affects theme development. Study how authors subvert expected thematic outcomes. Compare critical interpretations of complex themes. Develop original thematic arguments about ambiguous texts.

VOCABULARY:
Theme, thematic development, central idea, insight, emerge, accumulate, interact, tension, complement, symbolism, resolution, synthesis, interpretation

CONNECTION TO FUTURE LEARNING:
Theme analysis skills are fundamental to literary criticism and sophisticated reading. These skills prepare students for AP Literature analyses and college-level literary study. Students will develop abilities to find meaning in complex texts and articulate interpretive insights.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme Analysis' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Character Development
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Character Development' AND grade_level_min = 9),
  'Character Development (Grade 9) Topic Guide',
  'Teaching analysis of how characters change and grow',
  'CHARACTER DEVELOPMENT - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand static versus dynamic characters. Experience with inferring character traits from text evidence is essential. Understanding of how conflict drives narrative is expected.

LEARNING OBJECTIVES:
- Analyze how complex characters develop over the course of a text
- Trace how characters interact with other characters and advance the plot or develop the theme
- Analyze how character motivation affects choices and consequences
- Evaluate the psychological complexity of literary characters
- Compare character development across multiple texts

KEY CONCEPTS:
1) Complex characters have multiple, sometimes conflicting, traits and motivations
2) Character development occurs through responses to conflict and relationships
3) Internal conflicts reveal character as much as external conflicts
4) Character choices reveal values and drive thematic meaning
5) Authors develop characters through direct and indirect characterization techniques

COMMON MISCONCEPTIONS:
- Viewing characters as simply good or bad without recognizing complexity
- Focusing only on what characters do without analyzing why
- Missing how secondary characters illuminate protagonists
- Assuming character change is always positive growth
- Overlooking how narrative perspective shapes character understanding

TEACHING SEQUENCE:
Introduce the concept of psychological complexity in literary characters. Analyze how authors create characters with conflicting desires or values. Trace character development through key decision points and their consequences. Study how relationships between characters reveal aspects of each. Examine how internal conflict creates depth and authenticity. Analyze how characters function as foils for each other. Practice writing character analysis essays with sophisticated thesis statements. Compare character development techniques across different authors and periods.

DIFFERENTIATION:
For struggling learners: Use character tracking charts across text sections. Focus on single characters before analyzing relationships. Provide motivation analysis questions. Create character timelines showing key changes.
For advanced learners: Analyze characters through psychological or archetypal lenses. Study unreliable character self-presentation. Compare how authors subvert character expectations. Research critical interpretations of complex characters.

VOCABULARY:
Character development, complexity, motivation, internal conflict, external conflict, foil, protagonist, antagonist, dynamic, static, psychological, characterization

CONNECTION TO FUTURE LEARNING:
Character analysis skills prepare students for sophisticated literary interpretation and understanding human psychology. These skills transfer to analyzing real people in historical contexts and understanding motivation. Students will develop empathy and analytical abilities essential for engaged reading.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Character Development' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Literary Devices
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Literary Devices' AND grade_level_min = 9),
  'Literary Devices (Grade 9) Topic Guide',
  'Teaching symbolism, imagery, irony, and their effects',
  'LITERARY DEVICES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should recognize basic figurative language from middle school. Understanding of how authors make choices for effect is essential. Experience with close reading and textual analysis is expected.

LEARNING OBJECTIVES:
- Determine the meaning of words and phrases as they are used in the text, including figurative and connotative meanings
- Analyze the cumulative impact of specific word choices on meaning and tone
- Identify and analyze how literary devices contribute to meaning and effect
- Explain how authors use irony, symbolism, and imagery to develop themes
- Apply literary device analysis to various genres

KEY CONCEPTS:
1) Symbolism uses concrete objects or images to represent abstract ideas or themes
2) Imagery creates sensory experiences through descriptive language
3) Irony creates meaning through contrast between expectation and reality
4) Literary devices work together to create cumulative effect
5) Authors choose devices deliberately to achieve specific purposes

COMMON MISCONCEPTIONS:
- Treating devices as decoration rather than meaning-making tools
- Missing subtle or complex uses of irony
- Assuming symbols have fixed meanings across all texts
- Analyzing devices in isolation rather than in context
- Confusing different types of irony

TEACHING SEQUENCE:
Review and deepen understanding of figurative language and imagery. Introduce symbolic analysis: how to identify symbols and interpret their meanings. Study types of irony: verbal, situational, and dramatic. Analyze how devices create tone and mood. Practice close reading focused on how devices develop meaning. Study how devices work together across entire works. Connect device analysis to thematic interpretation. Write analytical paragraphs and essays about how devices create effects.

DIFFERENTIATION:
For struggling learners: Create device identification guides with examples. Practice with clear, obvious examples before subtle ones. Use visual representations of symbolic connections. Focus on one device type at a time.
For advanced learners: Analyze how authors innovate or subvert conventional device use. Study how literary movements use devices differently. Examine how devices function differently across genres. Practice original analysis of complex device interactions.

VOCABULARY:
Literary device, symbolism, imagery, irony, verbal irony, situational irony, dramatic irony, metaphor, simile, personification, allusion, foreshadowing, tone, mood

CONNECTION TO FUTURE LEARNING:
Literary device analysis is essential for sophisticated reading and writing. These skills prepare students for AP-level literary analysis and college literature courses. Students will develop appreciation for craft and the ability to analyze how meaning is created.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Literary Devices' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Point of View Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Point of View Analysis' AND grade_level_min = 9),
  'Point of View Analysis (Grade 9) Topic Guide',
  'Teaching how perspective shapes narrative',
  'POINT OF VIEW ANALYSIS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand first-person, third-person limited, and omniscient perspectives. Experience with analyzing how perspective affects reader experience is helpful. Understanding of narrator versus author is expected.

LEARNING OBJECTIVES:
- Analyze a particular point of view or cultural experience reflected in a work of literature
- Explain how an authors choices concerning point of view create effects
- Analyze how perspective shapes what information readers receive
- Evaluate narrator reliability and its effects on interpretation
- Compare how different perspectives would change narrative meaning

KEY CONCEPTS:
1) Point of view is an authors deliberate choice that shapes all aspects of narrative
2) Unreliable narrators require readers to read critically against the text
3) Cultural perspective influences how stories are told and interpreted
4) Perspective affects reader sympathy, suspense, and understanding
5) Multiple perspectives within texts create complexity and require synthesis

COMMON MISCONCEPTIONS:
- Equating narrator with author
- Assuming first-person narrators are always reliable
- Missing how limited perspective creates ironic effects
- Overlooking cultural perspective as distinct from technical point of view
- Believing perspective is merely a technical choice without thematic implications

TEACHING SEQUENCE:
Review point of view types and introduce advanced analysis of their effects. Study unreliable narration: how do readers detect unreliability? What effects does it create? Analyze how cultural perspective shapes storytelling conventions and expectations. Examine how authors create ironic distance between narrator understanding and reader understanding. Practice identifying perspective limitations and their effects on interpretation. Compare how different perspectives would change specific narratives. Connect perspective analysis to thematic interpretation. Write analytical essays about how perspective shapes meaning.

DIFFERENTIATION:
For struggling learners: Use clear examples of reliable versus unreliable narrators. Create perspective analysis checklists. Practice identifying perspective before analyzing effects. Compare straightforward examples before analyzing complex ones.
For advanced learners: Analyze sophisticated uses of unreliable narration. Study how postmodern texts experiment with perspective. Examine how cultural context affects perspective interpretation. Research critical approaches to narrative perspective.

VOCABULARY:
Point of view, perspective, narrator, unreliable narrator, cultural perspective, limited, omniscient, ironic distance, sympathy, reliability, interpretation

CONNECTION TO FUTURE LEARNING:
Perspective analysis prepares students for critical reading across all texts and media. These skills transfer to understanding bias, evaluating sources, and recognizing how all information is shaped by perspective. Students will develop sophisticated awareness essential for engaged citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Point of View Analysis' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Analyzing Poetry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Poetry' AND grade_level_min = 9),
  'Analyzing Poetry (Grade 9) Topic Guide',
  'Teaching form, structure, and meaning in poems',
  'ANALYZING POETRY - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should recognize basic poetic elements from middle school. Understanding of figurative language and sound devices is essential. Experience with close reading is expected.

LEARNING OBJECTIVES:
- Analyze how an authors choices concerning structure affect meaning
- Determine the meaning of words and phrases including figurative meanings
- Analyze the cumulative impact of word choices on meaning and tone
- Explain how form and content interact in poetry
- Apply various approaches to poetry analysis

KEY CONCEPTS:
1) Poetic form (sonnet, free verse, etc.) creates expectations and effects
2) Line breaks, stanza breaks, and white space create meaning beyond words
3) Sound devices (rhyme, rhythm, alliteration) contribute to meaning and effect
4) Poetry compresses meaning, requiring intensive close reading
5) Multiple valid interpretations can coexist when supported by text

COMMON MISCONCEPTIONS:
- Believing there is one correct interpretation of any poem
- Focusing only on meaning and ignoring how form creates meaning
- Assuming poetry must rhyme or follow traditional forms
- Reading only for paraphrasable content
- Treating sound devices as decoration rather than meaning

TEACHING SEQUENCE:
Introduce major poetic forms and their conventions and effects. Teach close reading strategies specific to poetry: attention to every word choice. Analyze how line and stanza breaks create effects. Study how sound devices (rhyme, rhythm, alliteration, assonance) create meaning. Practice multiple readings: first for experience, then for analysis. Connect formal choices to thematic meaning. Study how poets break conventions for effect. Write poetry explications that address both form and content.

DIFFERENTIATION:
For struggling learners: Begin with shorter, more accessible poems. Use audio recordings to hear sound devices. Provide annotation guides for poetry. Focus on one element at a time before synthesizing.
For advanced learners: Analyze complex forms like villanelles and sestinas. Study how poets innovate within or against traditions. Compare translations of poems to understand choice effects. Research critical interpretations and engage with them.

VOCABULARY:
Poetry, poetic form, sonnet, free verse, line break, stanza, rhyme scheme, meter, rhythm, alliteration, assonance, consonance, imagery, figurative language

CONNECTION TO FUTURE LEARNING:
Poetry analysis develops close reading skills essential for all literary study. These skills prepare students for AP Literature and college-level analysis. Students will develop appreciation for language precision and the ability to find meaning in compressed expression.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Poetry' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Drama and Plays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Drama and Plays' AND grade_level_min = 9),
  'Drama and Plays (Grade 9) Topic Guide',
  'Teaching analysis of dramatic texts and performances',
  'DRAMA AND PLAYS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic narrative elements. Experience with analyzing dialogue and character is helpful. Some exposure to dramatic performance is beneficial.

LEARNING OBJECTIVES:
- Analyze how particular elements of drama interact
- Explain how dramatic structure differs from narrative prose
- Analyze how dialogue, staging, and dramatic conventions create meaning
- Compare reading drama with experiencing performance
- Apply dramatic analysis to various theatrical traditions

KEY CONCEPTS:
1) Drama relies primarily on dialogue and action rather than narration
2) Staging elements (set, lighting, blocking) contribute to meaning
3) Dramatic conventions (aside, soliloquy, chorus) serve specific functions
4) Performance interprets text; multiple valid interpretations are possible
5) Reading drama requires imagining performance while analyzing text

COMMON MISCONCEPTIONS:
- Reading drama as if it were prose fiction
- Ignoring stage directions and performance implications
- Missing how subtext works in dialogue
- Assuming scripts fully determine performance
- Believing drama is meant only to be performed, not studied as text

TEACHING SEQUENCE:
Introduce dramatic forms and their conventions. Teach reading strategies specific to drama: attention to dialogue, subtext, and stage directions. Analyze how dramatic structure (acts, scenes) creates effects. Study dramatic conventions: soliloquy, aside, dramatic irony. Compare text with performance versions to understand interpretation. Analyze how staging choices affect meaning. Practice performing scenes to understand interpretive decisions. Write analyses of how dramatic elements create meaning.

DIFFERENTIATION:
For struggling learners: Use performance videos alongside texts. Practice reading aloud to understand dialogue. Focus on accessible, shorter plays initially. Provide character relationship maps.
For advanced learners: Analyze complex theatrical traditions. Study how directors interpret texts. Compare productions of the same play. Research historical staging practices and their effects.

VOCABULARY:
Drama, play, act, scene, dialogue, monologue, soliloquy, aside, stage directions, staging, blocking, dramatic irony, tragedy, comedy, tragicomedy

CONNECTION TO FUTURE LEARNING:
Drama analysis prepares students for understanding theatrical literature and performance. These skills transfer to analyzing dialogue, understanding visual storytelling, and appreciating how interpretation shapes meaning. Students will develop abilities essential for theatrical literacy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Drama and Plays' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Unit: Informational Text
-- Topic: Analyzing Arguments
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Arguments' AND grade_level_min = 9),
  'Analyzing Arguments (Grade 9) Topic Guide',
  'Teaching identification of claims, evidence, and reasoning',
  'ANALYZING ARGUMENTS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic argument structure from middle school. Experience with identifying claims and evidence is essential. Understanding of persuasive versus informative purposes is expected.

LEARNING OBJECTIVES:
- Delineate and evaluate the argument and specific claims in a text
- Assess whether reasoning is valid and evidence is relevant and sufficient
- Analyze how authors use rhetoric to advance their arguments
- Identify logical fallacies and explain how they weaken arguments
- Evaluate arguments from multiple sources on the same topic

KEY CONCEPTS:
1) Arguments consist of claims supported by reasons and evidence
2) Valid reasoning logically connects evidence to claims
3) Evidence must be relevant, sufficient, and from credible sources
4) Fallacies are errors in reasoning that appear logical but are flawed
5) Strong arguments acknowledge and address counterarguments

COMMON MISCONCEPTIONS:
- Evaluating arguments based on agreement with conclusions
- Confusing emotional appeal with logical evidence
- Missing subtle logical fallacies
- Assuming published arguments are well-reasoned
- Thinking any evidence is sufficient regardless of relevance

TEACHING SEQUENCE:
Review argument structure and evaluation criteria. Teach analysis of how claims, reasons, and evidence connect. Introduce common logical fallacies and practice identification. Analyze how authors address counterarguments. Study how evidence quality affects argument strength. Evaluate arguments from multiple perspectives on the same issue. Practice writing evaluations that assess specific elements of argument quality. Apply argument analysis to real-world texts from media and public discourse.

DIFFERENTIATION:
For struggling learners: Use argument maps to visualize structure. Create fallacy reference guides. Start with clearly flawed arguments before analyzing subtle ones. Practice one evaluation criterion at a time.
For advanced learners: Analyze sophisticated arguments with multiple claims. Study rhetorical theory and advanced persuasive techniques. Evaluate arguments in specialized fields. Practice constructing and defending original arguments.

VOCABULARY:
Argument, claim, evidence, reasoning, valid, relevant, sufficient, fallacy, counterargument, credibility, logic, persuade, refute

CONNECTION TO FUTURE LEARNING:
Argument analysis skills are essential for academic success and civic participation. These skills prepare students for college-level writing and research. Students will develop critical thinking abilities for evaluating information throughout their lives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Arguments' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Rhetorical Analysis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Rhetorical Analysis' AND grade_level_min = 9),
  'Rhetorical Analysis (Grade 9) Topic Guide',
  'Teaching ethos, pathos, logos in speeches and essays',
  'RHETORICAL ANALYSIS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic persuasive techniques. Experience with analyzing authors purpose is essential. Understanding of audience awareness is expected.

LEARNING OBJECTIVES:
- Determine an authors purpose in a text and analyze how an author uses rhetoric to advance that purpose
- Identify and analyze how authors use ethos, pathos, and logos
- Explain how rhetorical choices create effects on audiences
- Analyze how context shapes rhetorical choices
- Apply rhetorical analysis to various types of persuasive texts

KEY CONCEPTS:
1) Ethos establishes credibility and trustworthiness
2) Pathos appeals to emotions to persuade audiences
3) Logos uses logic and evidence to support claims
4) Effective rhetoric balances appeals appropriately for purpose and audience
5) Context (historical, cultural, situational) shapes rhetorical choices and effects

COMMON MISCONCEPTIONS:
- Viewing rhetorical appeals as manipulative rather than legitimate persuasion
- Assuming texts use only one type of appeal
- Missing subtle uses of rhetorical techniques
- Separating analysis of appeals from evaluation of effectiveness
- Ignoring how context affects rhetorical choices

TEACHING SEQUENCE:
Introduce the rhetorical triangle: speaker, audience, purpose. Teach ethos, pathos, and logos with clear examples. Analyze how effective speakers balance multiple appeals. Study how context shapes rhetorical choices. Practice identifying appeals and analyzing their effects. Analyze famous speeches and essays for rhetorical technique. Connect rhetorical analysis to evaluation of effectiveness. Write rhetorical analysis essays examining how texts persuade.

DIFFERENTIATION:
For struggling learners: Use graphic organizers for identifying appeals. Start with speeches that use obvious techniques. Create appeal identification checklists. Practice with familiar topics and accessible texts.
For advanced learners: Analyze sophisticated and subtle rhetoric. Study classical rhetorical theory. Examine how rhetorical practices vary across cultures. Analyze how digital media affects rhetorical strategies.

VOCABULARY:
Rhetoric, rhetorical analysis, ethos, pathos, logos, credibility, emotional appeal, logical appeal, audience, purpose, context, persuasion, technique

CONNECTION TO FUTURE LEARNING:
Rhetorical analysis skills are fundamental to communication and critical thinking. These skills prepare students for AP Language and college writing. Students will develop awareness of how persuasion works in all forms of communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rhetorical Analysis' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Foundational Documents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Foundational Documents' AND grade_level_min = 9),
  'Foundational Documents (Grade 9) Topic Guide',
  'Teaching analysis of historical American texts',
  'FOUNDATIONAL DOCUMENTS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have basic American history knowledge. Understanding of persuasive techniques and argument structure is essential. Experience with reading challenging primary sources is helpful.

LEARNING OBJECTIVES:
- Analyze seminal U.S. documents of historical and literary significance
- Determine the central ideas and explain their development
- Analyze how texts address related themes and concepts
- Explain how historical context shapes textual meaning
- Connect foundational ideas to contemporary issues

KEY CONCEPTS:
1) Foundational documents establish principles that shaped American identity
2) Historical context is essential for understanding these documents purposes
3) These texts use sophisticated rhetorical strategies for their audiences
4) Ideas in foundational documents evolve in interpretation over time
5) Understanding these documents is essential for civic literacy

COMMON MISCONCEPTIONS:
- Reading foundational documents without historical context
- Assuming original meanings are identical to contemporary interpretations
- Missing rhetorical strategies because of formal language
- Treating these documents as sacred rather than subject to analysis
- Ignoring voices excluded from founding documents

TEACHING SEQUENCE:
Provide historical context for each document studied. Teach strategies for reading challenging archaic language. Analyze the rhetorical strategies used to persuade original audiences. Identify central ideas and trace their development across sections. Connect themes across multiple foundational documents. Examine how interpretations have evolved over time. Consider perspectives not represented in original documents. Connect foundational principles to contemporary issues and debates.

DIFFERENTIATION:
For struggling learners: Provide modernized versions alongside originals. Use annotation guides for challenging vocabulary. Focus on key passages rather than entire documents. Create historical context summaries.
For advanced learners: Analyze lesser-known foundational texts. Study how documents influenced each other. Research interpretive debates about these texts. Compare American founding documents to those of other nations.

VOCABULARY:
Foundational document, seminal, Declaration of Independence, Constitution, Bill of Rights, rhetoric, historical context, interpretation, principle, liberty, equality, civic

CONNECTION TO FUTURE LEARNING:
Foundational document analysis is essential for civic literacy and historical understanding. These skills prepare students for government, history, and advanced composition courses. Students will develop abilities to engage with primary sources and understand the foundations of American society.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Foundational Documents' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Comparing Sources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Sources' AND grade_level_min = 9),
  'Comparing Sources (Grade 9) Topic Guide',
  'Teaching synthesis of information from multiple texts',
  'COMPARING SOURCES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have experience with integrating information from multiple sources. Understanding of source evaluation is essential. Experience with identifying agreement and disagreement across sources is expected.

LEARNING OBJECTIVES:
- Analyze various accounts of a subject told in different mediums
- Determine what details are emphasized or absent in each account
- Synthesize information from multiple sources to develop understanding
- Evaluate which sources are most useful for different purposes
- Create coherent analysis from multiple perspectives

KEY CONCEPTS:
1) Different sources emphasize different aspects of the same subject
2) What sources omit can be as significant as what they include
3) Source purpose and audience affect how information is presented
4) Synthesis creates new understanding by combining multiple perspectives
5) Evaluating sources requires considering purpose, bias, and completeness

COMMON MISCONCEPTIONS:
- Treating all sources as equally valuable
- Missing significant omissions in source coverage
- Summarizing sources separately rather than synthesizing
- Assuming more sources always means better understanding
- Ignoring how medium affects presentation

TEACHING SEQUENCE:
Analyze how the same event or topic appears in different sources. Identify what each source emphasizes, minimizes, or omits. Evaluate sources for purpose, reliability, and usefulness. Practice synthesis: combining information to create fuller understanding. Study how medium (text, video, data visualization) affects presentation. Identify contradictions and evaluate which sources to trust. Create products that synthesize multiple source perspectives. Write analyses that integrate information coherently.

DIFFERENTIATION:
For struggling learners: Use comparison matrices for analyzing sources. Start with two sources before adding more. Focus on complementary sources before conflicting ones. Provide synthesis sentence starters.
For advanced learners: Analyze how sources from different time periods treat the same topic. Evaluate sources in specialized fields. Study how propaganda uses source manipulation. Create sophisticated syntheses from numerous sources.

VOCABULARY:
Source, compare, contrast, synthesize, emphasis, omission, medium, perspective, bias, reliability, integrate, evaluate

CONNECTION TO FUTURE LEARNING:
Source comparison and synthesis skills are essential for research and informed thinking. These skills prepare students for academic research and navigating information in daily life. Students will develop critical abilities for evaluating and combining information.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Sources' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Author's Purpose and Bias
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Author''s Purpose and Bias' AND grade_level_min = 9),
  'Author''s Purpose and Bias (Grade 9) Topic Guide',
  'Teaching recognition of intent and perspective in texts',
  'AUTHORS PURPOSE AND BIAS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic author purpose categories. Experience with identifying perspective in texts is essential. Understanding of how choices reveal purpose is expected.

LEARNING OBJECTIVES:
- Determine an authors point of view or purpose in a text
- Analyze how an author uses rhetoric to advance that purpose
- Identify bias in informational texts
- Explain how purpose and bias shape content and presentation
- Evaluate texts considering purpose and potential bias

KEY CONCEPTS:
1) All texts are written with purposes that shape their content
2) Bias is inherent in selection of information and how it is presented
3) Recognizing bias does not mean rejecting texts, but reading critically
4) Authors may have multiple purposes that interact
5) Understanding purpose and bias is essential for critical evaluation

COMMON MISCONCEPTIONS:
- Believing informational texts are objective and without bias
- Thinking bias always means deliberate deception
- Rejecting all texts that contain bias
- Missing subtle indicators of purpose and bias
- Assuming ones own perspective is objective

TEACHING SEQUENCE:
Discuss how all communication involves selection and emphasis. Teach indicators of purpose: word choice, detail selection, organization, tone. Analyze how bias manifests in seemingly objective texts. Practice identifying purpose in various text types. Study how to read critically without rejecting useful sources. Compare how different purposes lead to different presentations of the same topic. Evaluate texts considering both usefulness and limitations. Write analyses that assess purpose and bias in specific texts.

DIFFERENTIATION:
For struggling learners: Use clear examples of purpose and bias. Create indicator checklists for analysis. Compare obviously different perspectives first. Practice with familiar topics.
For advanced learners: Analyze subtle bias in prestigious sources. Study how their own perspectives create bias. Examine institutional and systemic sources of bias. Research how media bias operates.

VOCABULARY:
Purpose, bias, perspective, objective, subjective, selection, emphasis, rhetoric, tone, credibility, critical reading, evaluation

CONNECTION TO FUTURE LEARNING:
Understanding purpose and bias is essential for critical literacy and informed citizenship. These skills prepare students for evaluating sources in research and navigating media. Students will develop critical awareness applicable to all information consumption.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Author''s Purpose and Bias' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Unit: Writing
-- Topic: The Writing Process
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'The Writing Process' AND grade_level_min = 9),
  'The Writing Process (Grade 9) Topic Guide',
  'Teaching prewriting, drafting, revising, and editing',
  'THE WRITING PROCESS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have experience with writing through a process. Understanding of the difference between revision and editing is expected. Familiarity with planning and organizing writing is essential.

LEARNING OBJECTIVES:
- Develop and strengthen writing by planning, revising, editing, and rewriting
- Apply appropriate process steps for different writing tasks
- Use various prewriting strategies to generate and organize ideas
- Revise for content, organization, style, and word choice
- Edit for conventions with accuracy and efficiency

KEY CONCEPTS:
1) Writing is a recursive process, not a linear sequence
2) Different writing tasks may require different approaches to process
3) Prewriting strategies help generate and organize ideas before drafting
4) Revision focuses on content and organization; editing focuses on correctness
5) Writers develop personalized processes through experience and reflection

COMMON MISCONCEPTIONS:
- Believing good writers produce polished first drafts
- Following the same rigid process for all writing tasks
- Confusing revision with editing or proofreading
- Skipping prewriting and expecting drafts to emerge
- Thinking process ends when a draft is complete

TEACHING SEQUENCE:
Discuss how professional writers approach process differently. Introduce various prewriting strategies: brainstorming, outlining, freewriting, graphic organizers. Practice drafting with focus on getting ideas down before polishing. Teach revision strategies for different aspects: content, organization, style. Develop editing strategies for efficient error correction. Build routines for feedback and revision. Reflect on personal writing processes and their effectiveness. Adapt process flexibly for different tasks and constraints.

DIFFERENTIATION:
For struggling learners: Provide structured prewriting templates. Break process into smaller, manageable steps. Use conferencing to support revision decisions. Create editing checklists for common errors.
For advanced learners: Develop personalized processes based on reflection. Study how published writers describe their processes. Experiment with different approaches. Mentor others in process strategies.

VOCABULARY:
Writing process, prewriting, drafting, revision, editing, proofreading, brainstorming, outlining, freewriting, recursive, feedback, conferencing

CONNECTION TO FUTURE LEARNING:
Understanding writing process prepares students for extended academic writing. These skills transfer to all writing contexts throughout academic and professional life. Students will develop self-direction and metacognitive awareness about their own writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Writing Process' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Argumentative Essays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Argumentative Essays' AND grade_level_min = 9),
  'Argumentative Essays (Grade 9) Topic Guide',
  'Teaching building logical arguments with evidence',
  'ARGUMENTATIVE ESSAYS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have experience with basic argument structure. Understanding of claims, evidence, and reasoning is essential. Familiarity with essay structure is expected.

LEARNING OBJECTIVES:
- Write arguments to support claims in an analysis of substantive topics
- Introduce claims and distinguish them from alternate or opposing claims
- Develop claims with logical reasoning and relevant, sufficient evidence
- Use transitions to link sections and create cohesion
- Maintain formal style and objective tone

KEY CONCEPTS:
1) Argumentative essays defend positions with evidence and reasoning
2) Effective arguments acknowledge and address counterarguments
3) Evidence must be relevant, sufficient, and from credible sources
4) Logical organization builds argument strength
5) Formal style and objective tone enhance credibility

COMMON MISCONCEPTIONS:
- Thinking strong opinion alone makes a good argument
- Ignoring opposing viewpoints rather than addressing them
- Using emotional appeals instead of evidence
- Organizing by source rather than by claim and reason
- Losing formal tone when addressing counterarguments

TEACHING SEQUENCE:
Analyze model argumentative essays for structure and technique. Practice developing debatable, specific thesis statements. Teach how to find and evaluate evidence from credible sources. Model integrating evidence with explanation and analysis. Develop counterargument strategies: acknowledge, concede, or refute. Practice transition use for cohesion between sections. Build revision practices focused on argument strength. Apply peer review for feedback on argument effectiveness.

DIFFERENTIATION:
For struggling learners: Provide argument outlines with clear sections. Offer curated sources for research. Use sentence starters for transitions and counterarguments. Break drafting into manageable steps.
For advanced learners: Argue complex positions requiring nuance. Address multiple counterarguments substantively. Develop sophisticated rhetorical strategies. Write for real audiences and purposes.

VOCABULARY:
Argumentative essay, claim, thesis, evidence, reasoning, counterargument, refute, concede, acknowledge, transition, cohesion, formal style, credibility

CONNECTION TO FUTURE LEARNING:
Argumentative writing is fundamental to academic and professional success. These skills prepare students for college writing, standardized tests, and civic participation. Students will develop abilities to defend positions and engage with complex issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Argumentative Essays' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Literary Analysis Essays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Literary Analysis Essays' AND grade_level_min = 9),
  'Literary Analysis Essays (Grade 9) Topic Guide',
  'Teaching writing about literature effectively',
  'LITERARY ANALYSIS ESSAYS - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should be able to analyze literary elements and develop interpretations. Understanding of textual evidence use is essential. Experience with academic essay structure is expected.

LEARNING OBJECTIVES:
- Write literary analysis with thesis-driven arguments about texts
- Draw evidence from literary texts to support analysis
- Integrate textual evidence smoothly and analyze its significance
- Organize analysis logically around developed claims
- Maintain formal academic style appropriate for literary analysis

KEY CONCEPTS:
1) Literary analysis presents interpretive arguments supported by textual evidence
2) Effective analysis goes beyond summary to argue about how and why texts work
3) Evidence must be integrated, analyzed, and connected to thesis claims
4) Organization should follow argument logic, not plot sequence
5) Literary present tense and formal style are conventions of literary analysis

COMMON MISCONCEPTIONS:
- Summarizing plot instead of analyzing meaning
- Presenting evidence without analysis
- Organizing by plot rather than by argument
- Using past tense when discussing literature
- Treating personal response as analysis

TEACHING SEQUENCE:
Teach thesis development for literary analysis: interpretive, arguable, specific. Practice distinguishing analysis from summary. Model evidence integration using quote sandwich technique. Analyze how to organize by claim rather than by plot sequence. Teach literary present tense and conventions of formal literary discussion. Practice analysis of evidence: explaining how quotes support claims. Develop revision strategies for strengthening analysis. Apply peer review focused on argument and evidence.

DIFFERENTIATION:
For struggling learners: Provide thesis templates for common analytical approaches. Offer structured outlines with paragraph purposes. Use mentor essays as models. Practice evidence analysis before full essay writing.
For advanced learners: Develop complex, nuanced thesis statements. Apply critical lenses to analysis. Research and engage with published literary criticism. Analyze challenging, ambiguous texts.

VOCABULARY:
Literary analysis, thesis, interpretation, textual evidence, quote, analysis, significance, formal style, literary present tense, claim, argument, synthesis

CONNECTION TO FUTURE LEARNING:
Literary analysis skills are essential for advanced English study and humanities courses. These skills prepare students for AP Literature, college writing, and critical thinking. Students will develop abilities to articulate sophisticated interpretations.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Literary Analysis Essays' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Research Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Writing' AND grade_level_min = 9),
  'Research Writing (Grade 9) Topic Guide',
  'Teaching research and source integration',
  'RESEARCH WRITING - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have basic research skills from middle school. Understanding of source evaluation is essential. Experience with paraphrasing and quoting is expected.

LEARNING OBJECTIVES:
- Conduct short and sustained research projects based on focused questions
- Synthesize multiple sources demonstrating understanding of the subject
- Integrate information from sources while maintaining flow of ideas
- Avoid plagiarism by citing sources appropriately
- Follow standard citation format (MLA) consistently

KEY CONCEPTS:
1) Research writing synthesizes sources around original thesis or purpose
2) Effective research requires evaluating sources for credibility and relevance
3) Sources must be integrated, not strung together in isolation
4) Proper citation respects intellectual property and enables verification
5) Research develops understanding rather than simply finding sources

COMMON MISCONCEPTIONS:
- Thinking research means finding sources that support predetermined conclusions
- Stringing together quotes without synthesis
- Citing only direct quotes, not paraphrased information
- Organizing by source rather than by idea
- Believing research writing means compiling information

TEACHING SEQUENCE:
Develop focused research questions that guide inquiry. Teach source evaluation and selection strategies. Practice note-taking that organizes by idea rather than source. Model synthesis: how to weave sources together around points. Teach integration of quotes and paraphrases with signal phrases. Practice citation format with consistent application. Build revision strategies for source integration. Complete research projects through the full process.

DIFFERENTIATION:
For struggling learners: Provide structured research templates. Offer curated source sets initially. Use graphic organizers for synthesis. Break process into clearly defined stages.
For advanced learners: Conduct more extensive research with diverse sources. Use primary sources and specialized databases. Develop sophisticated original arguments from synthesis. Navigate scholarly sources independently.

VOCABULARY:
Research, source, synthesis, integration, citation, MLA format, bibliography, paraphrase, quote, credibility, plagiarism, works cited

CONNECTION TO FUTURE LEARNING:
Research writing skills are essential for academic success across disciplines. These skills prepare students for extended projects, college research, and professional contexts. Students will develop independent inquiry abilities for lifelong learning.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Writing' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Narrative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 9),
  'Narrative Writing (Grade 9) Topic Guide',
  'Teaching development of engaging narratives',
  'NARRATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have experience with narrative structure and technique. Understanding of plot, character, and setting development is essential. Familiarity with using dialogue and description is expected.

LEARNING OBJECTIVES:
- Write narratives using effective technique, descriptive details, and well-structured event sequences
- Engage readers by establishing context, point of view, and situation
- Use techniques such as dialogue, pacing, description, and reflection
- Create smooth progressions using transitions and varied syntax
- Provide conclusions that reflect on experiences and their significance

KEY CONCEPTS:
1) Effective narratives engage readers through specific, evocative details
2) Pacing controls how readers experience events and emotions
3) Reflection creates meaning beyond mere event sequence
4) Point of view and voice create the narrator presence that engages readers
5) Narrative techniques work together to create unified effects

COMMON MISCONCEPTIONS:
- Including all events rather than selecting purposefully
- Describing without creating sensory experience
- Rushing through important moments
- Ending with events rather than reflection
- Telling readers what to feel rather than showing

TEACHING SEQUENCE:
Study narrative techniques in mentor texts. Practice writing engaging openings that establish voice and context. Develop pacing awareness: when to expand and when to compress. Refine dialogue skills for natural speech and purposeful inclusion. Practice sensory detail that creates experience without overwhelming. Introduce reflection as meaning-making technique. Develop conclusions that provide significance without moralizing. Use writing workshop for drafting, feedback, and revision.

DIFFERENTIATION:
For struggling learners: Use story structure graphic organizers. Provide mentor sentences for technique. Focus on one narrative technique at a time. Offer structured revision checklists.
For advanced learners: Experiment with non-linear structures and unreliable narrators. Develop complex internal conflicts. Create narratives with thematic depth. Study published narrative techniques and apply them.

VOCABULARY:
Narrative, plot, character, setting, dialogue, pacing, description, reflection, sensory detail, point of view, voice, tension, resolution, technique

CONNECTION TO FUTURE LEARNING:
Narrative writing develops storytelling abilities essential for many contexts. These skills prepare students for personal essays, creative writing, and understanding narrative across media. Students will develop craft for self-expression and communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Narrative Writing' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: MLA Citation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'MLA Citation' AND grade_level_min = 9),
  'MLA Citation (Grade 9) Topic Guide',
  'Teaching proper citation of sources in MLA format',
  'MLA CITATION - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand why citation is necessary. Basic experience with acknowledging sources is helpful. Understanding of paraphrasing versus quoting is expected.

LEARNING OBJECTIVES:
- Format in-text citations correctly in MLA style
- Create Works Cited entries for various source types
- Integrate citations smoothly into writing
- Avoid plagiarism through proper attribution
- Apply MLA format consistently throughout documents

KEY CONCEPTS:
1) Citation credits sources and enables readers to locate them
2) In-text citations connect specific information to Works Cited entries
3) Different source types require different citation formats
4) Citation prevents plagiarism by attributing ideas to their sources
5) Consistent formatting demonstrates attention to academic conventions

COMMON MISCONCEPTIONS:
- Thinking only direct quotes need citation
- Placing citations incorrectly in relation to punctuation
- Using outdated MLA formats
- Believing citation is just about avoiding punishment
- Ignoring citation for electronic and digital sources

TEACHING SEQUENCE:
Explain the purposes of citation: credit, verification, academic honesty. Teach in-text citation format and placement. Practice creating Works Cited entries for common source types: books, articles, websites. Model how to use citation guides and tools. Practice integrating citations into writing smoothly. Identify common citation errors and how to avoid them. Apply citation consistently in research writing. Review and revise citation accuracy.

DIFFERENTIATION:
For struggling learners: Provide citation format templates. Focus on most common source types first. Use citation generators with verification. Create step-by-step checklists.
For advanced learners: Master citation for unusual source types. Understand citation format logic, not just rules. Compare MLA to other citation styles. Evaluate citation tools critically.

VOCABULARY:
Citation, MLA format, in-text citation, Works Cited, source, plagiarism, attribution, paraphrase, quote, format, entry, parenthetical

CONNECTION TO FUTURE LEARNING:
Citation skills are essential for academic integrity and research across disciplines. These skills prepare students for college research and professional documentation. Students will develop habits of proper attribution that serve them throughout careers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'MLA Citation' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Unit: Language Skills
-- Topic: Sentence Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Sentence Structure' AND grade_level_min = 9),
  'Sentence Structure (Grade 9) Topic Guide',
  'Teaching complex and compound-complex sentences',
  'SENTENCE STRUCTURE - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should recognize simple, compound, and complex sentences. Understanding of clauses and conjunctions is essential. Experience with varying sentence structure is expected.

LEARNING OBJECTIVES:
- Use various types of phrases and clauses to convey specific meanings and add variety
- Construct and use effectively simple, compound, complex, and compound-complex sentences
- Choose sentence structures that serve purpose and create effects
- Recognize and correct errors in sentence structure
- Use sentence structure to create emphasis and rhythm

KEY CONCEPTS:
1) Sentence structure choices affect meaning, emphasis, and style
2) Compound-complex sentences combine coordination and subordination
3) Phrases (participial, appositive, prepositional) add variety and detail
4) Sentence structure creates rhythm and pacing in prose
5) Errors in structure (fragments, run-ons, comma splices) obscure meaning

COMMON MISCONCEPTIONS:
- Believing longer sentences are always more sophisticated
- Using only one sentence pattern repeatedly
- Treating sentence variety as decoration rather than meaning
- Creating fragments when using complex structures
- Overloading sentences with too many clauses

TEACHING SEQUENCE:
Review clause types and how they combine. Introduce compound-complex sentence construction. Practice using phrases to add information and variety. Analyze how sentence structure creates effects in published writing. Practice choosing structure based on purpose and emphasis. Identify and correct common errors: fragments, run-ons, comma splices. Revise writing specifically for sentence variety. Analyze the effects of short sentences for emphasis and longer sentences for complexity.

DIFFERENTIATION:
For struggling learners: Practice one structure type at a time. Use sentence combining exercises. Create visual representations of sentence patterns. Focus on identifying before producing.
For advanced learners: Analyze sophisticated sentence patterns in literature. Experiment with periodic and loose sentence styles. Study how sentence structure creates voice. Develop signature sentence patterns.

VOCABULARY:
Sentence structure, simple, compound, complex, compound-complex, clause, phrase, coordination, subordination, fragment, run-on, comma splice, syntax

CONNECTION TO FUTURE LEARNING:
Sentence structure mastery enables sophisticated written expression. These skills prepare students for advanced composition and literary style analysis. Students will develop control over syntax for various effects.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sentence Structure' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Phrases and Clauses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Phrases and Clauses' AND grade_level_min = 9),
  'Phrases and Clauses (Grade 9) Topic Guide',
  'Teaching effective use of phrases and clauses',
  'PHRASES AND CLAUSES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand basic sentence components. Recognition of subjects, verbs, and objects is essential. Experience with sentence combining is helpful.

LEARNING OBJECTIVES:
- Use various types of phrases and clauses to convey specific meanings
- Identify and use participial, appositive, and absolute phrases
- Employ relative and adverbial clauses effectively
- Place phrases and clauses correctly to avoid ambiguity
- Use phrases and clauses to add sophistication to writing

KEY CONCEPTS:
1) Phrases are groups of words without subject-verb combinations
2) Clauses contain subjects and verbs; independent clauses can stand alone
3) Different phrase types serve different functions and add different information
4) Phrase and clause placement affects meaning and clarity
5) Misplaced modifiers create confusion and unintended meanings

COMMON MISCONCEPTIONS:
- Confusing phrases and clauses
- Placing modifiers incorrectly creating ambiguity
- Overusing one phrase type while neglecting others
- Creating dangling modifiers with participial phrases
- Treating all dependent clauses identically

TEACHING SEQUENCE:
Review phrase and clause definitions and distinctions. Introduce phrase types: participial, appositive, absolute, prepositional. Study clause types: relative, adverbial, noun. Practice identifying phrases and clauses in context. Model using phrases and clauses to combine sentences effectively. Address placement issues: avoiding dangling and misplaced modifiers. Apply phrase and clause variety in revision. Analyze how skilled writers use phrases and clauses for effect.

DIFFERENTIATION:
For struggling learners: Focus on one type at a time. Use color-coding for identification. Practice combining simple sentences. Create reference guides for each type.
For advanced learners: Analyze complex sentence patterns in sophisticated texts. Study how phrase and clause use varies by genre. Experiment with absolute phrases for advanced effects. Develop personal style through strategic use.

VOCABULARY:
Phrase, clause, independent clause, dependent clause, participial phrase, appositive, absolute phrase, relative clause, adverbial clause, modifier, placement

CONNECTION TO FUTURE LEARNING:
Understanding phrases and clauses enables sophisticated sentence construction. These skills prepare students for advanced grammar study and refined writing. Students will develop syntactic control essential for academic and professional communication.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Phrases and Clauses' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Parallel Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Parallel Structure' AND grade_level_min = 9),
  'Parallel Structure (Grade 9) Topic Guide',
  'Teaching creation of balanced and effective sentences',
  'PARALLEL STRUCTURE - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should understand parts of speech and basic sentence structure. Recognition of grammatical patterns is helpful. Experience with sentence combining and revision is expected.

LEARNING OBJECTIVES:
- Use parallel structure to create balanced and effective sentences
- Recognize faulty parallelism and correct it
- Apply parallelism in lists, comparisons, and paired constructions
- Use parallelism for rhetorical effect
- Identify parallelism in reading and apply it in writing

KEY CONCEPTS:
1) Parallel structure uses the same grammatical pattern for related ideas
2) Parallelism creates balance, clarity, and rhythm
3) Lists, comparisons, and paired constructions require parallel form
4) Faulty parallelism creates awkwardness and can obscure meaning
5) Effective parallelism can create powerful rhetorical effects

COMMON MISCONCEPTIONS:
- Thinking parallelism is merely stylistic, not meaningful
- Missing faulty parallelism in complex sentences
- Applying parallelism only to simple lists
- Believing parallelism means repetition of words
- Not recognizing how conjunctions signal need for parallel form

TEACHING SEQUENCE:
Introduce parallel structure with clear examples showing balance. Identify structures that require parallelism: lists, comparisons, correlative conjunctions. Practice identifying faulty parallelism and correcting it. Analyze powerful examples of parallelism in rhetoric and literature. Study how parallelism creates rhythm and emphasis. Practice creating original parallel constructions. Apply parallelism awareness in revision of extended writing. Connect parallelism to voice and style development.

DIFFERENTIATION:
For struggling learners: Start with simple lists before complex parallelism. Use visual alignment to show parallel structure. Practice one type of faulty parallelism at a time. Create correction exercises with immediate feedback.
For advanced learners: Analyze sophisticated parallelism in speeches and literature. Study how parallelism functions in rhetoric. Create extended parallel structures for effect. Analyze how breaking parallelism can create emphasis.

VOCABULARY:
Parallel structure, parallelism, balance, coordination, correlative conjunctions, faulty parallelism, grammatical pattern, rhythm, emphasis

CONNECTION TO FUTURE LEARNING:
Parallel structure skills enhance both writing quality and rhetorical effectiveness. These skills prepare students for persuasive writing and style analysis. Students will develop ear for balanced prose essential for polished expression.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel Structure' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Vocabulary Strategies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Vocabulary Strategies' AND grade_level_min = 9),
  'Vocabulary Strategies (Grade 9) Topic Guide',
  'Teaching context clues, roots, and word analysis',
  'VOCABULARY STRATEGIES - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should have vocabulary learning experience from middle school. Understanding of context clues and common roots is helpful. Familiarity with dictionary and thesaurus use is expected.

LEARNING OBJECTIVES:
- Determine the meaning of unknown words using context clues and word parts
- Apply knowledge of Greek and Latin roots, prefixes, and suffixes
- Verify meanings using reference materials
- Build academic vocabulary for college and career readiness
- Use new vocabulary accurately in speaking and writing

KEY CONCEPTS:
1) Context clues include definitions, examples, synonyms, antonyms, and general sense
2) Greek and Latin roots form the basis of many English words
3) Prefixes and suffixes modify meaning in predictable ways
4) Academic vocabulary appears across disciplines and is essential for success
5) Vocabulary learning requires multiple encounters and active use

COMMON MISCONCEPTIONS:
- Relying only on sounding out unknown words
- Skipping unfamiliar vocabulary rather than using strategies
- Assuming a words general meaning applies in specialized contexts
- Memorizing definitions without understanding use
- Believing vocabulary is fixed rather than constantly expandable

TEACHING SEQUENCE:
Teach context clue types systematically with practice. Introduce common Greek and Latin roots and their meanings. Practice morphological analysis: breaking words into meaningful parts. Study academic vocabulary that appears across subjects. Build vocabulary systems: word journals, digital tools, spaced practice. Practice using new vocabulary in speaking and writing. Connect vocabulary to reading comprehension across texts. Develop habits for lifelong vocabulary learning.

DIFFERENTIATION:
For struggling learners: Provide root and affix reference charts. Use visual vocabulary cards. Focus on high-frequency academic words. Create personal word banks organized by meaning.
For advanced learners: Study etymology and word history. Analyze subtle connotation differences. Build vocabulary from challenging authentic texts. Research how vocabulary reflects cultural change.

VOCABULARY:
Context clues, root, prefix, suffix, affix, etymology, academic vocabulary, morphology, denotation, connotation, reference materials

CONNECTION TO FUTURE LEARNING:
Vocabulary skills are essential for academic success and standardized tests. These skills prepare students for college-level reading and professional communication. Students will develop vocabulary learning strategies that serve them throughout careers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vocabulary Strategies' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- Topic: Figurative Language (Grade 9)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 9),
  'Figurative Language (Grade 9) Topic Guide',
  'Teaching analysis and use of figurative language',
  'FIGURATIVE LANGUAGE - TOPIC TEACHING GUIDE (GRADE 9)

PREREQUISITES:
Students should recognize basic figurative language types. Understanding of literal versus figurative meaning is essential. Experience with analyzing how figurative language creates effects is expected.

LEARNING OBJECTIVES:
- Interpret figures of speech in context and analyze their role in the text
- Analyze how specific word choices affect meaning and tone
- Identify sophisticated uses of figurative language in literature
- Use figurative language effectively in original writing
- Analyze patterns of figurative language across texts

KEY CONCEPTS:
1) Figurative language creates meaning beyond literal definitions
2) Extended metaphors and sustained imagery develop across texts
3) Authors use figurative language strategically for specific effects
4) Figurative language contributes to characterization, theme, and tone
5) Understanding figurative language requires cultural and contextual knowledge

COMMON MISCONCEPTIONS:
- Treating figurative language as decoration rather than meaning
- Missing subtle or extended figurative patterns
- Interpreting culturally specific figures too literally or incorrectly
- Assuming figurative language appears only in poetry
- Believing there is one correct interpretation of figurative language

TEACHING SEQUENCE:
Review figurative language types and expand to include sophisticated devices. Study extended metaphors and how they develop across texts. Analyze how figurative language patterns create thematic meaning. Practice close reading focused on figurative language effects. Connect figurative analysis to characterization and tone. Study how cultural context affects figurative interpretation. Practice using figurative language strategically in original writing. Write analytical paragraphs about figurative language effects.

DIFFERENTIATION:
For struggling learners: Build on familiar examples before introducing new devices. Use visual representations of figurative comparisons. Practice with accessible, contemporary examples. Focus on identification before interpretation.
For advanced learners: Analyze sophisticated and subtle figurative patterns. Study how figurative language varies across literary periods. Examine cultural specificity of figurative expression. Create original extended metaphors.

VOCABULARY:
Figurative language, metaphor, simile, personification, hyperbole, understatement, irony, allusion, imagery, symbolism, extended metaphor, conceit

CONNECTION TO FUTURE LEARNING:
Figurative language analysis is essential for literary interpretation and appreciation. These skills prepare students for advanced literary study and creative writing. Students will develop sensitivity to language that enhances both reading and writing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Figurative Language' AND grade_level_min = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 9 READING TOPIC PROMPTS
-- Total: 22 comprehensive topic teaching guides
-- ============================================================================
