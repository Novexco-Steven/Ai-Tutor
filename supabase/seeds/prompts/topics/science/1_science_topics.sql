-- Grade 1 Science Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: LIGHT AND SOUND
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Light Sources' AND grade_level_min = 1),
  'Light Sources Topic Guide', 'Learn about natural and artificial light sources',
  'LIGHT SOURCES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have experience with the five senses, particularly sight. Understanding that we use eyes to see. No prior physics knowledge required.

LEARNING OBJECTIVES:
- Identify that light comes from sources
- Distinguish between natural light sources (sun, fire, stars) and artificial light sources (lamps, flashlights, screens)
- Understand that light helps us see
- Recognize that different sources produce different amounts of light

KEY CONCEPTS:
1) Light comes from sources - things that produce light
2) The sun is our biggest natural light source
3) Artificial light sources are made by people (light bulbs, flashlights)
4) We need light to see things
5) Some light sources are bright, some are dim

COMMON MISCONCEPTIONS:
- Thinking the moon makes its own light (it reflects sunlight)
- Believing eyes make light to see
- Confusing things that reflect light with things that make light
- Thinking all glowing things are light sources

TEACHING SEQUENCE:
Start by asking what happens when you turn off all the lights. Discuss how we need light to see. Go on a light source hunt in the classroom. Categorize sources: natural vs artificial. Compare brightness of different sources (sun is brightest, candle is dimmer). Create a class chart of light sources at home and school. Discuss safety around light sources (don''t look at sun, some sources are hot).

DIFFERENTIATION:
Struggling learners: Focus on familiar examples first (sun, lamp), use pictures for sorting, contrast dark room vs light room experiences. Advanced learners: Explore what happens to light from sources (beams, shadows), investigate which sources are also hot, compare light sources throughout history.

VOCABULARY:
Light, source, natural, artificial, sun, lamp, flashlight, candle, bright, dim, glow.

CONNECTION TO FUTURE LEARNING:
Understanding light sources builds foundation for exploring light behavior (shadows, reflection) and eventually optics and energy in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Light Sources' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'How Light Travels' AND grade_level_min = 1),
  'How Light Travels Topic Guide', 'Understand that light travels in straight lines',
  'HOW LIGHT TRAVELS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that light comes from sources. Basic observation skills. Experience seeing light from flashlights or sunbeams.

LEARNING OBJECTIVES:
- Understand that light travels in straight lines
- Observe light beams and rays
- Recognize that light can be blocked by objects
- Understand that light cannot bend around corners on its own

KEY CONCEPTS:
1) Light travels in straight lines called rays or beams
2) Light travels very fast - faster than anything else
3) Light can go through some things (transparent) but not others (opaque)
4) When light is blocked, we cannot see behind the object
5) Light spreads out as it travels from a source

COMMON MISCONCEPTIONS:
- Thinking light can go around corners naturally
- Believing light only exists in beams we can see
- Confusing light traveling with light bouncing (reflection)
- Thinking dark things emit "darkness"

TEACHING SEQUENCE:
Use flashlights in a slightly darkened room to show light beams. Have students try to make light go around corners (they can''t!). Use tubes to show light travels straight through. Block light with hands and objects. Use dusty or misty air to make light beams visible. Draw lines from source to objects to represent light paths. Discuss sunbeams through windows.

DIFFERENTIATION:
Struggling learners: Use clear flashlight demonstrations, focus on blocking and allowing light, use hand motions to show straight paths. Advanced learners: Explore why we see beams in dusty air, investigate how light spreads out, begin exploring reflection.

VOCABULARY:
Light, travel, straight, ray, beam, path, block, through, transparent, opaque.

CONNECTION TO FUTURE LEARNING:
Understanding light travel prepares students for shadows and eventually reflection, refraction, and wave properties of light in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'How Light Travels' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Shadows' AND grade_level_min = 1),
  'Shadows Topic Guide', 'Explore how objects block light to make shadows',
  'SHADOWS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand light sources and that light travels in straight lines. Experience seeing their own shadows. Basic vocabulary for describing shapes and sizes.

LEARNING OBJECTIVES:
- Understand that shadows form when objects block light
- Observe that shadows have the same shape as the object
- Explore how shadows change with light position
- Recognize that shadows change throughout the day

