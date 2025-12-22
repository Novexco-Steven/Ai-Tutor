-- ============================================================================
-- GRADE 8 READING TOPIC PROMPTS
-- Comprehensive teaching guides for all Grade 8 Reading/ELA topics
-- ============================================================================

-- Unit: Reading Literature
-- Topic: Dialogue and Pacing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Dialogue and Pacing' AND grade_level_min = 8),
  'Dialogue and Pacing (Grade 8) Topic Guide',
  'Teaching how dialogue and incidents propel action',
  'DIALOGUE AND PACING - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand basic plot structure and dialogue conventions. Experience with analyzing character through speech is helpful. Understanding of narrative techniques from Grade 7 is expected.

LEARNING OBJECTIVES:
- Analyze how particular lines of dialogue or incidents in a story or drama propel the action, reveal aspects of character, or provoke a decision
- Explain how dialogue advances plot and creates tension
- Analyze how pacing controls reader experience and creates effects
- Evaluate how incidents trigger character development and plot progression
- Identify how dialogue reveals subtext and unstated meaning

KEY CONCEPTS:
1) Dialogue serves multiple purposes: revealing character, advancing plot, creating tension, establishing relationships
2) Pacing is the speed at which events unfold, controlled through scene length, detail, and summary
3) Key incidents serve as turning points that propel characters toward decisions
4) Subtext is the meaning beneath the surface of what characters say
5) Authors control pacing strategically to build tension, create emphasis, or generate momentum

COMMON MISCONCEPTIONS:
- Thinking dialogue only provides information rather than characterization
- Missing how pacing creates emotional effects
- Overlooking how small incidents accumulate to create larger effects
- Reading only the literal meaning of dialogue without subtext
- Assuming all scenes should have similar pacing

TEACHING SEQUENCE:
Analyze passages where dialogue drives plot forward or forces character decisions. Identify how authors control pacing: detailed scene versus summary, dialogue versus narration. Practice identifying subtext: what characters mean versus what they say. Map how incidents create chains of cause and effect. Compare pacing in action scenes versus reflection scenes. Study how authors vary pacing for different effects. Write analyses of how specific dialogue or incidents propel action. Practice writing dialogue that serves multiple purposes simultaneously.

DIFFERENTIATION:
For struggling learners: Use graphic organizers tracking dialogue purposes. Highlight pacing shifts in mentor texts. Focus on explicit dialogue effects before subtext. Create cause-effect chains for incident analysis.
For advanced learners: Analyze sophisticated subtext and what remains unspoken. Study how playwrights rely on dialogue differently than novelists. Compare pacing across genres. Analyze how cultural conventions affect dialogue interpretation.

VOCABULARY:
Dialogue, pacing, propel, incident, subtext, tension, reveal, provoke, scene, summary, momentum, characterization, turning point

CONNECTION TO FUTURE LEARNING:
Understanding dialogue and pacing prepares students for sophisticated literary analysis and dramatic literature. These skills transfer to analyzing film and theater, writing effective narratives, and understanding how stories create emotional effects. Students will develop awareness of craft that applies to all narrative forms.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dialogue and Pacing' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Comparing Traditional and Modern Texts
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Comparing Traditional and Modern Texts' AND grade_level_min = 8),
  'Comparing Traditional and Modern Texts (Grade 8) Topic Guide',
  'Teaching allusions and adaptations of classic works',
  'COMPARING TRADITIONAL AND MODERN TEXTS - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should be familiar with classic stories, myths, and foundational texts. Understanding of literary elements including theme, character, and plot is essential. Experience with comparative analysis is helpful.

LEARNING OBJECTIVES:
- Analyze how a modern work of fiction draws on themes, patterns, or character types from myths, traditional stories, or religious works
- Identify allusions to classic texts and explain their significance
- Evaluate how transformation of source material creates new meaning
- Compare how contemporary authors reimagine traditional elements
- Analyze what adaptations reveal about their cultural moment

KEY CONCEPTS:
1) Modern works often draw on archetypes and patterns from traditional literature
2) Allusions are references to other texts that enrich meaning for informed readers
3) Adaptations interpret source material, revealing both continuity and change
4) Understanding traditional sources deepens comprehension of modern texts
5) How authors transform traditional elements reveals their purposes and perspectives

COMMON MISCONCEPTIONS:
- Thinking allusions are only obvious, direct references
- Believing modern works should be faithful to sources
- Missing archetypal patterns when not explicitly signaled
- Assuming knowledge of source material is unnecessary
- Ignoring how cultural context affects adaptation choices

TEACHING SEQUENCE:
Introduce foundational texts and archetypal patterns that recur across literature. Practice identifying allusions and explaining what they add to meaning. Compare pairs of texts: traditional source and modern adaptation. Analyze what authors keep, change, add, or omit in adaptations. Study how adaptations comment on their source material. Explore how cultural context affects how stories are retold. Write comparative analyses focusing on transformation and significance. Create visual representations of how texts connect across time.

DIFFERENTIATION:
For struggling learners: Provide summaries of traditional sources. Use graphic organizers for side-by-side comparison. Start with obvious connections before subtle allusions. Focus on character and plot parallels before thematic analysis.
For advanced learners: Trace archetypal patterns across multiple texts. Analyze how adaptations reflect cultural anxieties. Study layers of allusion in complex texts. Research how stories evolve across cultures and eras.

VOCABULARY:
Allusion, adaptation, archetype, traditional, modern, transform, reimagine, source, pattern, myth, religious text, reference, significance

CONNECTION TO FUTURE LEARNING:
Intertextual analysis skills prepare students for understanding how literature participates in ongoing cultural conversations. These skills transfer to recognizing allusions across media, understanding cultural commentary, and appreciating how meaning builds across texts. Students will develop sophisticated awareness of literary tradition.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Traditional and Modern Texts' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Dramatic Irony and Suspense
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Dramatic Irony and Suspense' AND grade_level_min = 8),
  'Dramatic Irony and Suspense (Grade 8) Topic Guide',
  'Teaching how authors create tension through perspective',
  'DRAMATIC IRONY AND SUSPENSE - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand point of view and how it affects reader experience. Familiarity with tension and conflict in narrative is helpful. Experience with analyzing authorial choices is expected.

LEARNING OBJECTIVES:
- Analyze the extent to which a filmed or live production stays faithful to or departs from the text
- Analyze how differences between what characters know and what readers know create effects
- Explain how authors create and maintain suspense
- Identify how dramatic irony affects reader engagement and emotional response
- Evaluate how perspective manipulation serves authorial purposes

KEY CONCEPTS:
1) Dramatic irony occurs when readers know something characters do not
2) Suspense is the anxiety or excitement readers feel about uncertain outcomes
3) Authors create suspense through foreshadowing, pacing, and withholding information
4) Dramatic irony can create tension, humor, or tragedy depending on context
5) Reader knowledge versus character knowledge shapes interpretation and emotion

COMMON MISCONCEPTIONS:
- Confusing dramatic irony with verbal irony or sarcasm
- Thinking suspense requires action or danger
- Missing subtle dramatic irony when differences are not obvious
- Assuming dramatic irony is always serious
- Believing tension and resolution must occur quickly

TEACHING SEQUENCE:
Define dramatic irony with clear examples from familiar texts or films. Analyze how knowing what characters do not changes reader experience. Identify techniques authors use to create and sustain suspense. Compare moments of dramatic irony across genres for different effects. Study how pacing and information control create tension. Practice predicting based on dramatic irony and evaluating predictions. Write analyses of how dramatic irony or suspense creates specific effects. Connect techniques to audience response and authorial purpose.

