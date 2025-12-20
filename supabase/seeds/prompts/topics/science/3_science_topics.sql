-- Grade 3 Science Topic Prompts
-- Comprehensive teaching guides for each topic

-- =====================================================
-- UNIT: FORCES AND MOTION
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Balanced and Unbalanced Forces' AND grade_level_min = 3),
  'Balanced and Unbalanced Forces Topic Guide', 'Learn how forces affect objects at rest and in motion',
  'BALANCED AND UNBALANCED FORCES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand pushes and pulls from earlier grades. Basic vocabulary for motion (move, stop, speed). Experience observing objects in motion.

LEARNING OBJECTIVES:
- Understand that forces have direction and strength
- Distinguish between balanced forces (no motion change) and unbalanced forces (motion changes)
- Predict what happens when forces are applied
- Use force diagrams to represent forces on objects

KEY CONCEPTS:
1) Forces are pushes or pulls that can change motion
2) Multiple forces can act on an object at the same time
3) Balanced forces are equal in strength but opposite in direction—no motion change
4) Unbalanced forces cause objects to start moving, stop, or change direction
5) An object at rest with balanced forces stays at rest
6) An object in motion with balanced forces continues at the same speed

COMMON MISCONCEPTIONS:
- Thinking an object at rest has no forces on it
- Believing only moving objects have forces acting on them
- Confusing balanced forces with no forces
- Thinking objects naturally slow down without a force (ignoring friction)

TEACHING SEQUENCE:
Use tug-of-war to demonstrate balanced (even teams) vs unbalanced (uneven teams) forces. Draw force arrows on diagrams of various situations. Predict outcomes before testing. Use spring scales to measure and compare forces. Explore friction as an unseen force. Connect to everyday examples: pushing a heavy box, balancing on a seesaw.

DIFFERENTIATION:
Struggling learners: Use physical demonstrations extensively, focus on clear balanced/unbalanced examples, simple force arrow diagrams. Advanced learners: Calculate net forces, investigate multiple forces in different directions, explore inertia concepts.

VOCABULARY:
Force, balanced, unbalanced, motion, direction, strength, push, pull, at rest, change, arrow diagram, net force.

CONNECTION TO FUTURE LEARNING:
Understanding balanced and unbalanced forces builds foundation for Newton''s laws of motion in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Balanced and Unbalanced Forces' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Friction' AND grade_level_min = 3),
  'Friction Topic Guide', 'Explore how friction affects motion',
  'FRICTION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand balanced and unbalanced forces. Experience with pushes and pulls. Vocabulary for describing surfaces (rough, smooth).

LEARNING OBJECTIVES:
- Understand that friction is a force that opposes motion
- Recognize that friction occurs when surfaces touch
- Compare friction on different surfaces
- Explain how friction can be helpful or harmful

KEY CONCEPTS:
1) Friction is a force that acts against motion
2) Friction happens when two surfaces rub together
3) Rough surfaces create more friction than smooth surfaces
4) Friction slows things down and can stop motion
5) Friction produces heat
6) Sometimes we want friction (walking, braking) and sometimes we want less (sliding, machinery)

COMMON MISCONCEPTIONS:
- Thinking friction only happens with moving objects
- Believing smooth surfaces have no friction
- Confusing air resistance with surface friction
- Thinking friction is always bad

TEACHING SEQUENCE:
Slide objects down ramps with different surfaces (carpet, plastic, sandpaper). Measure and compare. Rub hands together to feel heat from friction. Explore real-world examples: car brakes, ice skating, hiking shoes vs dress shoes. Design experiments to reduce or increase friction. Discuss engineers who design for friction control.

DIFFERENTIATION:
Struggling learners: Use hands-on surface comparisons, focus on obvious examples (ice vs carpet), explore through touch. Advanced learners: Investigate lubricants and ball bearings, explore air friction, measure friction quantitatively.

VOCABULARY:
Friction, surface, rough, smooth, resist, oppose, rub, heat, grip, slide, reduce, increase.

CONNECTION TO FUTURE LEARNING:
Understanding friction prepares students for more complex mechanics, engineering design, and energy transformations in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Friction' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Gravity' AND grade_level_min = 3),
  'Gravity Topic Guide', 'Understand how gravity pulls objects toward Earth',
  'GRAVITY - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand forces and that forces cause motion changes. Experience with dropping and throwing objects. Basic concept that things fall down.

