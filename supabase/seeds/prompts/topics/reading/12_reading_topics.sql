-- Grade 12 Reading (British Literature) Topic Prompts
-- 11 comprehensive topic prompts for Grade 12 Reading
-- Topics organized by unit: Anglo-Saxon and Medieval, Renaissance and Restoration, Romantic and Victorian, Modern British

-- =====================================================
-- UNIT: ANGLO-SAXON AND MEDIEVAL LITERATURE
-- =====================================================

-- Topic: Beowulf
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Beowulf' AND grade_level_min = 12),
  'Beowulf (Grade 12) Topic Guide',
  'Teaching the Anglo-Saxon epic and Old English literary traditions',
  'BEOWULF - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand epic poetry conventions, heroic archetypes, oral tradition characteristics, and basic literary analysis skills. Familiarity with historical context of medieval Europe and the migration period provides helpful background. Students should be comfortable with close reading of translated texts.

LEARNING OBJECTIVES:
- Analyze Beowulf as both historical document and literary masterpiece
- Identify characteristics of Anglo-Saxon poetry including kennings and alliterative verse
- Examine the interplay between Christian and pagan elements in the text
- Evaluate the heroic code and its cultural significance
- Compare Beowulf''s values with contemporary heroic ideals
- Trace the evolution of the epic hero archetype

KEY CONCEPTS:
1) Anglo-Saxon poetry relies on alliterative verse, caesura, and oral formulaic composition rather than end rhyme
2) Kennings are compound poetic metaphors (whale-road for sea, ring-giver for king) that create vivid imagery
3) The heroic code emphasizes loyalty, courage, generosity, and fame after death (lof)
4) Beowulf exists at the intersection of pagan Germanic warrior culture and Christian values
5) The poem functions as both entertainment and cultural preservation of Anglo-Saxon values
6) Monsters represent both external threats and internal moral challenges to society
7) The elegiac tone reflects Anglo-Saxon awareness of life''s transience (ubi sunt motif)

COMMON MISCONCEPTIONS:
- Viewing Beowulf as purely pagan or purely Christian rather than a complex synthesis
- Assuming the poem was written down immediately rather than transmitted orally for centuries
- Reading monsters as purely literal rather than symbolic of societal anxieties
- Expecting modern narrative structure rather than episodic oral tradition format
- Treating translations as equivalent to the original Old English text
- Assuming Beowulf''s values directly translate to modern heroism

TEACHING SEQUENCE:
Begin with historical context of Anglo-Saxon England, including the migration period, conversion to Christianity, and the role of the scop (oral poet). Introduce key poetic devices through examples before full text engagement. Read selected passages aloud to experience the oral quality. Analyze the three monster fights as a structural framework, examining what each battle reveals about heroism and mortality. Discuss the tension between Christian narrator and pagan characters. Explore the poem''s elegiac conclusion and meditation on the limits of heroic achievement.

DIFFERENTIATION:
For struggling learners: Use modern prose translations alongside poetic versions. Create visual character maps and timeline of events. Focus on one battle sequence at a time with guided questions. Provide kenning reference sheets.
For advanced learners: Compare multiple translations including Seamus Heaney''s and examine translation choices. Read Old English passages with pronunciation guides. Research archaeological evidence (Sutton Hoo) connecting to the poem. Analyze critical debates about the poem''s composition and meaning.

VOCABULARY:
Alliterative verse, caesura, kenning, comitatus, wergild, thane, mead-hall, wyrd (fate), epic hero, oral tradition, elegiac, scop, heroic code, lof (fame), compound words, formulaic expressions

CONNECTION TO FUTURE LEARNING:
Beowulf establishes foundational concepts for understanding medieval literature, epic conventions, and the evolution of English language and literature. Understanding Anglo-Saxon culture illuminates later British literature including Tolkien, who was a Beowulf scholar. The heroic code and monster symbolism recur throughout literary history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Beowulf' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Chaucer
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Chaucer' AND grade_level_min = 12),
  'Chaucer (Grade 12) Topic Guide',
  'Teaching The Canterbury Tales and medieval English literature',
  'CHAUCER - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand narrative structure, character development, and satirical writing. Background knowledge of medieval society including feudal structure, the Church, and social classes enhances comprehension. Familiarity with poetic forms and the concept of a frame narrative provides helpful foundation. Students should be prepared for Middle English language features.

LEARNING OBJECTIVES:
- Analyze Chaucer''s use of the frame narrative structure in The Canterbury Tales
- Identify characteristics of Middle English and its evolution toward modern English
- Examine Chaucer''s satirical treatment of medieval social classes and institutions
- Evaluate the relationship between tale and teller as character revelation
- Compare different narrative genres represented in the Tales
- Recognize Chaucer''s innovations in English literature and versification