DIFFERENTIATION:
For struggling learners: Use film clips where dramatic irony is visual. Create knowledge charts showing what different characters know. Start with obvious examples before subtle ones. Practice identifying foreshadowing before analyzing its effects.
For advanced learners: Analyze how unreliable narrators complicate irony. Study how authors subvert expectations created by suspense. Compare dramatic irony across tragedy and comedy. Analyze how cultural knowledge affects ironic effects.

VOCABULARY:
Dramatic irony, suspense, tension, foreshadowing, perspective, manipulation, withhold, anticipation, tragedy, comedy, audience, effect

CONNECTION TO FUTURE LEARNING:
Understanding irony and suspense prepares students for sophisticated literary and dramatic analysis. These skills transfer to analyzing how all narratives create audience engagement, including film, television, and interactive media. Students will develop awareness of how authors craft reader experience.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dramatic Irony and Suspense' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Analyzing Film Adaptations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Film Adaptations' AND grade_level_min = 8),
  'Analyzing Film Adaptations (Grade 8) Topic Guide',
  'Comparing written works to film versions',
  'ANALYZING FILM ADAPTATIONS - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have experience with both reading literary texts and viewing films. Understanding of narrative elements in both media is helpful. Familiarity with basic film terminology enhances analysis.

LEARNING OBJECTIVES:
- Analyze the extent to which a filmed production stays faithful to or departs from the text
- Evaluate the choices made by directors or actors
- Explain how techniques unique to each medium shape meaning
- Compare how character, theme, and plot are developed across media
- Analyze what adaptation choices reveal about interpretation

KEY CONCEPTS:
1) Film and text have different affordances: film shows while text can access interiority
2) Adaptation requires interpretation; filmmakers make choices about meaning
3) Changes in adaptation (cuts, additions, alterations) reveal emphasis and interpretation
4) Medium-specific techniques (cinematography, editing, score) create meaning
5) Faithful adaptation is not always the goal; transformation can create new art

COMMON MISCONCEPTIONS:
- Believing films should reproduce texts exactly
- Assuming changes are always losses rather than reinterpretations
- Ignoring how film techniques create meaning text cannot
- Evaluating adaptations only on plot faithfulness
- Missing how cultural context affects adaptation choices

TEACHING SEQUENCE:
Introduce key differences between textual and cinematic storytelling. Compare specific scenes across text and film, noting what is kept, changed, added, or omitted. Analyze how film techniques (camera angles, lighting, music) create meaning. Study how actors interpretations shape character. Discuss why filmmakers make particular adaptation choices. Evaluate adaptations on their own terms, not just faithfulness. Write comparative analyses using both textual and film evidence. Create presentations analyzing adaptation choices and their effects.

DIFFERENTIATION:
For struggling learners: Provide structured comparison templates. Focus on specific scenes rather than entire works. Teach basic film vocabulary with visual examples. Use side-by-side viewing and reading activities.
For advanced learners: Analyze multiple adaptations of the same text. Study how production context affects adaptation. Research filmmakers stated intentions and evaluate their success. Compare adaptation across media (stage, film, television).

VOCABULARY:
Adaptation, interpretation, medium, cinematography, editing, score, soundtrack, mise-en-scene, faithful, transformation, technique, direction

CONNECTION TO FUTURE LEARNING:
Film adaptation analysis develops media literacy and comparative analytical skills. These skills transfer to understanding how stories work across platforms and evaluating interpretive choices. Students will develop sophisticated awareness of how medium shapes message.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Film Adaptations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Multiple Interpretations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Multiple Interpretations' AND grade_level_min = 8),
  'Multiple Interpretations (Grade 8) Topic Guide',
  'Teaching different readings of the same text',
  'MULTIPLE INTERPRETATIONS - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should be able to support interpretations with textual evidence. Understanding that texts can have multiple valid meanings is helpful. Experience with literary analysis and discussion is expected.

LEARNING OBJECTIVES:
- Acknowledge that different readers may have different valid interpretations of a text
- Evaluate multiple interpretations of a story, drama, or poem
- Support interpretations with textual evidence
- Analyze how different interpretations emerge from the same text
- Respect diverse perspectives while maintaining analytical standards

KEY CONCEPTS:
1) Texts can support multiple valid interpretations when each is grounded in evidence
2) Readers bring different backgrounds and perspectives that affect interpretation
3) Not all interpretations are equally valid; they must be supported by the text
4) Discussing multiple interpretations deepens understanding
5) Interpretive disagreement can be productive when approached analytically

COMMON MISCONCEPTIONS:
- Thinking there is only one correct interpretation
- Believing any interpretation is valid regardless of evidence
- Assuming personal response equals analytical interpretation
- Dismissing interpretations different from ones own
- Thinking interpretation is purely subjective with no standards

TEACHING SEQUENCE:
Present multiple interpretations of the same text and analyze evidence for each. Discuss how different readers might emphasize different elements. Practice supporting interpretations with specific textual evidence. Evaluate interpretations: which are well-supported? Which overreach the evidence? Engage in respectful discussion of different interpretive positions. Analyze how context (historical, cultural, personal) affects interpretation. Write essays that acknowledge and address alternative interpretations. Practice the intellectual humility of reconsidering positions based on evidence.

DIFFERENTIATION:
For struggling learners: Start with clearly different but both supported interpretations. Provide evidence charts for each interpretation. Use structured discussion protocols. Focus on one text with strong multiple reading potential.
For advanced learners: Study critical theory and how interpretive frameworks shape reading. Analyze how interpretations change across time periods. Engage with published literary criticism. Develop and defend original interpretations.

VOCABULARY:
Interpretation, evidence, perspective, valid, support, analyze, evaluate, alternative, subjective, objective, analytical, critical reading

CONNECTION TO FUTURE LEARNING:
Multiple interpretation skills prepare students for engaging with complex ideas and diverse perspectives. These skills transfer to literary criticism, philosophical discussion, and productive disagreement in many contexts. Students will develop intellectual flexibility and evidence-based thinking.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiple Interpretations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Theme Across Genres
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Theme Across Genres' AND grade_level_min = 8),
  'Theme Across Genres (Grade 8) Topic Guide',
  'Teaching how themes appear in different text types',
  'THEME ACROSS GENRES - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand theme identification and development. Familiarity with different genres and their conventions is helpful. Experience with comparative analysis is expected.

LEARNING OBJECTIVES:
- Analyze how two or more texts address similar themes or topics
- Compare the approaches of different authors or genres to the same theme
- Explain how genre conventions affect thematic presentation
- Evaluate which treatments of a theme are most effective and why
- Synthesize understanding of a theme across multiple sources

KEY CONCEPTS:
1) Universal themes appear across genres, cultures, and time periods
2) Genre conventions affect how themes are developed and presented
3) Comparing thematic treatment reveals what each approach emphasizes
4) Authors choices about genre affect what they can express about themes
5) Synthesis across texts creates richer understanding than single-text analysis

COMMON MISCONCEPTIONS:
- Thinking the same theme means the same message in all texts
- Assuming genre is merely classification rather than meaningful convention
- Missing how genre affects thematic possibility and emphasis
- Comparing only plot without analyzing thematic treatment
- Believing one genres approach is inherently superior

TEACHING SEQUENCE:
Identify universal themes and analyze their presence across different genres. Compare how fiction, poetry, drama, and nonfiction address similar themes. Analyze how genre conventions enable or constrain thematic expression. Study author choices: why this genre for this theme? Compare treatments of the same theme across historical periods or cultures. Write comparative essays analyzing thematic approach across texts. Create thematic syntheses that integrate insights from multiple sources. Discuss which approaches are most effective for particular themes.