LEARNING OBJECTIVES:
- Understand gravity as a force pulling objects toward Earth
- Recognize that gravity acts on all objects all the time
- Explore how gravity affects motion (falling, rolling downhill)
- Compare gravity''s effect on objects of different masses

KEY CONCEPTS:
1) Gravity is a pulling force between all objects with mass
2) Earth''s gravity pulls everything toward Earth''s center
3) Gravity is why things fall when dropped
4) All objects fall at the same rate (without air resistance)
5) Gravity affects rolling, jumping, and all vertical motion
6) Weight is a measure of gravity''s pull on an object

COMMON MISCONCEPTIONS:
- Thinking heavier objects fall faster (without air resistance, they don''t)
- Believing gravity only works when things are falling
- Thinking gravity disappears in space (it just weakens with distance)
- Confusing mass and weight

TEACHING SEQUENCE:
Drop objects of different masses and observe. Discuss why a feather falls slowly (air resistance, not less gravity). Use videos of moon and Earth drops. Explore gravity in everyday life: keeping us on ground, making balls come down, water flowing downhill. Compare weight on Earth vs Moon. Investigate how gravity affects sports and games.

DIFFERENTIATION:
Struggling learners: Focus on everyday gravity experiences, use simple drop experiments, connect to personal activities. Advanced learners: Research gravity on other planets, explore orbit as continuous falling, investigate escape velocity concepts.

VOCABULARY:
Gravity, pull, mass, weight, fall, attract, Earth, center, force, drop, accelerate.

CONNECTION TO FUTURE LEARNING:
Understanding gravity prepares students for studying orbits, planetary motion, and Newton''s laws in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Gravity' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Magnets' AND grade_level_min = 3),
  'Magnets Topic Guide', 'Investigate magnetic forces and design solutions',
  'MAGNETS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that forces can push and pull. Basic vocabulary for describing attractions and repulsions. Experience with common magnets.

LEARNING OBJECTIVES:
- Understand that magnets have poles (north and south)
- Explore magnetic attraction and repulsion
- Identify materials that magnets attract (magnetic materials)
- Design solutions using magnetic forces

KEY CONCEPTS:
1) Magnets have two poles: north and south
2) Opposite poles attract (N-S); like poles repel (N-N, S-S)
3) Magnetic force can act without touching (force at a distance)
4) Magnets attract some metals (iron, nickel, cobalt) but not all
5) Magnetic force can pass through some materials
6) Magnets can be used to solve problems

COMMON MISCONCEPTIONS:
- Thinking all metals are magnetic
- Believing magnets only attract, not repel
- Confusing static electricity with magnetism
- Thinking bigger magnets are always stronger

TEACHING SEQUENCE:
Explore magnets hands-on: test what they attract. Investigate poles: observe attraction and repulsion. Mark poles and test patterns. Explore magnetic force through barriers (paper, plastic, glass). Design magnetic solutions: sorting metals, holding things, simple games. Connect to real-world uses: refrigerator magnets, compasses, maglev trains.

DIFFERENTIATION:
Struggling learners: Extensive hands-on exploration, focus on attract/not attract first, simple sorting activities. Advanced learners: Investigate electromagnets, explore magnetic fields with iron filings, research maglev technology.

VOCABULARY:
Magnet, pole, north, south, attract, repel, magnetic, force, field, compass, iron, distance.

CONNECTION TO FUTURE LEARNING:
Understanding magnets prepares students for studying electromagnetism, motors, and electricity concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Magnets' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Predicting Motion' AND grade_level_min = 3),
  'Predicting Motion Topic Guide', 'Use patterns to predict future motion',
  'PREDICTING MOTION - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand forces including friction, gravity, and magnetic forces. Experience with motion experiments. Ability to observe and record patterns.

LEARNING OBJECTIVES:
- Observe motion patterns in various situations
- Use past patterns to predict future motion
- Understand that the same forces produce predictable results
- Apply force knowledge to explain and predict motion

KEY CONCEPTS:
1) Motion patterns can be observed and recorded
2) Past patterns help predict future motion
3) If forces stay the same, motion patterns repeat
4) Changes in force change the motion pattern
5) Scientists use patterns to predict outcomes
6) Testing predictions confirms or revises understanding

COMMON MISCONCEPTIONS:
- Thinking motion is random and unpredictable
- Believing only simple motions can be predicted
- Not connecting force changes to motion changes
- Expecting perfect predictions without considering variables