KEY CONCEPTS:
1) The frame narrative (pilgrimage to Canterbury) unifies diverse tales and creates natural social interaction
2) Estates satire examines and critiques all levels of medieval society from nobles to peasants
3) The General Prologue introduces pilgrims through detailed portraits revealing character and social commentary
4) Each tale reflects its teller''s personality, values, and social position
5) Chaucer writes in iambic pentameter couplets (heroic couplets) establishing this as an English poetic standard
6) Medieval genres include romance, fabliau, exemplum, beast fable, and sermon
7) Chaucer positions himself as naive narrator while embedding sophisticated social criticism

COMMON MISCONCEPTIONS:
- Assuming Chaucer shared all views expressed by his pilgrims
- Viewing medieval people as unsophisticated or uniformly pious
- Treating the Tales as unified narrative rather than varied anthology
- Expecting modern sensibilities about religion, gender, or class
- Assuming Middle English is incomprehensible rather than learnable
- Missing the humor and entertainment purpose amid literary analysis

TEACHING SEQUENCE:
Begin with medieval historical context including the pilgrimage tradition, social structure, and Church influence. Introduce Middle English through the General Prologue opening, building familiarity with pronunciation and vocabulary. Study the General Prologue portraits to establish pilgrims as characters. Select tales representing different genres (Knight''s Tale for romance, Miller''s Tale for fabliau, Pardoner''s Tale for moral exemplum). Analyze how tale reflects teller and examine Chaucer''s satirical techniques. Discuss unfinished structure and what it reveals about Chaucer''s ambitious literary project.

DIFFERENTIATION:
For struggling learners: Use modern English translations alongside original with interlinear glosses. Focus on most accessible tales (Pardoner''s Tale, Wife of Bath''s Prologue). Provide character cards for pilgrims with key traits. Use audio recordings of Middle English pronunciation.
For advanced learners: Read extended passages in Middle English with annotation. Compare with Boccaccio''s Decameron as source material. Analyze Chaucer''s linguistic choices in establishing English as literary language. Research manuscript tradition and textual variants.

VOCABULARY:
Frame narrative, estates satire, pilgrimage, iambic pentameter, heroic couplets, fabliau, romance, exemplum, Middle English, narrator reliability, social commentary, character portrait, irony, vernacular literature

CONNECTION TO FUTURE LEARNING:
Chaucer is the father of English poetry, establishing vernacular English as a literary language. His character types, satirical methods, and narrative techniques influence Shakespeare, Milton, and all subsequent English literature. The Canterbury Tales demonstrates literature''s power to preserve and critique social reality.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Chaucer' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: RENAISSANCE AND RESTORATION
-- =====================================================

-- Topic: Shakespeare: Tragedies
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Shakespeare: Tragedies' AND grade_level_min = 12),
  'Shakespeare: Tragedies (Grade 12) Topic Guide',
  'Teaching Shakespearean tragedy including Hamlet, Macbeth, Othello, and King Lear',
  'SHAKESPEARE: TRAGEDIES - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should have prior experience with Shakespeare''s comedies or histories and familiarity with Elizabethan theater conventions. Understanding of dramatic structure, blank verse, and figurative language is essential. Students should be prepared for complex philosophical and psychological themes.

LEARNING OBJECTIVES:
- Analyze the structure and conventions of Shakespearean tragedy
- Identify the tragic hero''s hamartia and its role in catastrophe
- Examine Shakespeare''s exploration of evil, ambition, jealousy, and mortality
- Evaluate the interplay between fate and free will in tragic action
- Compare different tragedies'' treatments of common themes
- Analyze Shakespeare''s language including soliloquies, imagery patterns, and dramatic irony

KEY CONCEPTS:
1) Tragic structure follows rising action through crisis to catastrophe, with the fall of a noble protagonist
2) Hamartia (tragic flaw or error) connects character to fate, making downfall inevitable yet earned
3) Soliloquies reveal interior consciousness and create audience intimacy with character psychology
4) Imagery patterns (blood in Macbeth, sight/blindness in Lear) unify and deepen thematic exploration
5) The tragic universe questions divine justice while affirming human dignity in suffering
6) Foil characters illuminate the protagonist through contrast and parallel
7) Catharsis through pity and fear creates moral and emotional impact beyond entertainment

COMMON MISCONCEPTIONS:
- Reducing tragedy to "bad things happen to good people"
- Treating tragic flaw as simple character weakness rather than complex psychology
- Missing metatheatrical elements and dramatic self-awareness
- Assuming Shakespeare endorsed all views characters express
- Viewing Elizabethan attitudes as identical to modern values
- Ignoring comedic elements within tragedies and tonal complexity

TEACHING SEQUENCE:
Begin with Aristotelian tragic theory and its Renaissance adaptation. Study one major tragedy in depth (Hamlet or Macbeth most commonly taught). Analyze act structure and the turning point at crisis. Examine key soliloquies through close reading for insight into character psychology. Trace imagery patterns throughout the play. Discuss the play''s treatment of its central theme (ambition, revenge, jealousy, or familial duty). Compare with at least one other tragedy to examine Shakespeare''s range and recurring concerns.