DIFFERENTIATION:
For struggling learners: Focus on clear thematic connections between texts. Use comparison matrices for organizing analysis. Start with two texts before expanding. Provide genre characteristic guides.
For advanced learners: Compare across cultures and historical periods. Analyze how genre conventions evolve. Study how genre experimentation affects theme. Research scholarly approaches to comparative thematic analysis.

VOCABULARY:
Theme, genre, convention, universal, comparative, treatment, approach, synthesis, fiction, nonfiction, poetry, drama, emphasis

CONNECTION TO FUTURE LEARNING:
Theme across genres skills prepare students for sophisticated literary and cultural analysis. These skills transfer to understanding how ideas develop across texts and contexts. Students will develop the ability to synthesize understanding from multiple sources and perspectives.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theme Across Genres' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Unit: Reading Informational Text
-- Topic: Analyzing Text Structure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Analyzing Text Structure' AND grade_level_min = 8),
  'Analyzing Text Structure (Grade 8) Topic Guide',
  'Teaching how paragraphs and sections develop ideas',
  'ANALYZING TEXT STRUCTURE - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should recognize basic organizational patterns. Understanding of paragraph structure and how ideas develop is helpful. Experience with analyzing how structure serves purpose is expected.

LEARNING OBJECTIVES:
- Analyze in detail the structure of a specific paragraph in a text, including how sentences develop and refine a key concept
- Explain how particular sentences or sections contribute to the whole
- Evaluate how structural choices contribute to meaning and style
- Identify how transitions create cohesion between ideas
- Analyze how structure at multiple levels (sentence, paragraph, section) works together

KEY CONCEPTS:
1) Paragraphs have internal structure: topic sentences, development, transitions
2) Sentences within paragraphs serve different functions: introduce, develop, exemplify, transition, conclude
3) Major sections work together to develop the overall argument or explanation
4) Structural choices at every level reflect and support meaning
5) Effective structure creates clarity and emphasis

COMMON MISCONCEPTIONS:
- Thinking structure is merely organizational rather than meaningful
- Missing how sentence-level structure contributes to paragraph meaning
- Ignoring how sections relate to each other
- Assuming all paragraphs follow identical patterns
- Overlooking how structure creates emphasis and rhythm

TEACHING SEQUENCE:
Analyze individual paragraphs sentence by sentence: what does each sentence do? Study how topic sentences establish focus and subsequent sentences develop ideas. Identify sentence functions: claim, evidence, explanation, example, transition. Analyze how paragraphs relate to each other within sections. Map structure at multiple levels: sentence, paragraph, section, whole text. Study how authors use structure to create emphasis and guide readers. Practice structural analysis in writing about how texts work. Apply structural awareness to improving own writing.

DIFFERENTIATION:
For struggling learners: Use color-coding for sentence functions. Provide paragraph structure templates. Focus on clear, well-organized paragraphs first. Create visual maps of text organization.
For advanced learners: Analyze how skilled authors break structural conventions. Study how structure reflects disciplinary writing conventions. Compare structural approaches across genres. Analyze how digital texts structure information differently.

VOCABULARY:
Structure, paragraph, section, sentence function, topic sentence, development, transition, cohesion, emphasis, organization, claim, evidence

CONNECTION TO FUTURE LEARNING:
Detailed structural analysis prepares students for sophisticated reading and writing. These skills transfer to understanding how arguments and explanations are built. Students will develop awareness of craft that applies to their own writing development.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Analyzing Text Structure' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Author's Point of View
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Author''s Point of View' AND grade_level_min = 8),
  'Author''s Point of View (Grade 8) Topic Guide',
  'Identifying and analyzing author perspective',
  'AUTHORS POINT OF VIEW - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand that authors have perspectives that shape their writing. Familiarity with identifying purpose and audience is helpful. Experience with analyzing how choices reveal perspective is expected.

LEARNING OBJECTIVES:
- Determine an authors point of view or purpose in a text
- Analyze how the author acknowledges and responds to conflicting evidence or viewpoints
- Evaluate how effectively an author addresses opposing perspectives
- Identify how rhetorical choices reveal and advance authorial perspective
- Compare how different authors treat the same topic from different perspectives

KEY CONCEPTS:
1) Authors perspective shapes what information is included, emphasized, or omitted
2) How authors address opposing viewpoints reveals their approach and credibility
3) Rhetorical choices (word choice, evidence selection, organization) reveal perspective
4) Acknowledging complexity can strengthen rather than weaken a position
5) Comparing perspectives reveals what each emphasizes and what might be missing

COMMON MISCONCEPTIONS:
- Assuming informational texts are objective and without perspective
- Missing how subtle choices reveal bias or viewpoint
- Thinking authors who acknowledge opposition are uncertain
- Confusing authors point of view with topic or subject
- Believing perspective is only present in explicitly argumentative texts

TEACHING SEQUENCE:
Analyze how authors choices reveal perspective even in seemingly objective texts. Study how authors address conflicting evidence: dismiss, acknowledge, incorporate, refute. Evaluate the effectiveness of different approaches to opposition. Identify rhetorical techniques that advance particular viewpoints. Compare treatments of the same topic by authors with different perspectives. Practice detecting bias through careful attention to word choice and selection. Write analyses that identify and evaluate authorial perspective. Develop critical reading habits for detecting perspective in all texts.

DIFFERENTIATION:
For struggling learners: Start with texts that have obvious perspective. Use comparison activities with same topic, different authors. Create checklists for identifying perspective indicators. Focus on word choice as entry point.
For advanced learners: Analyze subtle and sophisticated perspective management. Study how expertise affects perspective presentation. Examine how institutional positions affect authorial viewpoint. Research perspectives on controversial topics.

VOCABULARY:
Point of view, perspective, bias, acknowledge, conflicting, viewpoint, rhetorical, purpose, emphasis, selection, objectivity, credibility

CONNECTION TO FUTURE LEARNING:
Point of view analysis prepares students for critical reading across contexts. These skills transfer to evaluating sources, understanding bias, and developing balanced perspectives of their own. Students will develop critical literacy essential for informed citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Author''s Point of View' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Evaluating Arguments
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Evaluating Arguments' AND grade_level_min = 8),
  'Evaluating Arguments (Grade 8) Topic Guide',
  'Assessing claims, evidence, and reasoning',
  'EVALUATING ARGUMENTS - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand argument components from Grade 7. Experience with identifying claims, evidence, and reasoning is essential. Familiarity with common fallacies is helpful.

LEARNING OBJECTIVES:
- Delineate and evaluate the argument and specific claims in a text
- Assess whether the reasoning is sound and the evidence is relevant and sufficient
- Recognize when irrelevant evidence is introduced
- Identify logical fallacies and explain how they weaken arguments
- Evaluate arguments from multiple sources on the same issue

KEY CONCEPTS:
1) Sound arguments have logical connections between claims, reasons, and evidence
2) Evidence must be relevant (connected to the claim) and sufficient (enough to support it)
3) Irrelevant evidence, even if true, does not support the specific claim
4) Fallacies are errors in reasoning that make arguments appear stronger than they are
5) Evaluating requires looking at argument structure, not just agreeing or disagreeing with conclusions