TEACHING SEQUENCE:
Set up repeated motion experiments: pendulums, ramps, collisions. Record patterns over multiple trials. Predict next outcomes based on patterns. Change variables (force, surface, angle) and predict how motion changes. Compare predictions to results. Connect to real-world predictions: sports, traffic, weather. Discuss why scientists value predictability.

DIFFERENTIATION:
Struggling learners: Use simple repeating motions, focus on one variable at a time, visual pattern recording. Advanced learners: Investigate complex motions, multiple variables, quantitative predictions.

VOCABULARY:
Predict, pattern, motion, observe, record, repeat, variable, outcome, test, confirm, trial.

CONNECTION TO FUTURE LEARNING:
Understanding motion prediction builds scientific method skills and prepares students for physics concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Predicting Motion' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: LIFE CYCLES
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Animal Life Cycles' AND grade_level_min = 3),
  'Animal Life Cycles Topic Guide', 'Explore how animals grow and change through life stages',
  'ANIMAL LIFE CYCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that living things grow and change. Basic knowledge of parents and offspring. Vocabulary for life stages.

LEARNING OBJECTIVES:
- Understand that animals go through predictable life stages
- Identify major stages in various animal life cycles
- Compare life cycles of different animals
- Recognize that life cycles repeat across generations

KEY CONCEPTS:
1) A life cycle shows how an organism grows, develops, and reproduces
2) Most animals are born, grow, reproduce, and die
3) Different animals have different numbers of life stages
4) Some animals care for young; others do not
5) Life cycles repeat—offspring become adults who have offspring
6) Life cycle stages can look very different (egg, larva, adult)

COMMON MISCONCEPTIONS:
- Thinking all animals have the same life cycle
- Believing animals are born looking like adults
- Confusing life cycle with individual growth
- Not understanding that life cycles continue across generations

TEACHING SEQUENCE:
Study familiar animal life cycles: chickens, dogs, fish. Create life cycle diagrams showing stages. Compare different animals: some hatch from eggs, some are born live. Observe real organisms when possible (classroom fish, butterfly kits). Discuss how humans care for young vs fish that don''t. Connect to zoo and wildlife observations.

DIFFERENTIATION:
Struggling learners: Focus on familiar animals with clear stages, use visual life cycle wheels, hands-on diagram creation. Advanced learners: Research unusual life cycles, compare vertebrate vs invertebrate patterns, investigate environmental effects on development.

VOCABULARY:
Life cycle, stage, birth, growth, adult, reproduce, offspring, egg, hatch, generation, develop, mature.

CONNECTION TO FUTURE LEARNING:
Understanding animal life cycles prepares students for studying metamorphosis, reproduction, and evolution in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Animal Life Cycles' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Metamorphosis' AND grade_level_min = 3),
  'Metamorphosis Topic Guide', 'Learn about butterflies, frogs, and other animals that transform',
  'METAMORPHOSIS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand animal life cycles. Basic observation skills. Vocabulary for describing change and transformation.

LEARNING OBJECTIVES:
- Understand that metamorphosis involves dramatic body changes
- Compare complete metamorphosis (butterfly) to incomplete metamorphosis (grasshopper)
- Observe metamorphosis in real organisms when possible
- Explain why metamorphosis benefits some animals

KEY CONCEPTS:
1) Metamorphosis means dramatic change in body form during development
2) Complete metamorphosis: egg → larva → pupa → adult (butterflies, beetles)
3) Incomplete metamorphosis: egg → nymph → adult (grasshoppers, dragonflies)
4) Frogs undergo metamorphosis: egg → tadpole → froglet → adult frog
5) Young and adult forms often live in different habitats and eat different foods
6) Metamorphosis allows one species to use different resources at different life stages

COMMON MISCONCEPTIONS:
- Thinking caterpillars and butterflies are different animals
- Believing all insects undergo complete metamorphosis
- Confusing gradual growth with metamorphosis
- Thinking metamorphosis happens instantly

TEACHING SEQUENCE:
Use butterfly life cycle kits for live observation. Compare butterfly and grasshopper development. Watch time-lapse videos of metamorphosis. Create stage-by-stage diagrams. Study frog metamorphosis. Discuss why having different forms at different stages is useful. Compare what caterpillars eat vs what butterflies eat.

DIFFERENTIATION:
Struggling learners: Focus on one clear example (butterfly), use videos and pictures, hands-on life cycle models. Advanced learners: Research diverse metamorphosis patterns, investigate hormonal triggers, compare evolutionary advantages.