DIFFERENTIATION:
For struggling learners: Use film versions alongside text reading. Focus on key scenes and soliloquies rather than complete plays. Provide plot summaries and character guides. Use modern translations for comprehension before original language.
For advanced learners: Compare quartos and folios where textual variants exist. Analyze critical history and interpretive debates. Study sources (Holinshed, Plutarch) and Shakespeare''s adaptations. Explore performance history and directorial choices.

VOCABULARY:
Tragedy, hamartia, catharsis, soliloquy, blank verse, iambic pentameter, dramatic irony, foil character, aside, fatal flaw, hubris, anagnorisis (recognition), peripeteia (reversal), catastrophe, five-act structure

CONNECTION TO FUTURE LEARNING:
Shakespeare''s tragedies represent the height of English dramatic achievement and influence all subsequent tragedy and drama. Understanding tragic structure and the psychological complexity of Shakespeare''s characters provides foundation for literary analysis throughout the curriculum and establishes expectations for serious dramatic literature.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shakespeare: Tragedies' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Metaphysical Poetry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Metaphysical Poetry' AND grade_level_min = 12),
  'Metaphysical Poetry (Grade 12) Topic Guide',
  'Teaching Donne, Herbert, Marvell and the metaphysical tradition',
  'METAPHYSICAL POETRY - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should have experience analyzing poetry including identifying figurative language, understanding meter, and interpreting imagery. Familiarity with Renaissance culture, religious context of 17th-century England, and Petrarchan poetic conventions provides helpful background. Students should be prepared for intellectually challenging and philosophical poetry.

LEARNING OBJECTIVES:
- Identify characteristics of metaphysical poetry including wit, conceit, and paradox
- Analyze the metaphysical conceit as an extended, intellectually surprising metaphor
- Examine the interplay between religious devotion and erotic love in metaphysical verse
- Evaluate metaphysical poets'' use of dramatic voice and argument structure
- Compare metaphysical style with Cavalier poetry and other contemporary traditions
- Recognize the influence of metaphysical poetry on modern literature

KEY CONCEPTS:
1) Metaphysical poetry uses wit—intellectual ingenuity combining disparate ideas unexpectedly
2) The metaphysical conceit extends unusual comparisons through elaborate logical development
3) Metaphysical poets reject smooth Petrarchan conventions for dramatic, conversational openings
4) Religious poetry (Herbert, Donne''s Holy Sonnets) applies intellectual rigor to devotional experience
5) Colloquial diction and irregular rhythms create sense of spontaneous thought and speech
6) Paradox and contradiction capture the complexity of love, faith, and mortality
7) Samuel Johnson''s term "metaphysical" (originally critical) describes yoking heterogeneous ideas

COMMON MISCONCEPTIONS:
- Treating metaphysical poetry as purely intellectual without emotional depth
- Missing the humor and playfulness amid serious themes
- Assuming religious poetry is simple piety rather than complex spiritual struggle
- Viewing metaphysical conceits as merely clever rather than illuminating
- Ignoring historical context of religious controversy and political upheaval
- Treating the metaphysical poets as a unified school rather than diverse individuals

TEACHING SEQUENCE:
Begin with Johnson''s critical definition and Dr. Johnson''s both appreciative and critical assessment. Study Donne''s secular love poetry (The Flea, A Valediction: Forbidding Mourning) to establish conceit and argumentative structure. Examine Donne''s religious sonnets for spiritual intensity. Study Herbert''s devotional poetry and its formal innovations (shaped poems, simple diction). Explore Marvell''s political and pastoral dimensions. Compare metaphysical style with Cavalier smoothness (Herrick, Lovelace) to clarify distinctive features.

DIFFERENTIATION:
For struggling learners: Start with more accessible poems (The Flea, Herbert''s simpler lyrics). Diagram conceit development step by step. Provide historical context documents. Use discussion to work through arguments before independent analysis.
For advanced learners: Study critical debates about metaphysical poetry''s definition and scope. Analyze the revival of interest through Eliot and the Modernists. Compare with continental baroque poetry. Explore manuscript culture and textual scholarship.

VOCABULARY:
Metaphysical conceit, wit, paradox, argumentation, dramatic monologue, devotional poetry, carpe diem, memento mori, Petrarchan conventions, colloquial diction, intellectual poetry, yoking disparate ideas, sacred parody

CONNECTION TO FUTURE LEARNING:
Metaphysical poetry influences Romantic, Victorian, and especially Modernist poetry. T.S. Eliot''s famous essay rehabilitated metaphysical poets as models for modern verse. Understanding metaphysical style prepares students for poetry that values intellectual complexity and emotional depth simultaneously.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Metaphysical Poetry' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Milton
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Milton' AND grade_level_min = 12),
  'Milton (Grade 12) Topic Guide',
  'Teaching Paradise Lost and Miltonic epic tradition',
  'MILTON - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand epic conventions from Homer and Virgil, including invocation, in medias res, and epic simile. Familiarity with Genesis and the Christian theological tradition of the Fall provides essential background. Students should have experience with blank verse and complex syntactic structures.

