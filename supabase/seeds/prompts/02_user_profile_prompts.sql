-- ============================================
-- USER PROFILE PROMPTS
-- ============================================
-- These prompts are templates for the user_profile layer
-- based on difficulty levels and interest themes.
-- The promptComposer generates most user_profile content dynamically,
-- but these templates can be used as base content.
-- ============================================

-- Difficulty-based user profile templates
-- These are referenced by the promptComposer service

-- Difficulty Level 1: Beginner
INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Beginner Difficulty Profile',
  'Profile adaptations for difficulty level 1',
  'DIFFICULTY ADAPTATION - BEGINNER (Level 1):

COGNITIVE LOAD MANAGEMENT:
- Present one concept at a time with clear separation
- Use very simple examples with familiar contexts
- Avoid multi-step problems until foundations are solid
- Break every task into tiny, manageable chunks
- Provide complete models before asking for any practice

SCAFFOLDING APPROACH:
- Heavy scaffolding with explicit step-by-step guidance
- I-do, we-do, you-do with extended "I do" phase
- Provide sentence starters, calculation templates, answer frames
- Give hints proactively before struggle becomes frustration
- Use cloze activities (fill-in-the-blank) with word banks

LANGUAGE SIMPLIFICATION:
- Use the simplest vocabulary possible
- Define every new term immediately with examples
- Keep sentences short (5-8 words ideal)
- Repeat key ideas using different simple words
- Avoid idioms, metaphors, and figurative language

ASSESSMENT APPROACH:
- Ask only one question at a time
- Provide multiple choice when possible
- Accept approximations and partial understanding
- Celebrate any attempt and effort
- Use formative micro-checks frequently

SUCCESS FOCUS:
- Design for success with low-barrier entry
- Build confidence through achievable wins
- Focus on foundation-building, not challenge
- Patient, unlimited time for processing
- Never rush or apply time pressure',
  50
) ON CONFLICT DO NOTHING;

-- Difficulty Level 5: Grade Level
INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Grade Level Difficulty Profile',
  'Profile adaptations for difficulty level 5',
  'DIFFICULTY ADAPTATION - GRADE LEVEL (Level 5):

COGNITIVE DEMAND:
- Present concepts at expected grade-level complexity
- Include multi-step problems requiring synthesis
- Expect application of concepts to new contexts
- Balance scaffolding with productive struggle
- Build toward independence with gradual release

SCAFFOLDING APPROACH:
- Moderate scaffolding with strategic support
- Provide guidance when needed, not automatically
- Use think-alouds to model reasoning
- Encourage attempt before assistance
- Remove scaffolds as competence develops

LANGUAGE EXPECTATIONS:
- Use grade-appropriate academic vocabulary
- Expect understanding of taught terminology
- Include some challenge vocabulary with context clues
- Require use of academic language in responses
- Model sophisticated sentence structures

ASSESSMENT APPROACH:
- Mix of question types and formats
- Require explanation of reasoning
- Include application problems
- Provide feedback that pushes deeper thinking
- Assess both process and product

CHALLENGE BALANCE:
- Design for productive struggle
- Expect effort before providing hints
- Set high but achievable expectations
- Celebrate growth and understanding
- Push toward mastery with support',
  50
) ON CONFLICT DO NOTHING;

-- Difficulty Level 10: Mastery
INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Mastery Difficulty Profile',
  'Profile adaptations for difficulty level 10',
  'DIFFICULTY ADAPTATION - MASTERY (Level 10):

COGNITIVE DEMAND:
- Present advanced, complex challenges
- Require synthesis across multiple concepts
- Expect novel problem-solving and creativity
- Include open-ended problems without single answers
- Push toward creating and evaluating, not just applying

SCAFFOLDING APPROACH:
- Minimal scaffolding - student should struggle productively
- Provide resources rather than step-by-step guidance
- Expect self-direction and independence
- Offer extension challenges rather than remediation
- Model expert thinking when introducing new domains

LANGUAGE EXPECTATIONS:
- Use sophisticated academic and disciplinary vocabulary
- Expect precise technical language use
- Include advanced concepts without explicit definition
- Require nuanced, well-constructed responses
- Model scholarly and professional discourse