VOCABULARY:
Metamorphosis, complete, incomplete, larva, pupa, chrysalis, nymph, tadpole, transform, stage, develop.

CONNECTION TO FUTURE LEARNING:
Understanding metamorphosis prepares students for studying adaptation, hormones, and evolutionary biology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Metamorphosis' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Plant Life Cycles' AND grade_level_min = 3),
  'Plant Life Cycles Topic Guide', 'Study how plants grow from seeds to adults',
  'PLANT LIFE CYCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand plant parts and what plants need to grow. Experience growing plants from seeds. Basic life cycle vocabulary.

LEARNING OBJECTIVES:
- Describe the stages of a flowering plant life cycle
- Understand how seeds are formed and dispersed
- Explain the role of pollination in plant reproduction
- Compare plant life cycles to animal life cycles

KEY CONCEPTS:
1) Plant life cycle: seed → seedling → adult plant → flower → fruit → seed
2) Flowers contain reproductive parts (stamens, pistils)
3) Pollination transfers pollen to allow seed formation
4) Fruits protect and help disperse seeds
5) Seeds contain baby plants and food for starting growth
6) Some plants live one year (annuals); others live many years (perennials)

COMMON MISCONCEPTIONS:
- Thinking all plants grow from seeds (some grow from cuttings, bulbs)
- Not understanding flowers'' reproductive role
- Believing fruits are only things we eat
- Confusing pollination with fertilization

TEACHING SEQUENCE:
Grow plants from seeds and observe all stages. Dissect flowers to find parts. Study fruit formation around seeds. Investigate how seeds travel (wind, water, animals). Compare annual and perennial plants. Create plant life cycle diagrams. Connect to food production—we eat parts from different stages.

DIFFERENTIATION:
Struggling learners: Focus on fast-growing plants (beans), clear stage observations, simple diagrams. Advanced learners: Investigate flower structures in detail, explore plant hormones, research agricultural applications.

VOCABULARY:
Life cycle, seed, seedling, germinate, flower, pollination, pollen, fruit, disperse, annual, perennial, reproduce.

CONNECTION TO FUTURE LEARNING:
Understanding plant life cycles prepares students for studying reproduction, genetics, and agriculture in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plant Life Cycles' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Inherited Traits' AND grade_level_min = 3),
  'Inherited Traits Topic Guide', 'Understand how traits pass from parents to offspring',
  'INHERITED TRAITS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand life cycles and that offspring come from parents. Vocabulary for describing physical characteristics. Observation of similarities between family members.

LEARNING OBJECTIVES:
- Understand that organisms inherit traits from parents
- Identify examples of inherited traits in plants and animals
- Distinguish inherited traits from learned behaviors
- Explain why offspring resemble but aren''t identical to parents

KEY CONCEPTS:
1) Traits are characteristics of organisms (eye color, height, leaf shape)
2) Inherited traits are passed from parents to offspring through genes
3) Offspring have a mix of traits from both parents
4) Inherited traits are different from learned behaviors (language, skills)
5) Within a species, individuals share many traits but have variations
6) Genes carry information that determines inherited traits

COMMON MISCONCEPTIONS:
- Thinking all similarities between parents and offspring are genetic
- Confusing inherited traits with learned behaviors
- Believing offspring are exact copies of one parent
- Thinking traits can be changed and then inherited

TEACHING SEQUENCE:
Survey class traits (attached earlobes, tongue rolling). Compare to parents where possible. Study animal families—why do puppies look like their parents? Distinguish inherited (eye color) from learned (speaking, skills). Use simulations with colored chips to show trait mixing. Investigate plant inheritance through seed characteristics.

DIFFERENTIATION:
Struggling learners: Focus on obvious visible traits, use family photos, simple sorting of inherited vs learned. Advanced learners: Introduce basic genetics concepts, explore dominant/recessive traits, research selective breeding.

VOCABULARY:
Trait, inherited, gene, offspring, parent, characteristic, similar, different, learned, behavior, variation.

CONNECTION TO FUTURE LEARNING:
Understanding inherited traits prepares students for genetics, DNA, and evolution concepts in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inherited Traits' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Variations' AND grade_level_min = 3),
  'Variations Topic Guide', 'Learn why organisms of the same species look different',
  'VARIATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand inherited traits. Experience observing differences among similar organisms. Basic concept of species.

LEARNING OBJECTIVES:
- Understand that individuals within a species show variation
- Identify types of variations (size, color, pattern)
- Explain that variations come from different trait combinations
- Recognize that some variations help survival