LEARNING OBJECTIVES:
- Analyze Paradise Lost as Christian epic adapting classical conventions
- Examine Milton''s theological interpretation of the Fall and its implications
- Evaluate the characterization of Satan and debates about Milton''s sympathy
- Identify Miltonic style including blank verse, Latinate syntax, and epic similes
- Compare Milton''s political views with his literary work
- Assess Milton''s influence on English poetry and language

KEY CONCEPTS:
1) Paradise Lost justifies God''s ways to man by making the Fall fortunate (felix culpa) through redemption
2) Milton adapts classical epic conventions (invocation, councils, battles) to Christian content
3) Satan''s compelling rhetoric raises questions about heroism, sympathy, and Milton''s intent
4) Blank verse (unrhymed iambic pentameter) becomes the vehicle for English epic through Milton
5) Miltonic syntax inverts normal English word order, creating elevated, Latinate style
6) Epic similes extend comparisons over multiple lines, adding layers of meaning
7) Milton''s republicanism and religious nonconformity shape his treatment of authority and rebellion

COMMON MISCONCEPTIONS:
- Reading Satan as straightforward hero rather than examining Milton''s critique
- Assuming Milton was unaware of Satan''s attractiveness or made an artistic error
- Treating Paradise Lost as simple Biblical retelling rather than theological interpretation
- Ignoring the political context of the Restoration and Milton''s fallen hopes
- Finding Miltonic style difficult and therefore assuming it lacks artistry
- Missing the domestic and conjugal dimensions of Adam and Eve''s relationship

TEACHING SEQUENCE:
Begin with Milton''s biography including his political career, blindness, and Restoration context. Review classical epic conventions and their Christian transformation. Read Books I and II focusing on Satan''s characterization and the infernal council. Study the invocations and Milton''s poetic ambition. Examine the Garden of Eden and prelapsarian human life. Analyze the temptation and fall sequence. Discuss the felix culpa and closing vision of redemption. Throughout, attend to Miltonic style through close reading of verse paragraphs.

DIFFERENTIATION:
For struggling learners: Use prose summaries alongside verse. Focus on key passages rather than complete books. Provide vocabulary and syntax guides. Use visual representations of the poem''s cosmology.
For advanced learners: Study complete books and trace arguments throughout. Analyze Paradise Regained and Samson Agonistes as companion pieces. Explore critical history from Blake through modern scholars. Compare with other Biblical epics (Du Bartas, Tasso).

VOCABULARY:
Epic, blank verse, invocation, in medias res, epic simile, Latinate syntax, felix culpa, free will, providence, theodicy, republican, Puritan, verse paragraph, enjambment, prelapsarian

CONNECTION TO FUTURE LEARNING:
Milton represents the culmination of the English Renaissance and influences all subsequent English poetry. Blake, Wordsworth, Shelley, and others respond to Milton directly. Understanding Miltonic epic prepares students for the Romantic period and modern treatments of Biblical narrative.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Milton' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: ROMANTIC AND VICTORIAN LITERATURE
-- =====================================================

-- Topic: Romantic Poetry
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Romantic Poetry' AND grade_level_min = 12),
  'Romantic Poetry (Grade 12) Topic Guide',
  'Teaching Blake, Wordsworth, Coleridge, Byron, Shelley, and Keats',
  'ROMANTIC POETRY - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand Enlightenment rationalism and neoclassical poetic conventions as context for Romantic reaction. Familiarity with the French Revolution and industrial transformation provides historical grounding. Experience with close reading of poetry and understanding of figurative language is essential.

LEARNING OBJECTIVES:
- Identify key characteristics of Romantic poetry including imagination, nature, and individual experience
- Analyze the first-generation Romantics (Blake, Wordsworth, Coleridge) and their innovations
- Examine the second-generation Romantics (Byron, Shelley, Keats) and their variations
- Evaluate Romantic treatments of imagination, nature, childhood, and the sublime
- Compare Romantic poetry with neoclassical predecessors and Victorian successors
- Recognize Romantic influences on subsequent literature and culture

KEY CONCEPTS:
1) Romanticism privileges imagination over reason, emotion over intellect, nature over civilization
2) The sublime describes awe-inspiring experiences that transcend rational comprehension
3) Wordsworth''s Preface to Lyrical Ballads manifests Romantic theory: poetry as spontaneous overflow of powerful feelings
4) Romantic nature poetry finds spiritual significance and moral instruction in landscape
5) The Romantic child represents innocence, imagination, and connection to nature before socialization
6) The Romantic poet as prophet, seer, or unacknowledged legislator claims special cultural authority
7) Romantic irony acknowledges the gap between artistic aspiration and achievement

