-- ============================================================================
-- GRADE 11 READING TOPIC PROMPTS
-- Comprehensive teaching guides for all Grade 11 Reading/ELA topics (American Literature)
-- ============================================================================

-- Unit: Colonial and Revolutionary Literature
-- Topic: Puritan Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Puritan Literature' AND grade_level_min = 11),
  'Puritan Literature (Grade 11) Topic Guide',
  'Teaching analysis of sermons, diaries, and religious writings',
  'PURITAN LITERATURE - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary analysis and historical context. Understanding of how beliefs shape literature is essential. Familiarity with colonial American history provides valuable background.

LEARNING OBJECTIVES:
- Analyze Puritan literary conventions and their religious foundations
- Explain how Puritan beliefs shaped literary forms and themes
- Interpret allegory and typology in Puritan texts
- Connect Puritan literature to broader American literary traditions
- Evaluate the influence of Puritan thought on American identity

KEY CONCEPTS:
1) Puritan literature reflects theological beliefs about sin, salvation, and divine providence
2) Common forms include sermons, spiritual autobiographies, diaries, and poetry
3) Typology reads events as foreshadowing or fulfilling Biblical patterns
4) Plain style valued clarity over ornament, reflecting Puritan values
5) Puritan ideas continue to influence American culture and literature

COMMON MISCONCEPTIONS:
- Viewing Puritans as one-dimensionally repressive
- Missing the literary sophistication in Puritan plain style
- Ignoring the diversity of views within Puritan communities
- Assuming religious literature lacks artistic merit
- Separating Puritan literature from its theological context

TEACHING SEQUENCE:
Provide historical and theological context for Puritan New England. Introduce major Puritan writers: Bradford, Winthrop, Bradstreet, Taylor, Edwards. Analyze sermon structure and rhetorical techniques. Study how typology functions in Puritan reading and writing. Examine Puritan poetry: personal devotion and public concerns. Trace Puritan influences on later American literature. Connect Puritan themes to American identity formation. Write analyses connecting form, content, and belief.

DIFFERENTIATION:
For struggling learners: Provide historical context summaries. Use modernized versions alongside originals. Focus on accessible texts before challenging ones. Create belief-to-literature connection guides.
For advanced learners: Read original texts without modernization. Research Puritan theology in depth. Analyze Puritan influence on later authors. Compare Puritan writings across communities.

VOCABULARY:
Puritan, plain style, typology, allegory, providence, predestination, covenant, sermon, spiritual autobiography, jeremiad, election

CONNECTION TO FUTURE LEARNING:
Understanding Puritan literature illuminates American literary traditions and cultural values. These skills prepare students for tracing literary influences across periods. Students will develop appreciation for how beliefs shape artistic expression.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Puritan Literature' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Revolutionary Writers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Revolutionary Writers' AND grade_level_min = 11),
  'Revolutionary Writers (Grade 11) Topic Guide',
  'Teaching analysis of Franklin, Paine, Jefferson and founding documents',
  'REVOLUTIONARY WRITERS - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with rhetorical analysis. Understanding of American Revolution history is essential. Familiarity with Enlightenment ideas provides valuable context.

LEARNING OBJECTIVES:
- Analyze the rhetorical strategies of Revolutionary-era writers
- Explain how Enlightenment ideas shaped American founding documents
- Interpret the political philosophy embedded in founding texts
- Evaluate the effectiveness of Revolutionary rhetoric
- Connect Revolutionary ideals to ongoing American debates

KEY CONCEPTS:
1) Revolutionary writers adapted Enlightenment philosophy to American context
2) Key figures include Franklin, Paine, Jefferson, Adams, and Hamilton
3) Revolutionary rhetoric balanced reason and emotion for persuasive effect
4) Founding documents articulate principles that continue to shape American identity
5) Tensions in founding ideas (liberty/slavery) remain relevant

COMMON MISCONCEPTIONS:
- Treating founders as unanimous in their views
- Reading founding documents without historical context
- Missing rhetorical sophistication in seemingly simple prose
- Assuming founding ideals were fully realized at founding
- Ignoring voices excluded from founding discourse