COMMON MISCONCEPTIONS:
- Accepting arguments because conclusions match existing beliefs
- Thinking any evidence is good evidence regardless of relevance
- Missing emotional manipulation disguised as reasoning
- Assuming published arguments are well-reasoned
- Believing that if evidence is correct, the argument is sound

TEACHING SEQUENCE:
Review argument structure and evaluation criteria. Practice identifying evidence as relevant, irrelevant, or insufficient. Introduce additional fallacies: straw man, false dichotomy, ad hominem, appeal to emotion. Analyze real-world arguments from news, advertising, and debate. Compare arguments on the same issue to evaluate relative strength. Practice constructing counterarguments to strengthen evaluation skills. Write evaluations that assess specific elements of argument quality. Develop habits of evaluative reading that become automatic.

DIFFERENTIATION:
For struggling learners: Use argument mapping to visualize structure. Create fallacy reference guides with examples. Start with clearly flawed arguments before subtle weaknesses. Practice one evaluation criterion at a time.
For advanced learners: Analyze sophisticated arguments with multiple layers. Identify subtle manipulation techniques. Evaluate arguments in specialized domains. Practice Socratic questioning to probe argument quality.

VOCABULARY:
Argument, claim, evidence, reasoning, evaluate, relevant, sufficient, fallacy, logic, sound, valid, persuade, counterargument, credibility

CONNECTION TO FUTURE LEARNING:
Advanced argument evaluation prepares students for academic discourse and informed citizenship. These skills transfer to research, debate, and critical engagement with media. Students will develop sophisticated analytical abilities for navigating competing claims.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Arguments' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Conflicting Sources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Conflicting Sources' AND grade_level_min = 8),
  'Conflicting Sources (Grade 8) Topic Guide',
  'Analyzing disagreements between sources',
  'CONFLICTING SOURCES - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have experience with research and using multiple sources. Understanding of source evaluation is essential. Familiarity with how perspective affects information presentation is helpful.

LEARNING OBJECTIVES:
- Analyze how two or more texts on the same topic present conflicting information
- Identify where sources agree and disagree
- Evaluate which source is more credible based on evidence and reasoning
- Explain why conflicts exist between sources
- Make informed decisions when sources conflict

KEY CONCEPTS:
1) Different sources may present different facts, interpretations, or conclusions on the same topic
2) Conflict may arise from different evidence, perspectives, or biases
3) Evaluating credibility helps determine which sources to trust
4) Understanding why conflict exists deepens analysis
5) Acknowledging complexity is more honest than forcing artificial agreement

COMMON MISCONCEPTIONS:
- Assuming one source must be wrong when they conflict
- Treating all sources as equally reliable
- Ignoring conflicts by choosing sources that agree
- Thinking conflict always means someone is lying
- Believing there must be a simple resolution to all conflicts

TEACHING SEQUENCE:
Present texts on the same topic with conflicting information or conclusions. Identify specifically where texts agree and where they conflict. Analyze why conflict exists: different evidence? Different interpretation? Different bias? Evaluate source credibility to determine reliability. Practice making informed judgments when perfect resolution is not possible. Discuss how to represent conflicting sources in research. Write analyses that acknowledge and address source conflicts. Develop comfort with complexity and uncertainty.

DIFFERENTIATION:
For struggling learners: Use structured comparison templates. Start with clear conflicts before subtle disagreements. Provide credibility evaluation checklists. Focus on two sources before adding more.
For advanced learners: Analyze complex controversies with multiple positions. Research how experts handle disagreement in fields. Study how scientific consensus develops despite conflict. Analyze media coverage of contested issues.

VOCABULARY:
Conflict, sources, credibility, evaluate, evidence, interpretation, bias, perspective, agreement, disagreement, reliability, complexity

CONNECTION TO FUTURE LEARNING:
Handling conflicting sources is essential for research and informed decision-making. These skills transfer to academic work, professional contexts, and citizenship. Students will develop sophisticated approaches to information evaluation in an age of competing claims.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conflicting Sources' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Primary and Secondary Sources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Primary and Secondary Sources' AND grade_level_min = 8),
  'Primary and Secondary Sources (Grade 8) Topic Guide',
  'Distinguishing and using different source types',
  'PRIMARY AND SECONDARY SOURCES - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have basic research experience using various sources. Understanding of how sources provide different types of information is helpful. Familiarity with evaluating source quality is expected.

LEARNING OBJECTIVES:
- Distinguish between primary and secondary sources
- Evaluate the strengths and limitations of each source type
- Determine which source type is most appropriate for different purposes
- Analyze how secondary sources interpret primary sources
- Use primary and secondary sources together effectively

KEY CONCEPTS:
1) Primary sources are original, firsthand accounts created during the time being studied
2) Secondary sources analyze, interpret, or summarize primary sources
3) Each type has strengths: primary for authenticity, secondary for context and interpretation
4) The same document can be primary or secondary depending on research question
5) Effective research typically uses both types strategically

COMMON MISCONCEPTIONS:
- Thinking primary sources are always more reliable than secondary
- Assuming published sources are always secondary
- Believing primary sources are always old documents
- Missing how the research question affects classification
- Thinking secondary sources are merely summaries

TEACHING SEQUENCE:
Define primary and secondary sources with diverse examples from various fields. Practice classifying sources and explaining the reasoning. Analyze how secondary sources interpret primary sources. Evaluate strengths and limitations of each type for different purposes. Study how research questions affect whether sources are primary or secondary. Practice using primary and secondary sources together in research. Write analyses that distinguish between what sources say and what they interpret. Develop strategic source selection skills for research projects.

DIFFERENTIATION:
For struggling learners: Create visual source classification guides. Use familiar topics for classification practice. Provide clear examples for each type. Start with obvious cases before ambiguous ones.
For advanced learners: Analyze how primary sources are constructed and selected. Study historiography and how interpretations change. Evaluate competing interpretations of the same primary sources. Research using primary sources independently.

VOCABULARY:
Primary source, secondary source, firsthand, interpretation, analysis, original, context, reliability, authentication, evidence

CONNECTION TO FUTURE LEARNING:
Source type understanding is fundamental to research across disciplines. These skills prepare students for academic research, historical thinking, and evaluating information quality. Students will develop sophisticated source use abilities for academic and professional contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Primary and Secondary Sources' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Media Literacy
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Media Literacy' AND grade_level_min = 8),
  'Media Literacy (Grade 8) Topic Guide',
  'Evaluating information in digital media',
  'MEDIA LITERACY - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have experience with various digital media sources. Understanding of authors purpose and perspective is helpful. Familiarity with evaluating credibility of sources is expected.

LEARNING OBJECTIVES:
- Evaluate the credibility of information presented in digital media
- Identify how media messages are constructed for particular effects
- Analyze how algorithms and platforms shape information access
- Recognize manipulation techniques including misinformation and propaganda
- Apply critical evaluation to all media consumption

KEY CONCEPTS:
1) All media messages are constructed with particular choices about what to include and emphasize
2) Media creators have purposes that shape their content
3) Platforms and algorithms affect what information users encounter
4) Misinformation, disinformation, and propaganda have different characteristics
5) Critical media consumption requires active evaluation, not passive reception

COMMON MISCONCEPTIONS:
- Thinking only news is media that requires evaluation
- Believing viral content is verified content
- Assuming platforms are neutral providers of information
- Trusting sources without verification because they appear professional
- Thinking media literacy is about avoiding all media