COMMON MISCONCEPTIONS:
- Reducing Romanticism to sentimentality or emotional excess
- Treating all Romantics as identical rather than recognizing significant differences
- Assuming Romantics were anti-intellectual rather than differently intellectual
- Missing political radicalism underlying aesthetic revolution
- Romanticizing the Romantics themselves rather than analyzing their work critically
- Ignoring Romantic formalism and technical sophistication

TEACHING SEQUENCE:
Begin with historical context: French Revolution, industrial revolution, reaction against Enlightenment rationalism. Study Blake as proto-Romantic visionary through Songs of Innocence and Experience. Examine Wordsworth and Coleridge''s collaboration in Lyrical Ballads and the Preface''s theoretical statements. Analyze representative poems: Tintern Abbey, Kubla Khan, Rime of the Ancient Mariner. Turn to second-generation Romantics: Byron''s persona and satirical edge, Shelley''s radical idealism, Keats''s sensuous aestheticism. Compare approaches to nature, imagination, and poetry''s purpose across poets.

DIFFERENTIATION:
For struggling learners: Focus on most accessible poems with clear imagery (Tyger, Daffodils, Ozymandias). Provide historical context documents. Use visual art of the period to illuminate aesthetic principles. Guide close reading with structured questions.
For advanced learners: Study longer works (Prelude excerpts, Don Juan, Prometheus Unbound). Analyze Romantic prose including Coleridge''s Biographia Literaria. Explore European Romanticism (German, French) for comparative context. Examine Romantic influence on Victorian and modern literature.

VOCABULARY:
Romanticism, imagination, sublime, picturesque, nature poetry, lyrical ballads, spontaneous overflow, Romantic irony, organic form, transcendence, vision, prophetic poet, sensibility, natural supernaturalism

CONNECTION TO FUTURE LEARNING:
Romantic poetry establishes expectations for lyric poetry that continue through the present. Romantic ideas about imagination, nature, and individual expression shape Victorian literature and modern culture. Understanding Romanticism is essential for comprehending subsequent literary movements including Modernism''s complex reaction.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Romantic Poetry' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Gothic Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Gothic Literature' AND grade_level_min = 12),
  'Gothic Literature (Grade 12) Topic Guide',
  'Teaching Gothic novels from Walpole through Victorian sensation fiction',
  'GOTHIC LITERATURE - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand Romantic emphasis on emotion, imagination, and the sublime. Familiarity with Enlightenment rationalism helps contextualize Gothic as counter-movement. Experience with narrative analysis including unreliable narration and atmosphere creation is helpful.

LEARNING OBJECTIVES:
- Identify conventions of Gothic literature including setting, character types, and atmospheric effects
- Analyze the Gothic exploration of fear, transgression, and the return of the repressed
- Examine the development of Gothic from Walpole through Radcliffe to Victorian sensation fiction
- Evaluate Gothic treatments of gender, sexuality, and social anxieties
- Compare British Gothic with American variations (Poe, Hawthorne)
- Recognize Gothic influence on contemporary horror and dark fiction

KEY CONCEPTS:
1) Gothic settings (ruined castles, monasteries, underground passages) externalize psychological states
2) The Gothic explores what rationalism suppresses: fear, desire, the supernatural, and the past
3) Female Gothic (Radcliffe) typically resolves supernatural elements rationally; male Gothic (Lewis) embraces the demonic
4) The explained supernatural vs. genuine supernatural represents competing Gothic modes
5) Gothic doubles and doppelgangers explore divided identity and repressed selves
6) Victorian Gothic (Dracula, Jekyll and Hyde, Dorian Gray) addresses contemporary anxieties about science, empire, and sexuality
7) The uncanny describes familiar things made strange—central to Gothic effect

COMMON MISCONCEPTIONS:
- Dismissing Gothic as merely sensational or lowbrow entertainment
- Missing Gothic''s serious engagement with psychology and culture
- Treating Gothic conventions as merely formulaic rather than meaningfully deployed
- Ignoring differences between Gothic periods and national traditions
- Assuming Gothic is purely conservative rather than recognizing subversive potential
- Reducing Gothic to monsters rather than understanding monster as symptom

TEACHING SEQUENCE:
Begin with Walpole''s Castle of Otranto as originating text, examining conventions established. Study Radcliffe''s explained supernatural and Gothic heroine. Contrast with Lewis''s transgressive Monk. Examine Mary Shelley''s Frankenstein as both Romantic and Gothic, bridging traditions. Trace Victorian Gothic''s engagement with contemporary anxieties through Dracula, Jekyll and Hyde, or Dorian Gray. Analyze Gothic doubles and the return of the repressed. Discuss Gothic''s persistence into contemporary horror.