KEY CONCEPTS:
1) A shadow forms when an object blocks light
2) Shadows appear on the opposite side from the light source
3) Shadows have the same basic shape as the object blocking light
4) Moving the light source changes the shadow''s size and direction
5) Outdoor shadows change as the sun moves across the sky

COMMON MISCONCEPTIONS:
- Thinking shadows are objects that can be touched
- Believing shadows are always the same size as the object
- Not understanding that shadows need both light and a blocking object
- Thinking shadows only happen outside

TEACHING SEQUENCE:
Go outside on a sunny day and trace shadows. Observe shadows at different times. Use flashlights and objects to create shadows inside. Experiment with moving the light source. Make shadow puppets to engage students. Discuss why we have no shadows at night (no strong light source). Connect to storytelling about shadows. Create shadow art by tracing and decorating.

DIFFERENTIATION:
Struggling learners: Focus on outdoor shadow play first, use familiar object shapes, trace and compare shadows to objects. Advanced learners: Predict shadow direction before testing, investigate why shadows are longer at certain times, create shadow sundials.

VOCABULARY:
Shadow, block, light, dark, shape, size, direction, trace, sun, flashlight, opposite.

CONNECTION TO FUTURE LEARNING:
Understanding shadows connects to Earth''s rotation, eclipses, and light properties explored in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Shadows' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sound and Vibrations' AND grade_level_min = 1),
  'Sound and Vibrations Topic Guide', 'Learn that sounds come from vibrating objects',
  'SOUND AND VIBRATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand the five senses and that we hear with our ears. Basic experience with musical instruments or household sounds. Vocabulary for describing sounds.

LEARNING OBJECTIVES:
- Understand that all sounds are made by vibrations
- Observe and feel vibrations when objects make sounds
- Recognize that when vibrations stop, sound stops
- Explore how different objects make different sounds

KEY CONCEPTS:
1) Sound is made when objects vibrate (move back and forth very fast)
2) We can often feel vibrations when things make sound
3) When vibrations stop, the sound stops
4) Different objects vibrate differently, making different sounds
5) Sound can travel through air to our ears

COMMON MISCONCEPTIONS:
- Thinking sound just "appears" without vibration
- Not realizing vibrations are happening because they''re too small to see
- Believing sound can only travel through air
- Thinking speakers or radios create sound from nothing

TEACHING SEQUENCE:
Start with visible vibrations: rubber bands, rulers on desk edges, tuning forks in water. Have students touch their throats while humming. Explore various instruments and feel vibrations. Use rice on a drum to show vibrations visually. Discuss what vibrates in different sound sources. Explore stopping sound by stopping vibrations. Connect to safety: why we cover ears for loud sounds.

DIFFERENTIATION:
Struggling learners: Focus on big, visible vibrations first (rubber bands, drums), use touch to feel vibrations, pair sounds with what makes them. Advanced learners: Investigate why different instruments sound different, explore how sound travels through different materials, begin exploring pitch.

VOCABULARY:
Sound, vibration, vibrate, shake, move, back and forth, drum, pluck, hum, throat, instrument.

CONNECTION TO FUTURE LEARNING:
Understanding sound and vibration prepares students for exploring pitch, volume, and eventually sound waves and acoustics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sound and Vibrations' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Loud and Soft Sounds' AND grade_level_min = 1),
  'Loud and Soft Sounds Topic Guide', 'Explore how to make different sounds',
  'LOUD AND SOFT SOUNDS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that sounds come from vibrations. Experience hearing various sounds. Basic vocabulary for comparing (loud, soft, quiet).

LEARNING OBJECTIVES:
- Distinguish between loud and soft sounds
- Understand that bigger vibrations make louder sounds
- Explore how to make the same object produce different volumes
- Recognize when loud sounds might be harmful

KEY CONCEPTS:
1) Sounds can be loud or soft (volume)
2) Bigger, stronger vibrations make louder sounds
3) Smaller, gentler vibrations make softer sounds
4) We can control how loud sounds are by how hard we hit, pluck, or blow
5) Very loud sounds can hurt our ears

COMMON MISCONCEPTIONS:
- Thinking all loud sounds are bad
- Believing you can''t control how loud something is
- Confusing loud/soft with high/low pitch
- Not understanding that same object can be loud or soft

TEACHING SEQUENCE:
Explore volume with drums—hit hard vs soft. Compare whispers to shouts. Use instruments to make loud and soft sounds. Discuss when we use loud sounds (emergencies, cheering) vs soft sounds (library, sleeping baby). Connect volume to force—more force, bigger vibrations, louder sound. Discuss protecting ears from very loud sounds. Create a sound volume chart.