TEACHING SEQUENCE:
Introduce Enlightenment context: natural rights, social contract, reason. Study Benjamin Franklin as representative American voice. Analyze Thomas Paines persuasive techniques in Common Sense. Examine Jefferson and the Declaration of Independence. Study The Federalist Papers and Constitutional debates. Analyze how Revolutionary rhetoric shaped public opinion. Connect founding debates to contemporary issues. Write rhetorical analyses of Revolutionary texts.

DIFFERENTIATION:
For struggling learners: Provide historical and philosophical context summaries. Focus on accessible excerpts. Use annotation guides for challenging vocabulary. Create rhetorical technique reference sheets.
For advanced learners: Analyze lesser-known Revolutionary writers. Study philosophical sources of founding ideas. Examine debates and contradictions among founders. Research reception and interpretation of founding documents.

VOCABULARY:
Revolutionary, Enlightenment, natural rights, social contract, republic, liberty, tyranny, self-evident, inalienable, consent, rhetoric

CONNECTION TO FUTURE LEARNING:
Revolutionary literature analysis develops civic understanding and rhetorical awareness. These skills prepare students for advanced American studies and political analysis. Students will develop ability to engage with foundational American ideas.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Revolutionary Writers' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Persuasive Techniques
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Persuasive Techniques' AND grade_level_min = 11),
  'Persuasive Techniques (Grade 11) Topic Guide',
  'Teaching rhetoric in founding documents',
  'PERSUASIVE TECHNIQUES - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with rhetorical analysis including ethos, pathos, logos. Understanding of argument structure is essential. Familiarity with Revolutionary-era texts provides context.

LEARNING OBJECTIVES:
- Analyze sophisticated persuasive techniques in foundational documents
- Explain how rhetorical choices serve political purposes
- Evaluate the effectiveness of specific persuasive strategies
- Apply rhetorical analysis to historical and contemporary texts
- Use effective persuasive techniques in original writing

KEY CONCEPTS:
1) Founding documents use sophisticated rhetoric for political persuasion
2) Rhetorical choices reflect audience, purpose, and occasion
3) Persuasive techniques include appeals, structure, diction, and figurative language
4) Historical rhetoric can be analyzed for both technique and ideology
5) Understanding persuasion develops critical consumption and production skills

COMMON MISCONCEPTIONS:
- Treating founding documents as purely logical arguments
- Missing emotional and ethical appeals in political rhetoric
- Assuming effectiveness means ethical use of rhetoric
- Ignoring how rhetoric can serve problematic purposes
- Separating rhetorical analysis from historical context

TEACHING SEQUENCE:
Review rhetorical appeals with examples from founding documents. Analyze how structure creates persuasive effect. Study diction choices and their persuasive impact. Examine figurative language in political rhetoric. Evaluate how rhetorical strategies addressed specific audiences. Analyze how rhetoric shaped public opinion and action. Connect historical techniques to contemporary political discourse. Write rhetorical analyses and apply techniques in original persuasion.

DIFFERENTIATION:
For struggling learners: Use graphic organizers for identifying techniques. Focus on clear examples before subtle ones. Create technique reference guides. Practice analysis with accessible texts.
For advanced learners: Analyze sophisticated rhetorical strategies. Study classical rhetoric and its influence. Evaluate ethics of persuasive techniques. Analyze propaganda and manipulation.

VOCABULARY:
Rhetoric, persuasion, ethos, pathos, logos, appeal, diction, syntax, figurative language, parallelism, antithesis, rhetorical question

CONNECTION TO FUTURE LEARNING:
Persuasive technique analysis is essential for civic literacy and critical thinking. These skills prepare students for analyzing political discourse throughout life. Students will develop both analytical and productive rhetorical abilities.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Persuasive Techniques' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Unit: American Romanticism and Transcendentalism
-- Topic: Transcendentalism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Transcendentalism' AND grade_level_min = 11),
  'Transcendentalism (Grade 11) Topic Guide',
  'Teaching Emerson, Thoreau, and self-reliance philosophy',
  'TRANSCENDENTALISM - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with philosophical and literary texts. Understanding of American historical context in the mid-1800s is helpful. Familiarity with Romantic ideals provides background.