DIFFERENTIATION:
For struggling learners: Focus on shorter works (Poe stories, Jekyll and Hyde). Provide Gothic convention checklists. Use film adaptations to illustrate atmosphere and effect. Guide analysis through structured response questions.
For advanced learners: Study Gothic theory (Freud''s uncanny, psychoanalytic approaches). Compare British and American Gothic traditions. Analyze Gothic''s relation to Romanticism and Victorianism. Explore contemporary Gothic and its transformations.

VOCABULARY:
Gothic, sublime terror, explained supernatural, uncanny, doppelganger, Gothic villain, Gothic heroine, atmosphere, ruined setting, transgression, repression, sensation novel, Victorian anxiety, liminal spaces

CONNECTION TO FUTURE LEARNING:
Gothic literature influences horror, dark fantasy, and psychological thriller genres. Understanding Gothic conventions and their psychological significance prepares students for analyzing contemporary dark fiction and recognizing Gothic elements in mainstream literature. The Gothic''s exploration of fear and repression remains culturally relevant.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Gothic Literature' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Victorian Novel
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Victorian Novel' AND grade_level_min = 12),
  'Victorian Novel (Grade 12) Topic Guide',
  'Teaching Dickens, the Brontës, Eliot, and Hardy',
  'VICTORIAN NOVEL - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand novel conventions including plot structure, characterization, and narrative perspective. Familiarity with industrial revolution, British Empire, and Victorian social structure provides essential context. Experience with longer literary works and sustained analysis is necessary.

LEARNING OBJECTIVES:
- Analyze characteristics of the Victorian novel including social scope, moral seriousness, and realism
- Examine major Victorian novelists and their distinctive concerns and techniques
- Evaluate Victorian treatments of class, gender, industrialization, and empire
- Identify the development from early Victorian optimism to late Victorian doubt
- Compare the Victorian novel with Romantic predecessors and Modernist successors
- Recognize the Victorian novel''s influence on subsequent fiction

KEY CONCEPTS:
1) Victorian novels combine entertainment with moral instruction and social criticism
2) Serial publication shaped Victorian narrative: episodic structure, cliffhangers, reader response
3) The Bildungsroman (novel of education/development) predominates: David Copperfield, Jane Eyre, Great Expectations
4) Social problem novels (Dickens, Gaskell) address industrial conditions, poverty, and class division
5) Victorian realism aims to represent society comprehensively while maintaining moral vision
6) Women novelists (Brontës, Eliot) expand representation of female experience and consciousness
7) Late Victorian fiction (Hardy, Conrad) darkens toward naturalism and modernist doubt

COMMON MISCONCEPTIONS:
- Assuming Victorian novels are simply moralistic or sentimental
- Missing irony, social criticism, and complexity beneath surface conventions
- Treating Victorian attitudes toward gender or class as uniform rather than contested
- Expecting brevity rather than Victorian expansiveness and detail
- Ignoring form and technique while focusing only on content
- Assuming linear progression rather than tension and contradiction within the period

TEACHING SEQUENCE:
Begin with historical context: Reform Acts, industrial conditions, empire, religious doubt. Establish serial publication and reading culture. Study Dickens as central Victorian voice: social criticism, memorable characters, melodrama with purpose. Examine Brontë romanticism and psychological intensity through Jane Eyre or Wuthering Heights. Analyze George Eliot''s intellectual realism and moral complexity through Middlemarch or Mill on the Floss. Trace darkening toward Hardy''s pessimism and Jude the Obscure''s critique of Victorian ideals. Compare early and late Victorian sensibilities.

DIFFERENTIATION:
For struggling learners: Focus on shorter works or excerpts from longer novels. Use film adaptations to support comprehension. Provide historical context documents and character guides. Structure analysis through focused study questions.
For advanced learners: Read complete long novels (Middlemarch, Bleak House). Study Victorian periodical culture and serialization. Analyze critical debates about Victorian fiction. Compare British and other national traditions (French realism, Russian novel).

VOCABULARY:
Victorian, realism, serial publication, Bildungsroman, social problem novel, industrial novel, three-decker novel, domestic fiction, sensation novel, narrator omniscience, moral earnestness, respectability, reform

CONNECTION TO FUTURE LEARNING:
The Victorian novel establishes expectations for serious literary fiction that continue through the present. Understanding Victorian techniques and concerns prepares students for Modernist reactions and contemporary fiction''s ongoing engagement with social reality. Victorian novels remain widely read and culturally influential.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Victorian Novel' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: MODERN BRITISH LITERATURE
-- =====================================================

-- Topic: Modernism
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Modernism' AND grade_level_min = 12),
  'Modernism (Grade 12) Topic Guide',
  'Teaching Woolf, Joyce, Eliot, and Modernist literary innovation',
  'MODERNISM - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand Victorian literary conventions as context for Modernist reaction. Familiarity with World War I''s cultural impact and early 20th-century intellectual developments (Freud, Einstein) provides essential background. Experience with complex, experimental texts prepares students for Modernist difficulty.