KEY CONCEPTS:
1) Members of the same species share major characteristics but differ in details
2) Variations include differences in size, color, pattern, behavior
3) Variations result from different combinations of inherited traits
4) Environment can also influence how traits are expressed
5) Some variations help organisms survive better (natural selection)
6) Variation is natural and important for species survival

COMMON MISCONCEPTIONS:
- Thinking all members of a species should look identical
- Believing variations are mistakes or problems
- Confusing species differences with individual variations
- Thinking all variations are helpful

TEACHING SEQUENCE:
Observe variations in a set of similar objects (leaves from one tree, shells, seeds). Measure and compare. Study human variations in the class (height, hair color). Discuss how variations might help animals survive (camouflage, speed). Connect to breeding: dogs all one species with huge variation. Investigate why variation matters for survival.

DIFFERENTIATION:
Struggling learners: Use concrete examples with measurements, focus on visible variations, hands-on sorting. Advanced learners: Explore natural selection concepts, investigate how environment affects variation, research endangered species with low variation.

VOCABULARY:
Variation, difference, species, individual, characteristic, survive, advantage, environment, diversity, range.

CONNECTION TO FUTURE LEARNING:
Understanding variation prepares students for studying natural selection, evolution, and biodiversity in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Variations' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: ECOSYSTEMS
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Producers and Consumers' AND grade_level_min = 3),
  'Producers and Consumers Topic Guide', 'Identify organisms that make food and organisms that eat',
  'PRODUCERS AND CONSUMERS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand that living things need energy. Basic knowledge of plants and animals. Vocabulary for food chains from earlier grades.

LEARNING OBJECTIVES:
- Define producers as organisms that make their own food
- Define consumers as organisms that eat other organisms
- Classify organisms as producers or consumers
- Understand the energy relationship between producers and consumers

KEY CONCEPTS:
1) Producers (plants, algae) make their own food using sunlight
2) Consumers cannot make food—they must eat other organisms
3) Herbivores eat plants; carnivores eat animals; omnivores eat both
4) All consumers depend on producers directly or indirectly
5) Decomposers break down dead organisms and recycle nutrients
6) Energy flows from sun → producers → consumers

COMMON MISCONCEPTIONS:
- Thinking consumers "make" energy from food
- Believing all green things are producers
- Forgetting that consumers include tiny organisms, not just animals
- Not understanding decomposers'' essential role

TEACHING SEQUENCE:
Classify organisms from a habitat: which make food, which eat food? Create a producer/consumer sorting activity. Discuss how consumers get energy from producers (directly or through other consumers). Introduce decomposers as special consumers that eat dead things. Create ecosystem diagrams showing roles. Connect to food students eat.

DIFFERENTIATION:
Struggling learners: Use familiar organisms, visual sorting, focus on producers vs consumers first before subcategories. Advanced learners: Research unusual producers (chemosynthetic bacteria), investigate decomposer importance, create complex food web diagrams.

VOCABULARY:
Producer, consumer, herbivore, carnivore, omnivore, decomposer, energy, food, photosynthesis, organism.

CONNECTION TO FUTURE LEARNING:
Understanding producers and consumers prepares students for food webs, energy pyramids, and ecosystem dynamics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Producers and Consumers' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Food Chains' AND grade_level_min = 3 AND grade_level_max = 3),
  'Food Chains (Grade 3) Topic Guide', 'Trace the flow of energy from sun to plants to animals',
  'FOOD CHAINS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand producers and consumers. Basic food chain concepts from Grade 2. Vocabulary for organism relationships.

LEARNING OBJECTIVES:
- Create food chains showing energy flow
- Explain that energy starts with the sun
- Trace energy through multiple organisms
- Predict what happens if a link in the food chain is removed

KEY CONCEPTS:
1) A food chain shows a single pathway of energy flow
2) Energy starts with the sun and is captured by producers
3) Arrows show direction of energy flow (who is eaten by whom)
4) Energy is lost at each step (heat), so chains are usually short
5) Removing one organism affects others in the chain
6) Most organisms are part of multiple food chains

COMMON MISCONCEPTIONS:
- Drawing arrows toward what is eaten (arrows show energy flow)
- Thinking food chains are literal chains
- Believing energy is created, not transferred
- Assuming longer chains mean more energy