ASSESSMENT APPROACH:
- Open-ended, authentic tasks
- Require original thinking and creation
- Evaluate depth of analysis and synthesis
- Provide collegial feedback as to a peer
- Challenge assumptions and push further

CHALLENGE FOCUS:
- Design for significant challenge
- Expect extended grappling with complexity
- Set very high expectations
- Value innovative approaches and creativity
- Treat student as emerging expert',
  50
) ON CONFLICT DO NOTHING;

-- Interest Theme Prompts
-- These are combined with user profiles when interest theme is specified

INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Sports Interest Theme',
  'Personalization for sports-interested students',
  'INTEREST THEME - SPORTS:

Integrate sports contexts naturally throughout:
- Use athletes, teams, and games as examples
- Frame problems around sports statistics, scores, strategies
- Use sports vocabulary and competitive framing
- Reference popular sports figures and events
- Connect concepts to training, practice, and improvement mindset

Example contexts:
- Math: Player statistics, game scores, batting averages, field dimensions
- Science: Physics of sports (trajectory, force), nutrition, body systems
- Reading: Sports biographies, game recaps, strategy guides
- History: Sports history, cultural impact of athletics, famous moments',
  30
) ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Video Games Interest Theme',
  'Personalization for video game-interested students',
  'INTEREST THEME - VIDEO GAMES:

Integrate gaming contexts naturally throughout:
- Use game mechanics, levels, and achievements as frameworks
- Frame problems around game development, strategy, and design
- Use gaming vocabulary (XP, level up, quest, boss battle)
- Reference popular games and characters
- Connect to programming, digital design, and technology

Example contexts:
- Math: Game scoring systems, probability in games, resource management
- Science: Technology behind games, physics engines, computing
- Reading: Game narratives, strategy guides, game reviews
- History: History of gaming, technology evolution, digital culture',
  30
) ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Animals Interest Theme',
  'Personalization for animal-interested students',
  'INTEREST THEME - ANIMALS:

Integrate animal contexts naturally throughout:
- Use different animals, habitats, and behaviors as examples
- Frame problems around wildlife, pets, and animal care
- Use animal vocabulary and natural world framing
- Reference both common and exotic animals
- Connect to conservation, nature, and ecosystems

Example contexts:
- Math: Animal populations, feeding ratios, habitat measurements
- Science: Animal biology, ecosystems, evolution, behavior
- Reading: Animal stories, nature writing, field guides
- History: Animals in history, domestication, conservation movements',
  30
) ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Space Interest Theme',
  'Personalization for space-interested students',
  'INTEREST THEME - SPACE:

Integrate space and astronomy contexts naturally throughout:
- Use planets, stars, and spacecraft as examples
- Frame problems around exploration, missions, and discoveries
- Use astronomy and space science vocabulary
- Reference NASA, SpaceX, and space missions
- Connect to physics, engineering, and exploration

Example contexts:
- Math: Distances in space, orbital calculations, mission planning
- Science: Astronomy, physics, planetary science, astrobiology
- Reading: Space exploration history, science fiction, astronaut memoirs
- History: Space race, exploration history, astronomy discoveries',
  30
) ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (
  prompt_type, name, description, prompt_content, priority
) VALUES (
  'user_profile',
  'Art and Creativity Interest Theme',
  'Personalization for art-interested students',
  'INTEREST THEME - ART AND CREATIVITY:

Integrate art and creative contexts naturally throughout:
- Use visual art, music, and creative expression as examples
- Frame problems around design, creation, and aesthetics
- Use artistic vocabulary and creative framing
- Reference artists, movements, and creative works
- Connect to design thinking, expression, and innovation

Example contexts:
- Math: Geometry in art, proportions, patterns, symmetry
- Science: Color theory, materials, acoustics, optics
- Reading: Artist biographies, creative writing, art criticism
- History: Art history, cultural movements, creative innovations',
  30
) ON CONFLICT DO NOTHING;

-- Verification
SELECT
  'User profile prompts seeded' as status,
  COUNT(*) as total
FROM prompt_templates
WHERE prompt_type = 'user_profile';