TEACHING SEQUENCE:
Analyze how media messages are constructed through choices about content, framing, and presentation. Study how platforms and algorithms create filter bubbles and echo chambers. Practice lateral reading: verifying sources by checking what others say about them. Identify manipulation techniques: emotional appeals, false claims, misleading images. Evaluate social media posts, news articles, websites, and video content. Discuss the spread of misinformation and how to stop it. Practice fact-checking using reliable verification tools. Develop habits of critical evaluation that become automatic.

DIFFERENTIATION:
For struggling learners: Focus on clear examples of manipulation first. Provide evaluation checklists for different media types. Practice one verification strategy at a time. Use familiar media for analysis.
For advanced learners: Analyze sophisticated propaganda techniques. Study how media literacy relates to democracy. Research platform accountability and regulation. Examine their own media consumption patterns critically.

VOCABULARY:
Media literacy, credibility, algorithm, platform, misinformation, disinformation, propaganda, filter bubble, echo chamber, verification, fact-checking, manipulation

CONNECTION TO FUTURE LEARNING:
Media literacy is essential for informed citizenship in the digital age. These skills transfer to evaluating all information sources and participating responsibly in digital spaces. Students will develop critical habits that serve them throughout life.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Media Literacy' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Unit: Writing
-- Topic: Advanced Argumentative Writing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Advanced Argumentative Writing' AND grade_level_min = 8),
  'Advanced Argumentative Writing (Grade 8) Topic Guide',
  'Teaching addressing counterarguments and rebuttals',
  'ADVANCED ARGUMENTATIVE WRITING - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have experience with basic argument structure. Understanding of claims, evidence, and reasoning is essential. Familiarity with counterarguments from Grade 7 is expected.

LEARNING OBJECTIVES:
- Write arguments to support claims with clear reasons and relevant evidence
- Acknowledge and distinguish the claims from alternate or opposing claims
- Support claims with logical reasoning and relevant evidence, using accurate, credible sources
- Create cohesion using transitions that clarify relationships among claims, counterclaims, reasons, and evidence
- Establish and maintain formal style and objective tone

KEY CONCEPTS:
1) Strong arguments anticipate and address opposing viewpoints substantively
2) Counterarguments can be acknowledged, conceded, or refuted depending on their strength
3) Logical organization builds from introduction through development to conclusion
4) Formal style and objective tone enhance credibility
5) Transitions clarify relationships between ideas and create coherent flow

COMMON MISCONCEPTIONS:
- Thinking acknowledging counterarguments weakens ones position
- Strawmanning opposing views rather than addressing them fairly
- Using emotional appeals instead of logical reasoning
- Treating all opposing claims the same way
- Believing formal means impersonal or boring

TEACHING SEQUENCE:
Review argument structure and introduce advanced counterargument strategies. Teach how to address counterarguments: acknowledge, concede, or refute. Practice evaluating which approach is most effective for different opposing claims. Model integrating counterarguments smoothly into argument structure. Develop formal style through word choice and sentence construction. Practice transitions that show relationships between positions. Use peer review focused on counterargument handling and logical flow. Revise arguments to strengthen reasoning and address weaknesses.

DIFFERENTIATION:
For struggling learners: Provide templates for counterargument integration. Offer sentence starters for different counterargument strategies. Use graphic organizers showing argument structure with counterarguments. Focus on clear, two-sided arguments before more complex issues.
For advanced learners: Address multiple counterarguments with nuanced responses. Write for real audiences and purposes. Develop sophisticated rhetorical strategies. Engage with complex issues requiring qualification.

VOCABULARY:
Argument, claim, counterclaim, rebuttal, acknowledge, concede, refute, reasoning, evidence, credibility, transition, formal style, objective tone

CONNECTION TO FUTURE LEARNING:
Advanced argumentative skills are essential for academic and professional success. These skills prepare students for college writing, debate, and civic participation. Students will develop sophisticated argumentation abilities for complex real-world issues.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Advanced Argumentative Writing' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Research Papers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Research Papers' AND grade_level_min = 8),
  'Research Papers (Grade 8) Topic Guide',
  'Teaching extended research and synthesis',
  'RESEARCH PAPERS - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have research skills from Grades 6-7. Understanding of paraphrasing, quoting, and citation is essential. Experience with organizing information from multiple sources is expected.

LEARNING OBJECTIVES:
- Conduct short research projects to answer a question including self-generated questions
- Gather relevant information from multiple authoritative print and digital sources
- Assess the credibility and accuracy of sources
- Quote or paraphrase the conclusions of others while avoiding plagiarism
- Draw evidence from texts to support analysis, reflection, and research

KEY CONCEPTS:
1) Research papers synthesize information from multiple sources around a central thesis
2) Good research questions guide inquiry and can be refined as understanding develops
3) Source evaluation determines which information is reliable and relevant
4) Integration means weaving sources together, not summarizing each separately
5) Proper citation respects intellectual property and enables verification

COMMON MISCONCEPTIONS:
- Thinking research means finding sources that confirm existing beliefs
- Stringing together quotes without synthesis or original analysis
- Treating all sources as equally reliable
- Focusing on gathering information without developing original thesis
- Believing citation is only needed for direct quotes

TEACHING SEQUENCE:
Develop focused research questions that can guide extended inquiry. Teach advanced source evaluation and selection strategies. Practice note-taking that organizes information by theme rather than by source. Model thesis development based on research findings. Teach synthesis: how to weave multiple sources together around points. Practice smooth integration of quotes and paraphrases. Introduce formal citation and bibliography formats. Guide students through complete research projects from question to polished paper.

DIFFERENTIATION:
For struggling learners: Provide structured templates for research organization. Break process into clearly defined stages. Offer curated source sets initially. Use checklists for each research phase.
For advanced learners: Conduct more extensive research projects. Use primary sources and specialized databases. Develop original arguments based on synthesis. Navigate scholarly sources and academic databases.

VOCABULARY:
Research, thesis, synthesis, source, citation, bibliography, paraphrase, quote, integrate, evidence, analysis, credibility, plagiarism

CONNECTION TO FUTURE LEARNING:
Research paper skills are fundamental to academic success across disciplines. These skills prepare students for extended inquiry and scholarly writing in high school and college. Students will develop research abilities essential for lifelong learning.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Research Papers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Complex Narratives
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Complex Narratives' AND grade_level_min = 8),
  'Complex Narratives (Grade 8) Topic Guide',
  'Teaching multiple plot lines and character development',
  'COMPLEX NARRATIVES - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have experience with narrative writing from Grades 6-7. Understanding of plot structure and character development is essential. Familiarity with narrative techniques is expected.

LEARNING OBJECTIVES:
- Write narratives to develop real or imagined experiences using effective technique
- Develop complex characters through multiple scenes and interactions
- Manage multiple plot threads that connect meaningfully
- Use pacing strategically to balance different narrative elements
- Create conclusions that resolve complexity while reflecting on experience

KEY CONCEPTS:
1) Complex narratives develop multiple plot threads that eventually connect
2) Character complexity emerges through conflicting desires, growth, and relationships
3) Pacing must balance action, reflection, dialogue, and description
4) Subplots can mirror, contrast with, or complicate main plots
5) Effective conclusions resolve threads while offering insight or reflection

COMMON MISCONCEPTIONS:
- Thinking more plot complexity automatically means better story
- Developing multiple plots without meaningful connection
- Creating characters who are complex only through contradiction
- Losing track of narrative threads
- Ending abruptly without addressing all established threads

TEACHING SEQUENCE:
Study mentor texts with multiple plot threads and complex characters. Plan narratives with main and subplot that connect thematically or causally. Develop characters through multiple scenes showing different facets. Practice pacing: when to focus on action, dialogue, or reflection. Learn techniques for transitioning between plot threads. Balance attention to different elements without losing reader engagement. Write and revise complex narratives with peer feedback on clarity. Craft conclusions that resolve complexity satisfyingly.