LEARNING OBJECTIVES:
- Analyze key Transcendentalist texts and their philosophical foundations
- Explain Transcendentalist beliefs about nature, individualism, and intuition
- Interpret how Transcendentalist ideas responded to their historical moment
- Evaluate the ongoing influence of Transcendentalist thought
- Connect Transcendentalist themes to contemporary issues

KEY CONCEPTS:
1) Transcendentalism emphasized intuition, nature, and individual spiritual experience
2) Key figures include Emerson, Thoreau, Fuller, and Alcott
3) Transcendentalism developed in reaction to rationalism and industrialization
4) Self-reliance and nonconformity were central values
5) Transcendentalist ideas influenced reform movements and American identity

COMMON MISCONCEPTIONS:
- Oversimplifying Transcendentalism as simply nature appreciation
- Missing the social critique embedded in Transcendentalist thought
- Ignoring diversity within the Transcendentalist movement
- Treating Transcendentalism as purely abstract philosophy
- Missing connections to abolition and reform movements

TEACHING SEQUENCE:
Introduce Transcendentalism in historical context: industrial change, religious questioning. Study Emersons essays, particularly "Self-Reliance" and "Nature." Analyze Thoreaus Walden and "Civil Disobedience." Examine how Transcendentalists put philosophy into practice. Study Margaret Fuller and womens voices in the movement. Trace Transcendentalist influence on American thought and reform. Connect Transcendentalist themes to contemporary discussions. Write analyses engaging with Transcendentalist ideas.

DIFFERENTIATION:
For struggling learners: Provide philosophical concept summaries. Use excerpts before full essays. Create vocabulary guides for abstract terms. Focus on accessible, concrete passages.
For advanced learners: Read extended primary texts. Study philosophical sources (German Idealism, Eastern religion). Analyze tensions within Transcendentalism. Research lesser-known Transcendentalist figures.

VOCABULARY:
Transcendentalism, intuition, self-reliance, nonconformity, oversoul, nature, individualism, reform, civil disobedience, idealism

CONNECTION TO FUTURE LEARNING:
Transcendentalism understanding illuminates American intellectual and literary history. These skills prepare students for philosophical and literary analysis. Students will develop ability to engage with complex ideas and their continuing relevance.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transcendentalism' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: American Gothic
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'American Gothic' AND grade_level_min = 11),
  'American Gothic (Grade 11) Topic Guide',
  'Teaching Poe and dark romanticism',
  'AMERICAN GOTHIC - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of Romantic movement provides context. Familiarity with genre conventions is helpful.

LEARNING OBJECTIVES:
- Analyze Gothic literary conventions and their psychological dimensions
- Explain how American Gothic differs from European traditions
- Interpret Poes theories of short fiction and poetry
- Analyze how Gothic literature explores dark aspects of human nature
- Connect Gothic themes to psychological and cultural concerns

KEY CONCEPTS:
1) American Gothic explores darkness, death, guilt, and psychological complexity
2) Edgar Allan Poe developed theories of effect in short fiction and poetry
3) Gothic conventions include atmosphere, setting, psychological terror, and the uncanny
4) American Gothic often lacks the castles and aristocracy of European Gothic
5) Dark Romanticism countered Transcendentalist optimism about human nature

COMMON MISCONCEPTIONS:
- Reducing Gothic to horror and scary stories
- Missing the psychological sophistication of Gothic works
- Ignoring Poes craftsmanship and literary theory
- Treating Gothic as merely entertainment
- Missing social and cultural critique in Gothic literature

TEACHING SEQUENCE:
Introduce Gothic conventions and their European origins. Study how American Gothic adapted and transformed conventions. Analyze Poes theories of short story effect and poetic composition. Read and analyze representative Poe tales and poems. Examine other Dark Romantic writers: Hawthorne, Melville. Study how Gothic explores psychological depths. Connect Gothic themes to cultural anxieties. Write analyses of Gothic technique and meaning.