TEACHING SEQUENCE:
Build food chains from organism cards. Start every chain with the sun. Trace energy: sun → grass → rabbit → fox. Discuss what happens if grass disappears. Compare food chains from different habitats. Create chains of different lengths. Introduce the idea that real ecosystems have many connected chains.

DIFFERENTIATION:
Struggling learners: Start with two-step chains, use clear arrows, focus on familiar organisms. Advanced learners: Create multiple chains for one ecosystem, investigate energy loss at each level, introduce food webs.

VOCABULARY:
Food chain, energy, flow, transfer, arrow, link, sun, producer, consumer, predator, prey.

CONNECTION TO FUTURE LEARNING:
Understanding food chains prepares students for food webs, energy pyramids, and ecosystem dynamics in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Food Chains' AND grade_level_min = 3 AND grade_level_max = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Food Webs' AND grade_level_min = 3),
  'Food Webs Topic Guide', 'Understand complex feeding relationships in ecosystems',
  'FOOD WEBS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand food chains. Knowledge of producers, consumers, and decomposers. Ability to trace energy flow.

LEARNING OBJECTIVES:
- Understand that food webs are interconnected food chains
- Create food web diagrams for an ecosystem
- Analyze how changes affect the whole web
- Recognize that most organisms eat and are eaten by multiple species

KEY CONCEPTS:
1) Food webs show all feeding relationships in an ecosystem
2) Most consumers eat multiple food sources
3) Most organisms are food for multiple predators
4) Food webs are more realistic than single food chains
5) Changes in one population affect many others
6) Food webs show ecosystem complexity and interconnection

COMMON MISCONCEPTIONS:
- Thinking each organism has only one food source
- Believing removing one species only affects its direct connections
- Confusing web complexity with ecosystem health
- Assuming top predators are most important

TEACHING SEQUENCE:
Start with one food chain, then add another connecting organism. Build webs gradually, seeing connections form. Use string or yarn to physically create webs. Pull out one species and see what''s affected. Compare simple vs complex food webs. Analyze real ecosystem webs from research.

DIFFERENTIATION:
Struggling learners: Build from simple chains, use organism cards with string, focus on direct connections. Advanced learners: Analyze energy flow through web, investigate keystone species, model population changes.

VOCABULARY:
Food web, interconnected, relationship, ecosystem, population, species, affect, connection, network, complexity.

CONNECTION TO FUTURE LEARNING:
Understanding food webs prepares students for ecosystem modeling, population dynamics, and environmental science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Food Webs' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Adaptations' AND grade_level_min = 3),
  'Adaptations Topic Guide', 'Learn how organisms are suited to their environments',
  'ADAPTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand habitats and organisms'' needs. Knowledge of body parts and behaviors. Vocabulary for describing features.

LEARNING OBJECTIVES:
- Define adaptation as a trait that helps an organism survive
- Identify physical adaptations (body parts)
- Identify behavioral adaptations (actions)
- Explain how specific adaptations help organisms in their habitats

KEY CONCEPTS:
1) Adaptations are traits that help organisms survive in their environment
2) Physical adaptations include body structures (thick fur, sharp claws, camouflage)
3) Behavioral adaptations include actions (migration, hibernation, hunting strategies)
4) Adaptations develop over many generations, not within one lifetime
5) Organisms are adapted to their specific habitats
6) When environments change, organisms with helpful adaptations survive better

COMMON MISCONCEPTIONS:
- Thinking organisms choose their adaptations
- Believing adaptations develop quickly in response to need
- Confusing learned behaviors with inherited adaptations
- Assuming all traits are adaptations

TEACHING SEQUENCE:
Match organisms to habitats and discuss their features. Compare polar bear and desert lizard—what traits help each survive? Explore camouflage through activities. Discuss behavioral adaptations: why do birds migrate? Research unusual adaptations. Design imaginary organisms with adaptations for specific environments.

DIFFERENTIATION:
Struggling learners: Focus on obvious physical adaptations, use matching activities, explore one habitat at a time. Advanced learners: Investigate adaptation evolution, explore trade-offs in adaptations, research convergent evolution.

VOCABULARY:
Adaptation, survive, physical, behavioral, trait, environment, habitat, camouflage, predator, prey, evolve.

CONNECTION TO FUTURE LEARNING:
Understanding adaptations prepares students for studying natural selection, evolution, and ecology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adaptations' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Ecosystem Changes' AND grade_level_min = 3),
  'Ecosystem Changes Topic Guide', 'Explore how changes affect living things',
  'ECOSYSTEM CHANGES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand food webs and adaptations. Basic knowledge of habitats. Vocabulary for describing environmental changes.