DIFFERENTIATION:
For struggling learners: Start with two plot threads before adding complexity. Use planning tools that track multiple elements. Focus on thematic connection between plots. Provide models of effective thread management.
For advanced learners: Experiment with non-linear structure. Develop internal conflicts as complex as external ones. Create narratives with thematic depth. Use unreliable narrators or multiple perspectives.

VOCABULARY:
Narrative, plot, subplot, character, complexity, pacing, thread, arc, development, resolution, technique, reflection, transition

CONNECTION TO FUTURE LEARNING:
Complex narrative skills develop sophisticated storytelling abilities. These skills prepare students for creative writing, personal essays, and understanding narrative across media. Students will develop craft that enables powerful self-expression.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Narratives' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Synthesizing Sources
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Synthesizing Sources' AND grade_level_min = 8),
  'Synthesizing Sources (Grade 8) Topic Guide',
  'Teaching combining information from multiple sources',
  'SYNTHESIZING SOURCES - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have experience integrating information from multiple sources. Understanding of paraphrasing and quoting is essential. Familiarity with organizing ideas thematically is helpful.

LEARNING OBJECTIVES:
- Synthesize information from multiple sources to develop understanding
- Organize information by theme or concept rather than by source
- Identify connections, contradictions, and gaps across sources
- Blend information from multiple sources in coherent paragraphs
- Develop original analysis based on synthesized information

KEY CONCEPTS:
1) Synthesis creates new understanding by combining information from multiple sources
2) Effective synthesis organizes by idea, not by source
3) Sources may complement, extend, contradict, or qualify each other
4) Synthesis requires analysis, not just compilation
5) Original thinking emerges from synthesis of existing information

COMMON MISCONCEPTIONS:
- Thinking synthesis means summarizing each source separately
- Stringing together quotes without connection or analysis
- Ignoring contradictions between sources
- Believing synthesis eliminates need for original thinking
- Organizing by source rather than by idea

TEACHING SEQUENCE:
Distinguish between summary (one source) and synthesis (multiple sources). Practice identifying themes that cut across sources. Model organizing notes by theme rather than by source. Analyze how sources relate: complement, extend, contradict, qualify. Practice blending information from multiple sources in single paragraphs. Develop original claims based on synthesized information. Write paragraphs and essays that synthesize rather than summarize. Revise to strengthen thematic organization and source integration.

DIFFERENTIATION:
For struggling learners: Use graphic organizers for thematic note-taking. Provide synthesis sentence starters. Practice with two sources before adding more. Focus on complementary sources before contradictory ones.
For advanced learners: Synthesize more numerous and complex sources. Navigate contradictions and ambiguity. Develop sophisticated original analysis. Practice synthesis in different genres and disciplines.

VOCABULARY:
Synthesis, integrate, combine, theme, connection, contradiction, complement, extend, qualify, organize, analysis, original

CONNECTION TO FUTURE LEARNING:
Synthesis skills are essential for academic writing across disciplines. These skills prepare students for research papers, literature reviews, and professional analysis. Students will develop abilities to build understanding from multiple information sources.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Synthesizing Sources' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Writing Style
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Writing Style' AND grade_level_min = 8),
  'Writing Style (Grade 8) Topic Guide',
  'Teaching developing voice and sophisticated style',
  'WRITING STYLE - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have experience with various types of writing. Understanding of word choice and sentence variety is essential. Familiarity with adapting writing for audience is expected.

LEARNING OBJECTIVES:
- Develop and maintain a consistent style appropriate to purpose and audience
- Use precise language and domain-specific vocabulary effectively
- Create voice through distinctive word choice and sentence patterns
- Balance clarity with sophistication
- Adapt style for different contexts while maintaining authenticity

KEY CONCEPTS:
1) Style is how something is written, reflecting both craft choices and personality
2) Voice is the distinctive way an individual writer sounds on the page
3) Effective style matches purpose and audience while remaining authentic
4) Precision in language creates clarity and impact
5) Style develops through deliberate practice and reading as a writer

COMMON MISCONCEPTIONS:
- Thinking sophisticated means using complicated or obscure language
- Believing style cannot be developed consciously
- Assuming formal writing must be boring or generic
- Imitating others style rather than developing ones own
- Thinking style matters only in creative writing

TEACHING SEQUENCE:
Analyze how published authors create distinctive styles through specific choices. Identify elements of style: word choice, sentence structure, tone, rhythm. Practice imitation as a learning technique while developing personal voice. Experiment with different styles for different purposes. Balance precision with accessibility. Revise specifically for style improvement. Collect exemplary sentences and study what makes them effective. Develop awareness of personal style tendencies and how to refine them.

DIFFERENTIATION:
For struggling learners: Focus on one style element at a time. Use mentor sentences for imitation. Practice matching style to clear purposes. Build confidence before encouraging experimentation.
For advanced learners: Analyze style in sophisticated literary texts. Develop signature style elements. Study how great writers developed their voices. Experiment with challenging stylistic techniques.

VOCABULARY:
Style, voice, tone, diction, syntax, precision, clarity, sophistication, authentic, formal, informal, register, distinctive

CONNECTION TO FUTURE LEARNING:
Style development enhances all writing for academic and professional contexts. These skills prepare students for crafting effective communication with personal voice. Students will develop distinctive writing abilities that set them apart.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Style' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Peer Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Peer Review' AND grade_level_min = 8),
  'Peer Review (Grade 8) Topic Guide',
  'Teaching giving and receiving constructive feedback',
  'PEER REVIEW - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand the revision process. Experience with receiving and giving feedback is helpful. Familiarity with evaluating writing quality is expected.

LEARNING OBJECTIVES:
- Give specific, constructive feedback that helps writers improve
- Receive feedback openly and use it to strengthen writing
- Prioritize feedback based on impact on writing quality
- Use questioning techniques to help writers develop ideas
- Create a supportive community focused on growth

KEY CONCEPTS:
1) Effective feedback is specific, actionable, and focused on improvement
2) Feedback should address both strengths and areas for development
3) Receivers must evaluate feedback and decide what to use
4) Good questions often help more than direct criticism
5) Peer review creates community and helps writers see their work as readers do

COMMON MISCONCEPTIONS:
- Thinking peer feedback is not as valuable as teacher feedback
- Giving only praise or only criticism
- Being too general to be helpful
- Taking all feedback without evaluation
- Viewing peer review as editing rather than revision

TEACHING SEQUENCE:
Establish classroom norms for respectful, growth-focused feedback. Teach specific feedback techniques: describe, evaluate, suggest. Practice identifying strengths as well as areas for improvement. Model using questions to help writers think rather than prescribing solutions. Practice receiving feedback gracefully and evaluating which to use. Develop routines for peer review at different stages of writing. Reflect on feedback given and received to improve skills. Build trust that enables honest, helpful feedback.

DIFFERENTIATION:
For struggling learners: Provide feedback sentence starters. Focus on one aspect of writing per review. Use structured protocols with clear steps. Practice giving feedback on anonymous samples.
For advanced learners: Give sophisticated feedback on complex writing. Mentor less experienced writers. Develop expertise in identifying subtle issues. Provide feedback on higher-order concerns.

VOCABULARY:
Peer review, feedback, constructive, specific, actionable, revision, evaluate, suggestion, strength, growth, community