DIFFERENTIATION:
For struggling learners: Use graphic organizers for Gothic conventions. Focus on accessible, engaging texts. Create atmosphere and technique guides. Practice close reading of key passages.
For advanced learners: Study Poes critical essays on composition. Analyze Gothic in relation to psychology and philosophy. Compare American and European Gothic traditions. Research Gothic influence on later literature.

VOCABULARY:
Gothic, Dark Romanticism, atmosphere, terror, horror, uncanny, psychological, effect, unity, setting, symbolism, macabre

CONNECTION TO FUTURE LEARNING:
Gothic literature analysis develops understanding of genre and psychological depth. These skills prepare students for analyzing horror, thriller, and psychological fiction. Students will develop appreciation for how darkness illuminates human nature.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'American Gothic' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Walt Whitman
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Walt Whitman' AND grade_level_min = 11),
  'Walt Whitman (Grade 11) Topic Guide',
  'Teaching free verse and the American voice',
  'WALT WHITMAN - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with poetry analysis. Understanding of Transcendentalism provides context. Familiarity with poetic form and its variations is helpful.

LEARNING OBJECTIVES:
- Analyze Whitmans free verse innovations and their effects
- Interpret Whitmans vision of democracy, self, and America
- Explain how Whitmans poetry creates its distinctive voice
- Connect Whitmans themes to American identity and ideals
- Evaluate Whitmans influence on American poetry

KEY CONCEPTS:
1) Whitman pioneered free verse that broke from traditional poetic forms
2) Leaves of Grass presents a vision of democratic selfhood and unity
3) Whitmans long lines, catalogs, and direct address create distinctive voice
4) Whitman celebrated the body, nature, and common people
5) Whitmans influence shaped the course of American poetry

COMMON MISCONCEPTIONS:
- Thinking free verse means no structure or craft
- Missing the careful crafting in Whitmans apparent spontaneity
- Reducing Whitman to simple optimism or nationalism
- Ignoring the complexity and contradictions in Whitmans vision
- Missing how Whitman continuously revised his work

TEACHING SEQUENCE:
Introduce Whitman in historical and literary context. Study Whitmans innovations: free verse, catalogs, long lines. Analyze how form serves meaning in representative poems. Examine Whitmans democratic vision and celebration of America. Study the speaker and voice in Whitmans poetry. Analyze how Whitman treats nature, body, and death. Connect Whitmans themes to American identity. Write analyses of Whitmans technique and meaning.

DIFFERENTIATION:
For struggling learners: Focus on accessible, shorter poems first. Provide free verse analysis guides. Use audio recordings for Whitmans rhythms. Create vocabulary and allusion guides.
For advanced learners: Study Leaves of Grass across its editions. Analyze Whitmans influence on later poets. Research Whitmans prose writings. Compare Whitman to international responses.

VOCABULARY:
Free verse, catalog, democracy, self, multitude, cosmos, celebration, body, soul, nature, voice, America

CONNECTION TO FUTURE LEARNING:
Whitman study illuminates American poetry and democratic ideals. These skills prepare students for modern and contemporary poetry. Students will develop appreciation for poetic innovation and American literary identity.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Walt Whitman' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Emily Dickinson
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Emily Dickinson' AND grade_level_min = 11),
  'Emily Dickinson (Grade 11) Topic Guide',
  'Teaching innovation in form and theme',
  'EMILY DICKINSON - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with poetry analysis. Understanding of poetic conventions helps appreciate Dickinsons innovations. Familiarity with 19th century context is helpful.

LEARNING OBJECTIVES:
- Analyze Dickinsons innovative use of form, punctuation, and syntax
- Interpret Dickinsons treatment of death, nature, faith, and consciousness
- Explain how Dickinsons compression creates ambiguity and meaning
- Connect Dickinsons work to American literary traditions
- Evaluate Dickinsons distinctive voice and its influence