DIFFERENTIATION:
Struggling learners: Focus on extreme contrasts (very loud vs very quiet), use familiar examples, practice making sounds at different volumes. Advanced learners: Measure and compare volumes with simple tools, investigate distance and volume, explore why some sounds carry far.

VOCABULARY:
Loud, soft, quiet, volume, force, gentle, strong, vibration, bigger, smaller, protect, ears.

CONNECTION TO FUTURE LEARNING:
Understanding volume control connects to amplitude in wave physics and sound engineering concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Loud and Soft Sounds' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: PLANTS AND ANIMALS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Plant Parts' AND grade_level_min = 1),
  'Plant Parts Topic Guide', 'Learn about roots, stems, leaves, and flowers',
  'PLANT PARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know that plants are living things with needs (water, light, air). Basic observation skills. Experience seeing real plants.

LEARNING OBJECTIVES:
- Identify the main parts of a plant: roots, stem, leaves, flower
- Describe the function of each plant part
- Observe plant parts in real plants
- Understand that all parts work together to keep the plant alive

KEY CONCEPTS:
1) Roots grow underground and absorb water and nutrients
2) Stems hold up the plant and carry water from roots to leaves
3) Leaves make food for the plant using sunlight (photosynthesis)
4) Flowers help the plant make seeds for new plants
5) All parts work together as a system

COMMON MISCONCEPTIONS:
- Thinking roots are just to hold the plant in place
- Believing plants eat dirt through roots
- Not recognizing that all plants have these parts (even if they look different)
- Thinking leaves are just for decoration

TEACHING SEQUENCE:
Examine real plants, carefully pulling one to see roots. Use a celery stalk in colored water to show water travel through stems. Discuss why leaves face the sun. Observe flowers and seeds. Create labeled plant diagrams. Grow plants from seeds and identify parts as they develop. Use songs or movements to remember parts and functions.

DIFFERENTIATION:
Struggling learners: Focus on one part at a time, use hands-on exploration, create simple diagrams with pictures. Advanced learners: Compare parts across different plants, investigate unusual plants (succulents, trees), explore why some plants have thorns or large leaves.

VOCABULARY:
Root, stem, leaves, flower, seeds, absorb, water, nutrients, sunlight, food, parts, function.

CONNECTION TO FUTURE LEARNING:
Understanding plant parts builds foundation for plant life cycles, photosynthesis, and plant adaptations in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plant Parts' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'How Plants Grow' AND grade_level_min = 1),
  'How Plants Grow Topic Guide', 'Understand what plants need to grow',
  'HOW PLANTS GROW - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know plant parts and their basic functions. Understanding that plants are living things. Prior experience caring for plants is helpful.

LEARNING OBJECTIVES:
- Identify what plants need to grow: water, sunlight, air, nutrients
- Observe plant growth over time
- Conduct simple experiments on plant needs
- Understand the stages of plant growth from seed

KEY CONCEPTS:
1) Plants need water, sunlight, air, and nutrients to grow
2) Seeds contain baby plants that sprout when conditions are right
3) Plants grow toward light
4) Without their needs met, plants will not grow well and may die
5) Growth takes time—plants don''t grow overnight

COMMON MISCONCEPTIONS:
- Thinking plants only need water
- Believing bigger plants need more water proportionally
- Not understanding that too much water can harm plants
- Thinking plants grow immediately after planting

TEACHING SEQUENCE:
Set up growing experiments: one plant with water, one without; one in light, one in dark. Observe and record changes daily. Discuss what happens. Plant seeds and track growth stages. Create growth journals with drawings. Measure plant height over time. Discuss what happens to plants in different seasons. Connect to gardening and farming.

DIFFERENTIATION:
Struggling learners: Focus on water as most visible need, use quick-growing seeds (beans), observe daily with guided questions. Advanced learners: Design their own experiments, track detailed measurements, explore what happens with different amounts of each need.

VOCABULARY:
Grow, growth, seed, sprout, seedling, water, sunlight, nutrients, soil, healthy, experiment, observe.