CONNECTION TO FUTURE LEARNING:
Peer review skills are valuable in academic and professional contexts. These skills prepare students for collaborative work and giving helpful feedback. Students will develop abilities to help others grow while improving their own work.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Peer Review' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Unit: Language and Grammar
-- Topic: Active and Passive Voice
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Active and Passive Voice' AND grade_level_min = 8),
  'Active and Passive Voice (Grade 8) Topic Guide',
  'Teaching understanding and using voice effectively',
  'ACTIVE AND PASSIVE VOICE - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand sentence structure with subjects and verbs. Familiarity with different sentence types is helpful. Understanding of how sentence choices affect emphasis is expected.

LEARNING OBJECTIVES:
- Form and use verbs in the active and passive voice
- Recognize active and passive voice in reading
- Explain when passive voice is appropriate or preferred
- Use active voice for clarity and directness
- Shift voice purposefully for effect

KEY CONCEPTS:
1) In active voice, the subject performs the action; in passive voice, the subject receives the action
2) Active voice is generally clearer, more direct, and more concise
3) Passive voice is appropriate when the actor is unknown, unimportant, or deliberately obscured
4) Scientific and technical writing often uses passive voice conventionally
5) Shifts between active and passive should be intentional, not accidental

COMMON MISCONCEPTIONS:
- Thinking passive voice is always wrong
- Believing active voice is always better
- Missing passive voice when reading
- Creating awkward passive constructions unnecessarily
- Shifting voice unintentionally within paragraphs

TEACHING SEQUENCE:
Teach identification of active and passive voice through sentence analysis. Practice transforming sentences between voices. Analyze effects of each voice: which is clearer? Which emphasizes different elements? Study when passive voice is appropriate: unknown actors, de-emphasized actors, scientific convention. Practice choosing voice purposefully in writing. Identify and revise unintentional passive or inappropriate voice shifts. Analyze published texts for strategic voice use. Apply voice awareness to revision of own writing.

DIFFERENTIATION:
For struggling learners: Use highlighting to identify subjects and verbs. Create transformation exercises with clear patterns. Focus on recognition before production. Use simple sentences before complex ones.
For advanced learners: Analyze voice choices in published texts. Study disciplinary conventions for voice. Examine how voice affects tone and emphasis. Practice sophisticated voice manipulation.

VOCABULARY:
Active voice, passive voice, subject, verb, agent, action, emphasis, direct, clarity, shift, transformation, convention

CONNECTION TO FUTURE LEARNING:
Voice awareness enhances writing control and style. These skills prepare students for academic writing where conventions vary and for making deliberate choices. Students will develop nuanced understanding of how voice affects meaning and tone.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Active and Passive Voice' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Verbals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Verbals' AND grade_level_min = 8),
  'Verbals (Grade 8) Topic Guide',
  'Teaching gerunds, participles, and infinitives',
  'VERBALS - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand verbs and their functions. Familiarity with nouns, adjectives, and how they function in sentences is helpful. Understanding of sentence structure is expected.

LEARNING OBJECTIVES:
- Identify and use gerunds, participles, and infinitives
- Explain how verbals function as nouns, adjectives, or adverbs
- Use verbals to add variety and sophistication to writing
- Recognize and correct dangling or misplaced modifiers with participles
- Apply verbal phrases to combine sentences effectively

KEY CONCEPTS:
1) Gerunds (verb + -ing) function as nouns: Swimming is fun
2) Participles (verb + -ing or -ed) function as adjectives: The swimming boy, The excited crowd
3) Infinitives (to + verb) function as nouns, adjectives, or adverbs: To swim is fun, A chance to swim
4) Verbal phrases include the verbal and its complements or modifiers
5) Participle phrases require clear connection to the word they modify

COMMON MISCONCEPTIONS:
- Confusing gerunds with present participles because both end in -ing
- Missing how function determines classification
- Creating dangling modifiers with participle phrases
- Thinking verbals are errors rather than useful structures
- Not recognizing infinitives without the word "to"

TEACHING SEQUENCE:
Introduce each verbal type with clear examples and practice identification. Teach the function test: how is this word used in the sentence? Practice creating sentences using each verbal type. Analyze how verbals add sophistication to published writing. Study dangling and misplaced modifiers with participles. Practice sentence combining using verbal phrases. Use verbals to vary sentence structure in revision. Identify and use verbals in reading and writing across contexts.

DIFFERENTIATION:
For struggling learners: Focus on one verbal type at a time extensively. Use color-coding for different verbal types. Create clear function tests for identification. Practice with simple sentences first.
For advanced learners: Analyze sophisticated verbal use in literature. Use verbals for stylistic effect. Study how verbals create sentence rhythm. Practice complex verbal phrases.

VOCABULARY:
Verbal, gerund, participle, infinitive, phrase, function, noun, adjective, adverb, modifier, dangling modifier, misplaced modifier

CONNECTION TO FUTURE LEARNING:
Verbal mastery expands sentence construction options and sophistication. These skills prepare students for advanced grammatical analysis and effective writing. Students will develop control over structures that professional writers use regularly.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Verbals' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Mood and Conditional Sentences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Mood and Conditional Sentences' AND grade_level_min = 8),
  'Mood and Conditional Sentences (Grade 8) Topic Guide',
  'Teaching indicative, imperative, interrogative, and conditional moods',
  'MOOD AND CONDITIONAL SENTENCES - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should understand verb tenses and basic sentence types. Familiarity with commands and questions is helpful. Understanding of how sentence purpose affects structure is expected.

LEARNING OBJECTIVES:
- Recognize and use verbs in the indicative, imperative, interrogative, conditional, and subjunctive moods
- Explain how mood affects meaning and tone
- Form conditional sentences correctly
- Use subjunctive mood in appropriate contexts
- Apply mood awareness to reading and writing

KEY CONCEPTS:
1) Indicative mood states facts or opinions: She runs every day
2) Imperative mood gives commands: Run every day
3) Interrogative mood asks questions: Does she run every day?
4) Conditional mood expresses hypothetical situations: She would run if she had time
5) Subjunctive mood expresses wishes, demands, or hypotheticals contrary to fact: If I were you

COMMON MISCONCEPTIONS:
- Confusing tense with mood
- Using indicative when subjunctive is needed
- Forming conditionals incorrectly (would of instead of would have)
- Missing the subjunctive in common expressions
- Thinking mood only affects individual words rather than meaning

TEACHING SEQUENCE:
Introduce each mood with clear examples and contexts. Practice identifying mood in sentences from various sources. Analyze how mood affects meaning and tone. Focus on conditionals: real versus unreal, present versus past. Study subjunctive mood in wishes, demands, and contrary-to-fact statements. Practice forming conditionals correctly, including past unreal. Identify common errors and practice correction. Apply mood awareness to both reading interpretation and writing craft.

DIFFERENTIATION:
For struggling learners: Focus on indicative, imperative, and interrogative before conditionals. Use visual mood charts. Practice with clear, simple examples. Create mood identification exercises with immediate feedback.
For advanced learners: Analyze subtle mood shifts in literature. Study how mood creates tone and attitude. Explore how other languages handle mood. Practice sophisticated conditional constructions.

VOCABULARY:
Mood, indicative, imperative, interrogative, conditional, subjunctive, hypothetical, contrary to fact, wish, demand, statement, question, command