KEY CONCEPTS:
1) Dickinson adapted hymn meter with striking variations and slant rhyme
2) Her dashes create pause, emphasis, and ambiguity
3) Dickinsons compression packs complex meaning into short poems
4) Major themes include death, immortality, nature, consciousness, and faith
5) Dickinsons publication history affects how we read her work

COMMON MISCONCEPTIONS:
- Reducing Dickinson to a reclusive, simple poet
- Missing the intellectual rigor and complexity in her work
- Ignoring her unconventional punctuation and its effects
- Reading her poems as autobiographical confession
- Underestimating her engagement with intellectual currents

TEACHING SEQUENCE:
Introduce Dickinson in biographical and historical context. Study her formal innovations: meter, rhyme, punctuation, syntax. Analyze how compression creates ambiguity and multiple meanings. Examine major themes across representative poems. Study how Dickinson uses common hymn patterns unexpectedly. Analyze her treatment of death, nature, and consciousness. Connect Dickinsons innovations to later poetry. Write analyses engaging with specific poems in depth.

DIFFERENTIATION:
For struggling learners: Use annotation guides for Dickinsons techniques. Focus on accessible poems before challenging ones. Provide context for unfamiliar vocabulary and references. Practice close reading of individual poems.
For advanced learners: Study Dickinsons manuscripts and publication history. Analyze her engagement with scientific and philosophical thought. Compare different editorial approaches to her work. Research her influence on modern poetry.

VOCABULARY:
Slant rhyme, compression, ambiguity, dash, hymn meter, consciousness, circumference, death, immortality, nature, syntax

CONNECTION TO FUTURE LEARNING:
Dickinson study develops close reading skills essential for poetry. These skills prepare students for modern and contemporary poetry analysis. Students will develop appreciation for concision and multiple meanings in poetry.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Emily Dickinson' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Unit: Realism to Modernism
-- Topic: Realism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Realism' AND grade_level_min = 11),
  'Realism (Grade 11) Topic Guide',
  'Teaching Twain, James, and regional writers',
  'REALISM - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of post-Civil War American history provides context. Familiarity with Romanticism helps contrast with Realism.

LEARNING OBJECTIVES:
- Analyze the characteristics of literary Realism and Naturalism
- Explain how Realism responded to its historical moment
- Interpret regional voices and their significance
- Compare approaches of major Realist writers
- Connect Realist themes to ongoing American concerns

KEY CONCEPTS:
1) Realism sought to portray ordinary life truthfully without idealization
2) Key figures include Twain, Howells, James, and regional writers
3) Naturalism added determinism and focus on harsh social conditions
4) Regional writers captured distinctive American voices and settings
5) Realism engaged with industrialization, class, race, and gender

COMMON MISCONCEPTIONS:
- Thinking Realism is simply unartistic documentation
- Missing the sophisticated craft in Realist prose
- Conflating Realism and Naturalism without distinction
- Treating regional writing as quaint rather than serious literature
- Ignoring how Realism was a movement with debates and variations

TEACHING SEQUENCE:
Introduce Realism in historical context: post-Civil War, industrialization, urbanization. Study Mark Twain as representative American voice. Analyze Henry Jamess psychological realism. Examine regional writers and local color traditions. Introduce Naturalism as an extension of Realist principles. Analyze how Realist writers addressed social issues. Connect Realist themes to American identity and concerns. Write analyses of Realist technique and themes.

DIFFERENTIATION:
For struggling learners: Provide historical context summaries. Focus on accessible, engaging texts. Use comparison charts for movements. Create character and setting guides.
For advanced learners: Read extended Realist novels. Study debates within Realism. Analyze international Realist traditions. Research Realisms ongoing influence.

VOCABULARY:
Realism, Naturalism, verisimilitude, local color, regionalism, dialect, social class, determinism, psychological realism

CONNECTION TO FUTURE LEARNING:
Realism study illuminates American literary development and cultural concerns. These skills prepare students for understanding modern fiction. Students will develop appreciation for how literature engages with social reality.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Realism' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: The Harlem Renaissance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'The Harlem Renaissance' AND grade_level_min = 11),
  'The Harlem Renaissance (Grade 11) Topic Guide',
  'Teaching Hughes, Hurston, and African American voices',
  'THE HARLEM RENAISSANCE - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of African American history and the Great Migration provides essential context. Familiarity with poetic and narrative forms is helpful.