CONNECTION TO FUTURE LEARNING:
Understanding plant growth prepares students for life cycles, photosynthesis details, and agricultural science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'How Plants Grow' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Animal Body Parts' AND grade_level_min = 1),
  'Animal Body Parts Topic Guide', 'Learn how animals use their parts to eat, move, and stay safe',
  'ANIMAL BODY PARTS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know that animals are living things with needs. Basic vocabulary for naming body parts. Experience observing various animals.

LEARNING OBJECTIVES:
- Identify different animal body parts (legs, wings, fins, claws, teeth)
- Understand that body parts help animals survive
- Explain how specific parts help with eating, moving, or staying safe
- Compare how different animals use their body parts

KEY CONCEPTS:
1) Animals have body parts that help them survive
2) Some parts help animals move (legs, wings, fins, tails)
3) Some parts help animals eat (beaks, teeth, tongues)
4) Some parts help animals stay safe (shells, quills, camouflage)
5) Different animals have different parts based on their needs

COMMON MISCONCEPTIONS:
- Thinking all animals have the same basic parts
- Not recognizing specialized parts (echolocation, antennae)
- Believing animals choose their body parts
- Confusing learned behaviors with physical adaptations

TEACHING SEQUENCE:
Start with familiar animals: how does a dog use its legs? Its teeth? Its nose? Compare to other animals: how does a fish move differently? Use pictures and videos of diverse animals. Create body part function charts. Play matching games: part to function. Discuss how humans use their body parts. Explore unusual adaptations (elephant trunk, giraffe neck).

DIFFERENTIATION:
Struggling learners: Focus on familiar animals first, use movement activities (move like a fish, like a bird), simple comparisons. Advanced learners: Research unusual animal adaptations, explore why different habitats need different parts, compare extinct animal adaptations.

VOCABULARY:
Body parts, legs, wings, fins, tail, beak, teeth, claws, shell, fur, scales, survive, move, eat, protect.

CONNECTION TO FUTURE LEARNING:
Understanding animal body parts builds foundation for adaptations, habitats, and evolution concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Animal Body Parts' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Animal Behaviors' AND grade_level_min = 1),
  'Animal Behaviors Topic Guide', 'Explore how animals act to survive',
  'ANIMAL BEHAVIORS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand animal body parts and basic animal needs. Ability to observe and describe actions. Experience seeing animal behavior in real life or videos.

LEARNING OBJECTIVES:
- Identify behaviors that help animals survive
- Distinguish behaviors for finding food, staying safe, and caring for young
- Observe and describe animal behaviors
- Understand that some behaviors are learned, some are instincts

KEY CONCEPTS:
1) Behaviors are actions animals do
2) Some behaviors help animals find food (hunting, foraging)
3) Some behaviors help animals stay safe (hiding, running, playing dead)
4) Some behaviors help animals care for young (feeding babies, building nests)
5) Animals are born knowing some behaviors (instinct) but learn others

COMMON MISCONCEPTIONS:
- Thinking animals think like humans
- Believing all behaviors are chosen deliberately
- Not recognizing instinctive behaviors
- Confusing body parts with behaviors

TEACHING SEQUENCE:
Watch videos of animal behaviors in nature. Discuss what each animal is doing and why. Categorize behaviors: finding food, staying safe, caring for young. Act out animal behaviors through movement activities. Observe real animals if possible (class pet, birds outside, insects). Compare human behaviors to animal behaviors. Discuss seasonal behaviors like migration and hibernation.

DIFFERENTIATION:
Struggling learners: Focus on obvious behaviors (eating, running, hiding), use movement and role-play, pair videos with discussion. Advanced learners: Investigate complex behaviors (migration, hibernation), explore communication between animals, research specific animal behavior patterns.

VOCABULARY:
Behavior, action, hunt, forage, hide, escape, migrate, hibernate, instinct, learn, young, offspring, nest.

CONNECTION TO FUTURE LEARNING:
Understanding animal behaviors prepares students for deeper study of instincts, learned behaviors, and animal ecology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Animal Behaviors' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Parents and Babies' AND grade_level_min = 1),
  'Parents and Babies Topic Guide', 'Compare how baby animals are like their parents',
  'PARENTS AND BABIES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that living things have babies. Basic vocabulary for describing animals. Experience seeing parent and baby animals.

LEARNING OBJECTIVES:
- Recognize that baby animals grow to resemble their parents
- Compare physical features between parents and offspring
- Understand that babies need care from parents
- Observe that some babies look very different at first (metamorphosis)