LEARNING OBJECTIVES:
- Identify characteristics of literary Modernism including fragmentation, stream of consciousness, and mythical method
- Analyze major Modernist works by Woolf, Joyce, Eliot, and others
- Examine Modernist responses to modernity, war, and cultural crisis
- Evaluate Modernist formal innovations and their purposes
- Compare British Modernism with continental and American variations
- Assess Modernism''s influence on contemporary literature

KEY CONCEPTS:
1) Modernism rejects Victorian narrative conventions for fragmentation, discontinuity, and difficulty
2) Stream of consciousness attempts to represent interior mental experience directly
3) The mythical method (Eliot on Joyce) uses ancient patterns to order modern chaos
4) Modernist difficulty reflects cultural complexity and requires active reader participation
5) World War I shattered confidence in progress, civilization, and traditional values
6) Modernists sought to "make it new" through formal experimentation and cultural synthesis
7) High Modernism often expresses conservative cultural critique through radical aesthetic means

COMMON MISCONCEPTIONS:
- Assuming Modernist difficulty is pretentious rather than purposeful
- Missing Modernism''s humor, playfulness, and self-awareness
- Treating Modernism as purely negative reaction rather than creative reconstruction
- Ignoring continuities with Romantic and Victorian predecessors
- Assuming all Modernists shared identical political and aesthetic positions
- Treating Modernism as exclusively high culture without popular influences

TEACHING SEQUENCE:
Begin with cultural context: World War I, technological change, Freudian psychology, Einsteinian physics, declining religious certainty. Study Eliot''s The Waste Land as paradigmatic Modernist work: fragmentation, allusion, mythical method. Analyze Woolf''s stream of consciousness technique through Mrs Dalloway or To the Lighthouse. Examine Joyce''s innovation from Dubliners through Portrait to Ulysses excerpts. Study Modernist poetry beyond Eliot: Yeats, Owen, others. Discuss Modernism''s legacy and influence on contemporary literature.

DIFFERENTIATION:
For struggling learners: Begin with more accessible works (Dubliners stories, Owen''s war poetry). Provide historical context extensively. Use guided questions to navigate difficult texts. Focus on key passages rather than complete experimental works.
For advanced learners: Study Ulysses and The Waste Land in depth with annotations. Analyze Modernist manifestos and critical writings. Compare British, American, and continental Modernisms. Explore debates about Modernism''s politics and cultural position.

VOCABULARY:
Modernism, stream of consciousness, interior monologue, mythical method, fragmentation, difficulty, allusion, epiphany, objectivity, impersonality, free indirect discourse, imagism, vorticism, avant-garde, make it new

CONNECTION TO FUTURE LEARNING:
Modernism revolutionizes literary technique and remains the essential context for understanding contemporary literature. Postmodernism defines itself in relation to Modernist innovations. Understanding Modernist strategies for representing consciousness and cultural complexity prepares students for contemporary experimental fiction.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Modernism' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: War Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'War Literature' AND grade_level_min = 12),
  'War Literature (Grade 12) Topic Guide',
  'Teaching World War I and World War II literature',
  'WAR LITERATURE - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand the historical context of World War I and World War II including causes, major events, and cultural impact. Familiarity with Romantic and Victorian literary traditions helps contextualize war literature''s innovations. Experience with poetry analysis is essential.

LEARNING OBJECTIVES:
- Analyze how literature represents the experience and meaning of modern warfare
- Examine the evolution from patriotic idealism to disillusionment and protest
- Identify techniques war poets use to convey trauma, horror, and loss
- Evaluate tensions between testimony and aesthetic representation
- Compare World War I and World War II literary responses
- Assess war literature''s influence on subsequent writing about violence and trauma

KEY CONCEPTS:
1) World War I created unprecedented rupture between traditional heroic vocabulary and modern industrial slaughter
2) Trench warfare''s static horror and mass death demanded new literary forms and vocabulary
3) War poetry evolved from patriotic idealism (Brooke) through protest (Owen, Sassoon) to modernist complexity
4) Owen''s preface states poetry''s purpose: "the pity of war"—not to glorify but to witness
5) World War II literature addresses different horrors: Holocaust, atomic weapons, total war on civilians
6) War literature raises questions about testimony, trauma representation, and art''s adequacy to horror
7) Post-war literature processes collective trauma and challenges nationalist mythmaking

COMMON MISCONCEPTIONS:
- Treating all war poetry as anti-war without recognizing complexity and range
- Assuming war writing is purely documentary without aesthetic shaping
- Missing the transition from idealism to disillusionment as process rather than instant reversal
- Ignoring non-combatant perspectives including home front and civilian experiences
- Treating World War I and World War II literature as identical rather than distinctly responsive
- Assuming war literature ended with the wars rather than continuing as ongoing processing