LEARNING OBJECTIVES:
- Identify natural changes in ecosystems (fire, flood, drought, seasons)
- Identify human-caused changes (pollution, habitat destruction, introduction of species)
- Predict how changes affect food webs and populations
- Explain how some organisms survive changes better than others

KEY CONCEPTS:
1) Ecosystems are always changing
2) Natural changes include seasons, weather events, fires, disease
3) Human activities cause many ecosystem changes
4) When habitat changes, organisms must adapt, move, or die
5) Some changes are slow; others are sudden
6) Changes to one population affect others in the food web

COMMON MISCONCEPTIONS:
- Thinking ecosystems should stay the same
- Believing all changes are bad
- Assuming organisms can quickly adapt to any change
- Not connecting human actions to ecosystem effects

TEACHING SEQUENCE:
Discuss seasonal changes and how organisms respond (migration, hibernation). Explore what happens after a fire (some plants actually benefit). Study invasive species and their effects. Investigate local environmental changes. Model what happens when a food web member disappears. Discuss conservation as managing change.

DIFFERENTIATION:
Struggling learners: Focus on familiar seasonal changes, use before/after comparisons, simple cause and effect. Advanced learners: Research specific ecosystem disruptions, analyze climate change effects, design conservation solutions.

VOCABULARY:
Change, ecosystem, natural, human-caused, adapt, survive, population, invasive, conservation, habitat, pollution.

CONNECTION TO FUTURE LEARNING:
Understanding ecosystem changes prepares students for environmental science, conservation biology, and climate science in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ecosystem Changes' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: WEATHER AND CLIMATE
-- =====================================================

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Measuring Weather' AND grade_level_min = 3),
  'Measuring Weather Topic Guide', 'Use tools to measure temperature, wind, and precipitation',
  'MEASURING WEATHER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should have experience observing weather. Basic familiarity with weather vocabulary. Understanding of measurement concepts.

LEARNING OBJECTIVES:
- Use thermometers to measure temperature accurately
- Measure precipitation using rain gauges
- Determine wind speed and direction using appropriate tools
- Record weather data systematically

KEY CONCEPTS:
1) Weather can be measured precisely using instruments
2) Thermometers measure temperature in degrees
3) Rain gauges measure precipitation in inches or centimeters
4) Anemometers measure wind speed; wind vanes show direction
5) Accurate measurement requires proper technique
6) Repeated measurements over time reveal patterns

COMMON MISCONCEPTIONS:
- Thinking weather observation doesn''t require precise measurement
- Misreading thermometer scales
- Not understanding that measurement tools need proper placement
- Confusing different units of measurement

TEACHING SEQUENCE:
Set up a class weather station. Learn to use each tool correctly. Practice reading thermometers. Create rain gauges and track precipitation. Observe wind with flags and simple anemometers. Record data daily in weather journals. Compare class measurements to official weather reports.

DIFFERENTIATION:
Struggling learners: Focus on one tool at a time, use simplified scales, guided recording sheets. Advanced learners: Compare multiple measurement methods, investigate tool accuracy, research professional weather stations.

VOCABULARY:
Measure, temperature, thermometer, precipitation, rain gauge, wind speed, wind direction, anemometer, wind vane, data, record.

CONNECTION TO FUTURE LEARNING:
Weather measurement skills prepare students for data analysis, climate study, and scientific methodology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring Weather' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Weather Patterns' AND grade_level_min = 3),
  'Weather Patterns Topic Guide', 'Identify patterns in weather data',
  'WEATHER PATTERNS - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should know how to measure weather. Basic graphing skills. Experience recording data over time.

LEARNING OBJECTIVES:
- Analyze weather data to identify patterns
- Create graphs showing weather trends
- Predict weather based on observed patterns
- Understand that weather follows predictable patterns

KEY CONCEPTS:
1) Weather data reveals patterns over time
2) Temperature typically rises during day and falls at night
3) Seasons show predictable temperature and precipitation patterns
4) Weather patterns help meteorologists make predictions
5) Patterns may include exceptions (unusual weather)
6) Long-term patterns differ from day-to-day changes

COMMON MISCONCEPTIONS:
- Thinking weather is random and unpredictable
- Expecting patterns to be perfectly regular
- Confusing short-term weather with long-term climate
- Believing predictions are always accurate