KEY CONCEPTS:
1) Baby animals grow up to look like their parents
2) Young animals share features with their parents (fur color, body shape)
3) Baby animals need care: food, protection, warmth
4) Some babies look different at first but change (tadpoles, caterpillars)
5) Different animals care for babies in different ways

COMMON MISCONCEPTIONS:
- Thinking all babies look exactly like parents
- Not understanding metamorphosis as normal
- Believing all animal parents care for babies the same way
- Confusing adopted/pet behaviors with wild behaviors

TEACHING SEQUENCE:
Match baby animal pictures with parent pictures. Discuss what features are similar. Compare human families to animal families. Explore dramatic changes: tadpole to frog, caterpillar to butterfly. Discuss different types of parent care (mammals vs insects vs fish). Read stories about animal families. Create parent-baby comparison charts.

DIFFERENTIATION:
Struggling learners: Focus on mammals with obvious parent-baby similarities, use familiar animals, simple matching activities. Advanced learners: Research unusual life cycles, compare amount of parental care across species, investigate why some babies need more care than others.

VOCABULARY:
Parent, baby, offspring, young, similar, different, care, protect, feed, grow, change, metamorphosis.

CONNECTION TO FUTURE LEARNING:
Understanding parent-offspring relationships builds foundation for heredity, genetics, and life cycles in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parents and Babies' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: SKY PATTERNS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Sun' AND grade_level_min = 1),
  'The Sun Topic Guide', 'Learn about the sun and how it seems to move across the sky',
  'THE SUN - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that the sun provides light and heat. Basic concepts of day and night. Ability to observe and describe.

LEARNING OBJECTIVES:
- Understand that the sun is a star that provides light and heat
- Observe that the sun appears to move across the sky
- Recognize that the sun is always in the sky, even when we can''t see it
- Practice sun safety: never look directly at the sun

KEY CONCEPTS:
1) The sun is the closest star to Earth
2) The sun provides light and heat for Earth
3) The sun appears to move across the sky from east to west
4) The sun is always there—clouds just block our view
5) SAFETY: Never look directly at the sun—it can hurt your eyes

COMMON MISCONCEPTIONS:
- Thinking the sun actually moves around Earth (Earth rotates)
- Believing the sun disappears at night
- Thinking the sun is small because it looks small
- Not understanding the sun is a star like other stars

TEACHING SEQUENCE:
SAFETY FIRST: Establish rule about never looking at sun. Observe shadows at different times to track sun''s apparent movement. Discuss what the sun gives us: light, warmth. Compare sunny days to cloudy days. Use models to show why sun seems to move (Earth turning). Create sun art showing its importance. Discuss why the sun is special compared to other stars (it''s closest).

DIFFERENTIATION:
Struggling learners: Focus on observable effects (warmth, shadows), use movement activities for Earth rotation, emphasize safety. Advanced learners: Explore why sun looks bigger than other stars (distance), investigate sunrise/sunset directions, compare sun to other stars.

VOCABULARY:
Sun, star, light, heat, warmth, sky, move, rise, set, east, west, safety, rotate.

CONNECTION TO FUTURE LEARNING:
Understanding the sun prepares students for studying day/night, seasons, the solar system, and energy sources in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Sun' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Day and Night' AND grade_level_min = 1),
  'Day and Night Topic Guide', 'Understand why we have day and night',
  'DAY AND NIGHT - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that the sun provides light. Basic concept that days have daytime and nighttime. Experience with daily routines.

LEARNING OBJECTIVES:
- Understand that Earth''s rotation causes day and night
- Recognize that one rotation takes about 24 hours
- Connect day and night to activities and routines
- Understand that when it''s day here, it''s night somewhere else

KEY CONCEPTS:
1) Earth spins (rotates) like a top
2) The side facing the sun has day; the opposite side has night
3) One complete spin takes about 24 hours
4) Daytime and nighttime affect what we do (sleep at night, play in day)
5) Different places on Earth have day and night at different times

COMMON MISCONCEPTIONS:
- Thinking the sun moves around Earth
- Believing it''s night everywhere at the same time
- Confusing day/night with seasons
- Thinking night is when the sun turns off

TEACHING SEQUENCE:
Use a globe and flashlight to demonstrate day and night. Students act as Earth, slowly spinning while facing a "sun" (lamp). Discuss daily routines: what do we do in daytime? Nighttime? Video call or discuss how it''s daytime in other countries when it''s our nighttime. Create day/night comparison charts. Use movement to act out Earth rotating.