LEARNING OBJECTIVES:
- Analyze the artistic achievements of Harlem Renaissance writers
- Explain how the movement celebrated African American identity and culture
- Interpret how writers addressed racism, identity, and cultural heritage
- Connect Harlem Renaissance themes to broader American literature
- Evaluate the movements ongoing influence

KEY CONCEPTS:
1) The Harlem Renaissance celebrated African American culture and identity
2) Key figures include Hughes, Hurston, Cullen, McKay, and many others
3) The movement incorporated African American vernacular, jazz, and blues
4) Writers negotiated complex questions of identity, heritage, and American belonging
5) The Harlem Renaissance influenced later African American literature

COMMON MISCONCEPTIONS:
- Treating the Harlem Renaissance as a monolithic movement
- Missing the debates and diversity within the movement
- Ignoring womens contributions to the Renaissance
- Reducing the movement to Harlem alone
- Failing to connect the movement to its political and social context

TEACHING SEQUENCE:
Introduce the Great Migration and cultural context of the 1920s. Study Langston Hughes: poetry, essays, and artistic vision. Analyze Zora Neale Hurstons fiction and anthropological work. Examine other Renaissance voices: Cullen, McKay, Larsen. Study how writers incorporated folk culture, jazz, and blues. Analyze how Renaissance writers addressed double consciousness and identity. Connect Renaissance themes to earlier and later African American literature. Write analyses engaging with Renaissance texts and contexts.

DIFFERENTIATION:
For struggling learners: Provide historical context and timeline. Focus on accessible, engaging texts. Create vocabulary guides for vernacular and references. Use audio for jazz poetry.
For advanced learners: Study debates within the Renaissance (Hughes vs. Schuyler). Analyze international connections. Research lesser-known Renaissance figures. Examine visual arts alongside literature.

VOCABULARY:
Harlem Renaissance, New Negro, double consciousness, jazz, blues, vernacular, identity, heritage, Great Migration, folk culture

CONNECTION TO FUTURE LEARNING:
Harlem Renaissance study is essential for understanding American literary and cultural history. These skills prepare students for African American literature and cultural studies. Students will develop appreciation for diverse American voices and ongoing struggles for equality.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Harlem Renaissance' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Modernism (American Literature)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Modernism' AND grade_level_min = 11),
  'Modernism (Grade 11) Topic Guide',
  'Teaching Fitzgerald, Hemingway, and the Lost Generation',
  'MODERNISM - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of World War I and the 1920s provides essential context. Familiarity with literary movements helps appreciate Modernist innovations.

LEARNING OBJECTIVES:
- Analyze Modernist literary techniques and their effects
- Explain how Modernism responded to World War I and modernity
- Interpret the Lost Generation and American expatriate experience
- Compare approaches of major American Modernists
- Connect Modernist themes to 20th century American identity

KEY CONCEPTS:
1) Modernism experimented with form, perspective, and representation
2) Key American figures include Fitzgerald, Hemingway, Faulkner, and others
3) The Lost Generation reflected post-WWI disillusionment
4) Modernist techniques include fragmentation, stream of consciousness, and minimalism
5) American Modernism engaged with American identity and the American Dream

COMMON MISCONCEPTIONS:
- Reducing Modernism to a single style or approach
- Missing the diversity within American Modernism
- Treating Modernist difficulty as pretension
- Ignoring how Modernism responded to historical trauma
- Separating American Modernism from international movements

TEACHING SEQUENCE:
Introduce Modernism in historical context: WWI, technology, social change. Study F. Scott Fitzgerald and The Great Gatsby. Analyze Hemingways minimalist style and iceberg theory. Examine Faulkners experimental techniques. Study the Lost Generation and expatriate experience. Analyze how Modernists portrayed the American Dream. Connect American Modernism to international movements. Write analyses of Modernist technique and meaning.