TEACHING SEQUENCE:
Graph daily temperature over several weeks. Identify high and low patterns. Compare monthly averages. Analyze precipitation patterns. Make predictions based on patterns. Compare predictions to actual weather. Discuss why meteorologists are sometimes wrong. Connect patterns to seasons.

DIFFERENTIATION:
Struggling learners: Use simple bar graphs, focus on obvious patterns, guided data analysis. Advanced learners: Create complex graphs, compare multiple data sets, investigate weather prediction methods.

VOCABULARY:
Pattern, data, graph, temperature, trend, predict, forecast, average, compare, analyze.

CONNECTION TO FUTURE LEARNING:
Understanding weather patterns prepares students for climate science, data analysis, and meteorology in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Weather Patterns' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Climate Zones' AND grade_level_min = 3),
  'Climate Zones Topic Guide', 'Compare weather patterns in different regions',
  'CLIMATE ZONES - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand weather patterns. Basic geography and map skills. Vocabulary for describing temperature and precipitation.

LEARNING OBJECTIVES:
- Distinguish between weather and climate
- Identify major climate zones (tropical, temperate, polar)
- Explain how latitude affects climate
- Compare climate characteristics across regions

KEY CONCEPTS:
1) Climate is the average weather pattern over many years
2) Weather changes daily; climate describes long-term conditions
3) Earth has distinct climate zones: tropical (hot), temperate (moderate), polar (cold)
4) Latitude affects climate—areas near equator are warmer
5) Elevation and proximity to water also affect climate
6) Climate determines what organisms can live in a region

COMMON MISCONCEPTIONS:
- Confusing weather with climate
- Thinking climate zones have exact boundaries
- Believing all tropical areas are identical
- Assuming climate never changes

TEACHING SEQUENCE:
Define and compare weather vs climate. Map climate zones on a world map. Compare temperature and precipitation data from different zones. Investigate why the equator is warm and poles are cold. Research life in different climate zones. Connect climate to ecosystems and human activities.

DIFFERENTIATION:
Struggling learners: Focus on three main zones (tropical, temperate, polar), use visual comparisons, relate to personal experience. Advanced learners: Investigate microclimates, explore climate change, analyze multiple climate factors.

VOCABULARY:
Climate, weather, zone, tropical, temperate, polar, latitude, equator, region, average, characteristic.

CONNECTION TO FUTURE LEARNING:
Understanding climate zones prepares students for climate science, geography, and environmental studies in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Climate Zones' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;

INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Severe Weather' AND grade_level_min = 3),
  'Severe Weather Topic Guide', 'Understand hurricanes, tornadoes, and how to stay safe',
  'SEVERE WEATHER - TOPIC TEACHING GUIDE

PREREQUISITES:
Students should understand basic weather concepts. Vocabulary for weather phenomena. Awareness that weather can be dangerous.

LEARNING OBJECTIVES:
- Identify types of severe weather (hurricanes, tornadoes, thunderstorms, blizzards)
- Understand how severe weather forms
- Explain safety procedures for different severe weather events
- Recognize warning signs and systems

KEY CONCEPTS:
1) Severe weather includes extreme events that can cause damage
2) Hurricanes are large rotating storms that form over warm ocean water
3) Tornadoes are spinning columns of air from severe thunderstorms
4) Thunderstorms bring lightning, heavy rain, and sometimes hail
5) Blizzards are severe snowstorms with strong winds
6) Each type of severe weather requires specific safety responses

COMMON MISCONCEPTIONS:
- Thinking severe weather is random (it has predictable conditions)
- Believing you''re safe if it''s not directly overhead
- Confusing different severe weather types
- Underestimating weather dangers

TEACHING SEQUENCE:
Study each severe weather type: how it forms, what it looks like, where it occurs. Learn warning systems (watches vs warnings). Practice safety drills for different scenarios. Create severe weather survival guides. Investigate local severe weather risks. Research how meteorologists predict severe weather.

DIFFERENTIATION:
Struggling learners: Focus on local severe weather types, simple safety rules, visual examples. Advanced learners: Research formation science, investigate prediction technology, analyze historical events.

VOCABULARY:
Severe, hurricane, tornado, thunderstorm, blizzard, lightning, warning, watch, safety, shelter, emergency.

CONNECTION TO FUTURE LEARNING:
Understanding severe weather prepares students for atmospheric science, emergency preparedness, and climate studies in later grades.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Severe Weather' AND grade_level_min = 3)
ON CONFLICT DO NOTHING;