DIFFERENTIATION:
Struggling learners: Focus on observable patterns (sun up = day, sun down = night), use hands-on globe exploration, connect to familiar routines. Advanced learners: Explore time zones, investigate midnight sun in polar regions, track sunrise/sunset times.

VOCABULARY:
Day, night, rotate, spin, Earth, 24 hours, daytime, nighttime, facing, opposite, time zone.

CONNECTION TO FUTURE LEARNING:
Understanding day and night builds foundation for time zones, Earth''s rotation, and understanding of our solar system in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Day and Night' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Moon' AND grade_level_min = 1),
  'The Moon Topic Guide', 'Observe how the moon changes shape',
  'THE MOON - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand day and night and that Earth rotates. Ability to observe and track changes. Basic understanding that the moon is in the sky.

LEARNING OBJECTIVES:
- Observe that the moon appears to change shape over time
- Name some moon phases: full moon, half moon, crescent, new moon
- Understand that the moon doesn''t actually change—we see different amounts of the lit side
- Track moon observations over several weeks

KEY CONCEPTS:
1) The moon orbits (goes around) Earth
2) The sun lights up the moon—moon doesn''t make its own light
3) We see different amounts of the lit side, making it look like different shapes
4) The pattern of moon shapes repeats about every month
5) Moon phases are predictable

COMMON MISCONCEPTIONS:
- Thinking the moon creates its own light
- Believing pieces of the moon disappear and reappear
- Thinking the moon is only visible at night
- Confusing moon phases with eclipses

TEACHING SEQUENCE:
Track the moon nightly for several weeks using a moon journal. Discuss what students observe. Use a ball and flashlight to model how we see different amounts of the lit side. Name the main phases. Use Oreo cookies or paper plates to show phases. Discuss that the moon is always whole—we just see different parts. Explore full moon folklore and stories.

DIFFERENTIATION:
Struggling learners: Focus on two phases first (full and new), use clear visual models, track moon with picture journals. Advanced learners: Predict upcoming phases, explore why moon is visible during day sometimes, investigate moon facts (craters, size, distance).

VOCABULARY:
Moon, phase, full moon, new moon, half moon, crescent, orbit, lit, reflect, cycle, month.

CONNECTION TO FUTURE LEARNING:
Understanding moon phases prepares students for studying orbits, tides, and the Earth-Moon-Sun system in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Moon' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Seasons and Daylight' AND grade_level_min = 1),
  'Seasons and Daylight Topic Guide', 'Learn why days are longer in summer and shorter in winter',
  'SEASONS AND DAYLIGHT - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know the four seasons. Understanding of day and night and Earth''s rotation. Basic concept that seasons bring different weather.

LEARNING OBJECTIVES:
- Observe that daylight hours change throughout the year
- Recognize that summer has longer days, winter has shorter days
- Connect daylight changes to seasons
- Begin to understand that Earth''s tilt causes seasons

KEY CONCEPTS:
1) In summer, the sun rises earlier and sets later—more daylight hours
2) In winter, the sun rises later and sets earlier—fewer daylight hours
3) Spring and fall are in between
4) Earth tilts toward or away from the sun, causing seasons
5) More sunlight means more warmth (summer)

COMMON MISCONCEPTIONS:
- Thinking summer is when Earth is closer to the sun
- Believing daylight hours are the same all year
- Confusing weather with seasons
- Thinking everyone has summer at the same time

TEACHING SEQUENCE:
Track sunrise and sunset times across seasons. Compare: in summer it''s light when you wake up; in winter it might be dark. Use a globe and lamp to show how tilt affects how much sunlight a place gets. Discuss activities possible because of longer summer days. Create a daylight comparison chart for different months. Connect to personal experiences of different seasons.

DIFFERENTIATION:
Struggling learners: Focus on observable differences (dark mornings in winter, light evenings in summer), use personal experiences, visual timelines. Advanced learners: Research solstices, investigate why seasons are opposite in different hemispheres, track actual sunrise/sunset data.

VOCABULARY:
Season, daylight, sunrise, sunset, longer, shorter, tilt, summer, winter, spring, fall, hours.

CONNECTION TO FUTURE LEARNING:
Understanding seasonal daylight changes prepares students for studying Earth''s tilt, revolution, and solar energy concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Seasons and Daylight' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;