TEACHING SEQUENCE:
Begin with historical context of World War I: expectation of brief conflict, trench stalemate, unprecedented casualties. Study early patriotic poetry (Brooke''s soldier sonnets) and the idealism it represents. Trace disillusionment through Sassoon''s satire and Owen''s pity. Analyze Owen''s techniques: pararhyme, classical allusion, irony. Examine prose responses: memoir, fiction (All Quiet on the Western Front, Goodbye to All That). Turn to World War II literature: different scale, different horrors (Holocaust, total war). Study responses including Auden, Douglas, and later memorial literature.

DIFFERENTIATION:
For struggling learners: Focus on most accessible poems with clear imagery and argument. Provide historical context extensively with images and primary documents. Guide close reading with structured questions. Use film footage to convey war''s reality.
For advanced learners: Study complete collections and trace individual poets'' development. Analyze critical debates about war representation. Compare British, German, and American war literature. Explore connections to contemporary war writing and trauma theory.

VOCABULARY:
War poetry, trench warfare, disillusionment, protest poetry, pararhyme, irony, testimony, trauma, home front, total war, Holocaust literature, memorial, elegy, futility, pity of war

CONNECTION TO FUTURE LEARNING:
War literature establishes approaches to representing violence and trauma that continue through Vietnam, contemporary conflicts, and memorial culture. Understanding how literature processes collective catastrophe prepares students for analyzing trauma narratives and representations of historical violence.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'War Literature' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Postcolonial Literature
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'Reading'),
  (SELECT id FROM topics WHERE name = 'Postcolonial Literature' AND grade_level_min = 12),
  'Postcolonial Literature (Grade 12) Topic Guide',
  'Teaching literature from and about the British Empire and its aftermath',
  'POSTCOLONIAL LITERATURE - TOPIC TEACHING GUIDE (GRADE 12)

PREREQUISITES:
Students should understand the historical scope of the British Empire and decolonization processes. Familiarity with canonical British literature provides necessary context for postcolonial responses. Experience with analyzing perspective and representation is essential.

LEARNING OBJECTIVES:
- Define postcolonial literature and its relationship to colonial history
- Analyze how postcolonial writers respond to, revise, and challenge canonical British texts
- Examine representations of colonialism from both colonizer and colonized perspectives
- Evaluate concepts central to postcolonial analysis: hybridity, othering, voice, and agency
- Compare postcolonial literature from different regions (Caribbean, African, South Asian)
- Recognize postcolonial literature''s contributions to contemporary literary culture

KEY CONCEPTS:
1) Postcolonial literature emerges from and responds to the experience of European colonialism
2) "Writing back" describes postcolonial revision of canonical texts (Wide Sargasso Sea to Jane Eyre)
3) Hybridity describes mixed cultural identities formed through colonial encounter
4) Colonial discourse analysis examines how literature constructed and justified imperial power
5) Postcolonial writers navigate between indigenous traditions, colonial languages, and global audiences
6) The question of language—writing in the colonizer''s tongue—raises issues of audience and authenticity
7) Postcolonial literature challenges Western universalism and centers previously marginalized perspectives

COMMON MISCONCEPTIONS:
- Assuming "postcolonial" means "after colonialism ended" rather than "responding to colonialism"
- Treating postcolonial literature as uniform rather than recognizing regional and individual diversity
- Reducing complex works to political statements without appreciating aesthetic achievement
- Assuming postcolonial writers straightforwardly reject all Western influence
- Missing how canonical British literature already engaged with empire
- Treating postcolonial perspectives as only relevant to formerly colonized peoples

TEACHING SEQUENCE:
Begin with historical overview of British Empire and decolonization (India, Africa, Caribbean). Analyze colonial representations in canonical texts (Conrad''s Heart of Darkness, Kipling). Study Achebe''s critique of Conrad and Things Fall Apart as counter-narrative. Examine Caribbean responses: Rhys''s Wide Sargasso Sea, Walcott''s poetry. Study South Asian perspectives: Rushdie, Roy. Analyze concepts: hybridity, othering, writing back, linguistic choice. Discuss contemporary British multicultural literature as postcolonial continuation.

DIFFERENTIATION:
For struggling learners: Begin with shorter works and clear colonial contexts. Provide historical maps and timelines. Focus on single regions before comparative analysis. Use guided questions to navigate complex perspectives.
For advanced learners: Study postcolonial theory (Said, Spivak, Bhabha). Analyze debates within postcolonial criticism. Compare Anglophone, Francophone, and other postcolonial traditions. Explore diaspora writing and contemporary British multicultural fiction.

VOCABULARY:
Postcolonial, colonial discourse, hybridity, othering, subaltern, writing back, diaspora, decolonization, Eurocentrism, orientalism, commonwealth literature, magical realism, indigenous, empire

CONNECTION TO FUTURE LEARNING:
Postcolonial literature and theory fundamentally transform how we read both contemporary and canonical literature. Understanding colonial contexts and postcolonial responses is essential for analyzing increasingly globalized literary culture. Postcolonial criticism provides tools for analyzing representation, power, and voice across cultural contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Postcolonial Literature' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;