CONNECTION TO FUTURE LEARNING:
Mood awareness enhances both reading comprehension and writing precision. These skills prepare students for nuanced expression and understanding subtleties in texts. Students will develop control over verb mood for various purposes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mood and Conditional Sentences' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Advanced Punctuation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Advanced Punctuation' AND grade_level_min = 8),
  'Advanced Punctuation (Grade 8) Topic Guide',
  'Teaching ellipsis, dash, and other advanced punctuation',
  'ADVANCED PUNCTUATION - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should use basic punctuation correctly. Understanding of sentence structure and clause relationships is helpful. Familiarity with commas, semicolons, and dashes from Grade 7 is expected.

LEARNING OBJECTIVES:
- Use punctuation (ellipsis, dash) to indicate a pause or break
- Apply punctuation for emphasis and stylistic effect
- Use punctuation correctly when integrating quotations
- Recognize how punctuation affects meaning and tone
- Make sophisticated punctuation choices in writing

KEY CONCEPTS:
1) Ellipsis (...) indicates omission or trailing thought
2) Em dash (—) creates emphasis, interruption, or sets off explanatory material
3) Punctuation with quotations follows specific conventions for clarity
4) Punctuation choices affect rhythm, emphasis, and tone
5) Advanced punctuation creates stylistic effects beyond basic correctness

COMMON MISCONCEPTIONS:
- Using ellipsis to indicate any pause
- Overusing dashes until they lose impact
- Confusing em dash and en dash functions
- Placing punctuation incorrectly with quotation marks
- Using punctuation for decoration rather than meaning

TEACHING SEQUENCE:
Introduce ellipsis for omission and for trailing thought. Teach em dash uses: emphasis, interruption, parenthetical information. Review conventions for punctuation with quotations. Analyze how published authors use advanced punctuation for effect. Practice making punctuation choices that create intended effects. Compare the same content with different punctuation to see effects. Study how punctuation creates rhythm and pace in prose. Apply advanced punctuation purposefully in original writing.

DIFFERENTIATION:
For struggling learners: Focus on one punctuation mark at a time. Use mentor sentences showing correct usage. Practice identification before production. Create punctuation choice exercises with clear contexts.
For advanced learners: Analyze unconventional punctuation in experimental writing. Study how punctuation styles evolve. Develop personal punctuation style. Analyze punctuation in poetry for effect.

VOCABULARY:
Ellipsis, em dash, en dash, emphasis, omission, interruption, pause, quotation, integration, style, convention, effect

CONNECTION TO FUTURE LEARNING:
Advanced punctuation skills enhance writing sophistication and control. These skills prepare students for academic writing with integrated sources and for stylistic expression. Students will develop nuanced punctuation use for various effects.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Advanced Punctuation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Word Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Word Relationships' AND grade_level_min = 8),
  'Word Relationships (Grade 8) Topic Guide',
  'Teaching analogies, connotations, and denotations',
  'WORD RELATIONSHIPS - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have vocabulary development experience from earlier grades. Understanding of context clues and word parts is helpful. Familiarity with synonyms and antonyms is expected.

LEARNING OBJECTIVES:
- Analyze word relationships to better understand each word
- Distinguish between connotation and denotation
- Interpret analogies and use them to understand relationships
- Evaluate word choice based on connotative meanings
- Use understanding of word relationships to expand vocabulary

KEY CONCEPTS:
1) Denotation is a words dictionary definition; connotation is its emotional and cultural associations
2) Synonyms have similar denotations but different connotations
3) Analogies show relationships between pairs of words or concepts
4) Word relationships reveal nuances that affect meaning and impact
5) Understanding relationships helps with both vocabulary and word choice

COMMON MISCONCEPTIONS:
- Treating synonyms as identical and interchangeable
- Missing connotative meanings that affect interpretation
- Solving analogies without understanding the relationship
- Ignoring how connotation affects tone
- Thinking denotation is the complete meaning

TEACHING SEQUENCE:
Distinguish between denotation and connotation with contrasting word pairs. Analyze how connotation affects meaning in context. Introduce analogy structure and common relationship types. Practice identifying relationships in analogies. Study how word choice based on connotation affects tone and impact. Compare synonyms to analyze connotative differences. Use word relationship understanding in vocabulary development. Apply connotation awareness to writing and word choice decisions.

DIFFERENTIATION:
For struggling learners: Use visual representations of connotation (word scales). Practice with clear connotative contrasts. Focus on common analogy types. Create connotation word banks.
For advanced learners: Analyze how connotations change over time. Study cultural differences in connotation. Create sophisticated analogies. Analyze how authors manipulate connotation.

VOCABULARY:
Denotation, connotation, analogy, synonym, antonym, nuance, relationship, association, emotional, cultural, word choice

CONNECTION TO FUTURE LEARNING:
Word relationship understanding enhances vocabulary and communication. These skills prepare students for standardized tests, precise writing, and nuanced reading. Students will develop sophisticated awareness of how word choice affects meaning.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Word Relationships' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- Topic: Domain-Specific Vocabulary
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Domain-Specific Vocabulary' AND grade_level_min = 8),
  'Domain-Specific Vocabulary (Grade 8) Topic Guide',
  'Teaching academic and technical vocabulary',
  'DOMAIN-SPECIFIC VOCABULARY - TOPIC TEACHING GUIDE (GRADE 8)

PREREQUISITES:
Students should have vocabulary learning strategies from earlier grades. Understanding of context clues and word parts is helpful. Familiarity with academic language is expected.

LEARNING OBJECTIVES:
- Acquire and use accurately domain-specific words and phrases
- Distinguish between general academic vocabulary and subject-specific terminology
- Apply vocabulary strategies to technical texts
- Use domain-specific vocabulary appropriately in writing and speaking
- Build vocabulary systems for ongoing learning across subjects

KEY CONCEPTS:
1) Domain-specific vocabulary is technical language particular to specific fields
2) General academic vocabulary appears across disciplines in scholarly contexts
3) Context, roots, and reference materials help with unfamiliar technical terms
4) Using domain-specific vocabulary signals expertise and precision
5) Vocabulary learning is ongoing and requires systematic approaches

COMMON MISCONCEPTIONS:
- Thinking domain-specific words can be understood from context alone
- Using technical terms incorrectly to appear sophisticated
- Avoiding domain-specific vocabulary rather than learning it
- Assuming vocabulary in one domain transfers to another
- Believing vocabulary learning ends after school

TEACHING SEQUENCE:
Distinguish between academic and domain-specific vocabulary with examples. Practice using multiple strategies for learning technical vocabulary. Study how domain-specific vocabulary creates precision in different fields. Build vocabulary systems: notebooks, digital tools, spaced practice. Practice using new vocabulary in speaking and writing appropriately. Analyze how experts use technical vocabulary effectively. Connect vocabulary learning to reading comprehension across subjects. Develop habits for lifelong vocabulary development.

DIFFERENTIATION:
For struggling learners: Provide vocabulary notebooks with structure. Use visual vocabulary cards. Focus on high-frequency domain-specific terms. Create personal dictionaries by subject.
For advanced learners: Study how technical vocabularies develop. Analyze how vocabulary reflects disciplinary thinking. Build sophisticated vocabulary in areas of interest. Research etymology of domain-specific terms.

VOCABULARY:
Domain-specific, academic vocabulary, technical, terminology, precision, discipline, context, reference, acquisition, register

CONNECTION TO FUTURE LEARNING:
Domain-specific vocabulary is essential for academic and professional success. These skills prepare students for advanced coursework and specialized fields. Students will develop vocabulary learning abilities that serve them throughout careers.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Domain-Specific Vocabulary' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 8 READING TOPIC PROMPTS
-- Total: 24 comprehensive topic teaching guides
-- ============================================================================