DIFFERENTIATION:
For struggling learners: Provide historical context summaries. Focus on accessible texts before experimental ones. Use technique guides for challenging passages. Create character and theme charts.
For advanced learners: Read challenging Modernist works (Faulkner, Stein). Study Modernist critical theory. Analyze international Modernist connections. Research Modernisms ongoing influence.

VOCABULARY:
Modernism, Lost Generation, disillusionment, fragmentation, stream of consciousness, minimalism, iceberg theory, American Dream, expatriate

CONNECTION TO FUTURE LEARNING:
Modernism study is essential for understanding 20th century literature. These skills prepare students for contemporary and postmodern literature. Students will develop appreciation for experimental technique and its purposes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Modernism' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Unit: Contemporary American Literature
-- Topic: Postwar Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Postwar Literature' AND grade_level_min = 11),
  'Postwar Literature (Grade 11) Topic Guide',
  'Teaching Salinger, Kerouac, and the Beats',
  'POSTWAR LITERATURE - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of World War II and 1950s culture provides context. Familiarity with Modernism helps trace literary development.

LEARNING OBJECTIVES:
- Analyze postwar American literary movements and their concerns
- Explain how literature responded to conformity and Cold War anxiety
- Interpret Beat Generation aesthetics and cultural critique
- Connect postwar themes to American identity and culture
- Evaluate ongoing influence of postwar literary movements

KEY CONCEPTS:
1) Postwar literature responded to conformity, materialism, and Cold War anxiety
2) Key figures include Salinger, Kerouac, Ginsberg, and other Beat writers
3) The Beats celebrated spontaneity, spirituality, and rejection of convention
4) Postwar literature explored alienation, identity, and authenticity
5) Youth culture and counterculture emerged as literary subjects

COMMON MISCONCEPTIONS:
- Romanticizing Beat culture without critical analysis
- Missing the literary craft in seemingly spontaneous writing
- Ignoring problems of gender and race in Beat movement
- Treating postwar anxiety as purely historical
- Separating Beat literature from its broader cultural context

TEACHING SEQUENCE:
Introduce postwar cultural context: conformity, suburbs, Cold War. Study Salinger and The Catcher in the Rye. Analyze Beat Generation aesthetics and philosophy. Study Kerouacs spontaneous prose and road narrative. Examine Ginsbergs poetry and cultural critique. Analyze themes of alienation, authenticity, and rebellion. Connect postwar themes to contemporary concerns. Write analyses of postwar literature and culture.

DIFFERENTIATION:
For struggling learners: Provide cultural context summaries. Focus on accessible, engaging texts. Create movement comparison charts. Use audio for Beat poetry.
For advanced learners: Study Beat philosophy and influences. Analyze tensions within Beat movement. Research lesser-known postwar writers. Examine international Beat connections.

VOCABULARY:
Postwar, Beat Generation, spontaneous prose, conformity, alienation, authenticity, counterculture, rebellion, materialism

CONNECTION TO FUTURE LEARNING:
Postwar literature study illuminates American cultural development. These skills prepare students for contemporary literature and cultural analysis. Students will develop understanding of how literature engages with cultural critique.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Postwar Literature' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Civil Rights Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Civil Rights Literature' AND grade_level_min = 11),
  'Civil Rights Literature (Grade 11) Topic Guide',
  'Teaching Baldwin, Angelou, and protest literature',
  'CIVIL RIGHTS LITERATURE - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary and rhetorical analysis. Understanding of Civil Rights Movement history is essential. Familiarity with earlier African American literature provides context.

LEARNING OBJECTIVES:
- Analyze literature that emerged from and shaped the Civil Rights Movement
- Explain how writers used literature as social and political intervention
- Interpret diverse approaches to addressing racism and inequality
- Connect Civil Rights literature to American literary traditions
- Evaluate the ongoing relevance of Civil Rights era writing

KEY CONCEPTS:
1) Civil Rights literature used words as tools for social change
2) Key figures include Baldwin, Angelou, King, Malcolm X, and many others
3) Writers employed diverse strategies: testimony, rhetoric, narrative, poetry
4) Literature addressed both external racism and internal community concerns
5) Civil Rights writing continues to influence contemporary literature and activism

COMMON MISCONCEPTIONS:
- Treating Civil Rights literature as purely historical document
- Missing the literary artistry in protest writing
- Reducing diverse voices to a single movement perspective
- Ignoring ongoing relevance of Civil Rights themes
- Separating literature from movement strategy and context

TEACHING SEQUENCE:
Introduce Civil Rights Movement historical context. Study James Baldwins essays and fiction. Analyze Maya Angelous memoir and poetry. Examine Martin Luther Kings rhetorical mastery. Study Malcolm X and diverse movement perspectives. Analyze how literature functioned within movement strategy. Connect Civil Rights themes to contemporary issues. Write analyses engaging with Civil Rights literature.

DIFFERENTIATION:
For struggling learners: Provide historical context and timeline. Focus on accessible, powerful texts. Create rhetorical technique guides. Use audio/video for speeches.
For advanced learners: Study debates within the movement. Analyze lesser-known Civil Rights writers. Research literature-activism connections. Examine international Civil Rights connections.

VOCABULARY:
Civil Rights, protest literature, testimony, rhetoric, nonviolence, Black Power, integration, segregation, justice, equality

CONNECTION TO FUTURE LEARNING:
Civil Rights literature study is essential for understanding American society and culture. These skills prepare students for contemporary discussions of race and justice. Students will develop appreciation for how literature can effect social change.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Civil Rights Literature' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Topic: Multicultural Voices
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Multicultural Voices' AND grade_level_min = 11),
  'Multicultural Voices (Grade 11) Topic Guide',
  'Teaching Asian American, Latinx, and Native American writers',
  'MULTICULTURAL VOICES - TOPIC TEACHING GUIDE (GRADE 11)

PREREQUISITES:
Students should have experience with literary analysis. Understanding of diverse American experiences is helpful. Openness to multiple perspectives is essential.

LEARNING OBJECTIVES:
- Analyze literature from diverse American cultural traditions
- Explain how writers navigate multiple cultural identities
- Interpret how literature addresses immigration, heritage, and belonging
- Connect multicultural voices to broader American literary traditions
- Evaluate how diverse voices expand American literature

KEY CONCEPTS:
1) American literature includes diverse cultural traditions and perspectives
2) Writers navigate between heritage cultures and American identity
3) Multicultural literature addresses immigration, assimilation, resistance, and belonging
4) Different communities have distinct literary traditions and concerns
5) Diverse voices challenge and expand definitions of American literature

COMMON MISCONCEPTIONS:
- Treating diverse literatures as interchangeable
- Reducing multicultural literature to identity politics
- Expecting writers to represent entire communities
- Missing literary sophistication in culturally specific work
- Treating diverse voices as recent additions rather than ongoing traditions

TEACHING SEQUENCE:
Introduce the concept of multicultural American literature. Study representative Asian American writers and themes. Analyze Latinx literature and border/bicultural experience. Examine Native American literary traditions and contemporary voices. Study how writers navigate cultural identity and hybridity. Analyze how diverse voices expand American literary traditions. Connect multicultural themes to American identity debates. Write analyses engaging with diverse American literature.

DIFFERENTIATION:
For struggling learners: Provide cultural context for unfamiliar references. Focus on accessible, engaging texts. Create vocabulary guides for multilingual works. Use multimedia to provide background.
For advanced learners: Study literature from multiple perspectives within communities. Analyze critical and theoretical approaches to multicultural literature. Research literary traditions in original cultural contexts. Examine transnational literary connections.

VOCABULARY:
Multicultural, identity, heritage, immigration, assimilation, hybridity, diaspora, border, belonging, tradition, voice

CONNECTION TO FUTURE LEARNING:
Multicultural literature study is essential for understanding diverse American experiences. These skills prepare students for global and comparative literary study. Students will develop appreciation for how literature expresses and shapes cultural identity.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multicultural Voices' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- END OF GRADE 11 READING TOPIC PROMPTS
-- Total: 13 comprehensive topic teaching guides
-- ============================================================================
