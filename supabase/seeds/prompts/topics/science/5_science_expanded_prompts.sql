-- Grade 5 Science Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 5 Science expanded topics
-- ============================================================================

-- ============================================================================
-- PROPERTIES OF MATTER TOPICS (Sample prompts from 10 topics)
-- ============================================================================

-- Calculating Density
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Calculating Density' AND grade_level_min = 5),
  'Calculating Density Topic Guide', 'Understanding and calculating density using mass and volume',
  'CALCULATING DENSITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Ability to measure mass using a balance
- Ability to measure volume of regular and irregular objects
- Understanding of division
- Knowledge that different materials have different properties

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Define density as mass per unit volume
2. Calculate density using the formula: Density = Mass ÷ Volume
3. Use correct units for density (g/cm³ or g/mL)
4. Compare densities of different materials

KEY CONCEPTS:
- Density is how much mass is packed into a certain volume
- Density formula: D = M ÷ V (Density = Mass divided by Volume)
- Density is expressed in units like g/cm³ (grams per cubic centimeter) or g/mL
- Each substance has a characteristic density
- Denser materials have more mass in the same volume
- Density is an intensive property (doesn''t depend on amount of substance)

COMMON MISCONCEPTIONS:
- Confusing density with mass or weight
- Thinking bigger objects are always denser
- Not understanding that same substance always has same density (at same temperature)
- Forgetting to include units in density

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Show two identical-volume blocks: wood and metal (same size, very different mass)
   Ask: Which is heavier? Why, if they''re the same size?
   Introduce: Different amounts of matter packed into same space = different density

2. DIRECT INSTRUCTION (15 minutes):
   Define density: Amount of mass in a given volume
   Formula: Density = Mass ÷ Volume (D = M ÷ V)
   Model calculation step-by-step:
   Example: Cube of metal
   - Mass: 80 grams (measured with balance)
   - Volume: 10 cm³ (measured or calculated)
   - Density: 80 g ÷ 10 cm³ = 8 g/cm³
   Emphasize units: Always include units! Density uses g/cm³ or g/mL
   Show density triangle memory aid:
     M
    ---
    D V
   (Cover what you''re solving for, use remaining values)
   Demonstrate: Same substance = same density regardless of amount

3. GUIDED PRACTICE (20 minutes):
   Density calculation lab:
   Groups receive different materials (aluminum cube, plastic block, glass marble, etc.)
   For each material:
   1. Measure mass with balance (record in grams)
   2. Measure volume using displacement or calculation (record in cm³ or mL)
   3. Calculate density using D = M ÷ V
   4. Record with units
   Create class density table comparing all materials
   Identify patterns: metals higher density than plastics; wood lower than water (1 g/cm³)
   Check calculations: Compare results to known density values

4. INDEPENDENT PRACTICE (12 minutes):
   Students receive mass and volume data for unknown substances
   Calculate density for each
   Match calculated densities to material identity using density reference chart
   Example: D = 2.7 g/cm³ → Aluminum; D = 11.3 g/cm³ → Lead
   Solve word problems involving density calculations

DIFFERENTIATION:
For Struggling Learners:
- Use simple, whole-number values
- Provide step-by-step calculation guides
- Use density triangle as tool
- Allow calculators for division

For Advanced Learners:
- Calculate volumes of irregular shapes using displacement
- Solve for mass or volume when density is given
- Research how temperature affects density
- Calculate density of liquids and gases

ASSESSMENT INDICATORS:
- Correctly calculates density given mass and volume
- Includes appropriate units (g/cm³ or g/mL)
- Explains that density is mass per unit volume
- Compares densities to determine which material is denser', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Calculating Density' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Particle Model of Matter
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Particle Model of Matter' AND grade_level_min = 5),
  'Particle Model of Matter Topic Guide', 'Understanding that matter is made of tiny particles',
  'PARTICLE MODEL OF MATTER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Knowledge of three states of matter
- Understanding that matter takes up space and has mass
- Ability to use models to represent concepts
- Experience with observation and inference

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Explain that all matter is made of tiny particles too small to see
2. Describe how particle arrangement differs in solids, liquids, and gases
3. Use particle model to explain properties of each state
4. Understand that particles are always moving

KEY CONCEPTS:
- All matter is made of extremely tiny particles (atoms and molecules)
- Particles are too small to see, even with most microscopes
- In solids: particles are close together, vibrate in place, fixed arrangement
- In liquids: particles are close but can slide past each other, not fixed
- In gases: particles are far apart, move freely and rapidly
- Particle spacing and movement explain properties of each state
- Particles are always in motion (even in solids)

COMMON MISCONCEPTIONS:
- Thinking particles in solids don''t move at all
- Believing there''s "stuff" between gas particles (it''s empty space)
- Not understanding how small particles really are
- Thinking we can see individual particles with our eyes

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Drop food coloring in water. Watch it spread without stirring.
   Ask: How does color move through water? What does this tell us about water?
   Reveal: Water is made of tiny moving particles; color particles mix with them!

2. DIRECT INSTRUCTION (15 minutes):
   Introduce particle theory: All matter is made of tiny particles
   Model particle arrangement for each state using marbles or beads:
   Solid: Marbles tightly packed in organized rows (vibrate in place)
   - Particles very close together
   - Held in fixed positions
   - Vibrate but don''t change places
   - Result: Definite shape and volume
   Liquid: Marbles touching but able to slide (can be stirred)
   - Particles close together
   - Can slide past each other
   - Move more than in solids
   - Result: Definite volume but no fixed shape
   Gas: Marbles far apart with lots of space (bounce freely in container)
   - Particles very far apart
   - Move rapidly in all directions
   - Lots of empty space between
   - Result: No definite shape or volume, fills container
   Draw particle diagrams for each state
   Emphasize: Particles always moving; faster movement = higher temperature

3. GUIDED PRACTICE (20 minutes):
   Human particle model:
   Students act as particles in each state
   - Solid: Stand close, vibrate in place holding hands
   - Liquid: Stand close, able to slide past neighbors
   - Gas: Spread out, move rapidly around room
   Particle diagram activity:
   Given properties, draw particle arrangement:
   - "Takes shape of container, particles slide past each other" → liquid
   - "Fills entire container, particles far apart" → gas
   - "Fixed shape, particles in organized rows" → solid
   Explain properties using particle model:
   Why can you pour a liquid? (Particles can slide)
   Why does a gas expand? (Particles spread apart)
   Why does a solid hold its shape? (Particles in fixed positions)

4. INDEPENDENT PRACTICE (12 minutes):
   Students create particle model poster:
   Draw particle arrangements for solid, liquid, gas
   Label: particle spacing, particle movement, container shape
   Explain one property of each state using particle model
   Example: "Liquids take the shape of their container because particles can slide past each other."

DIFFERENTIATION:
For Struggling Learners:
- Use concrete models (marbles, beads in containers)
- Focus on visual differences in particle spacing
- Provide pre-drawn particle diagrams to label
- Use simple language avoiding term "molecule"

For Advanced Learners:
- Explain state changes using particle model
- Investigate how temperature affects particle motion
- Distinguish atoms from molecules
- Research plasma as a fourth state

ASSESSMENT INDICATORS:
- Explains that matter is made of tiny particles
- Accurately describes particle arrangement in each state
- Uses particle model to explain at least two properties
- Draws appropriate particle diagrams for solids, liquids, gases', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Particle Model of Matter' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CHEMICAL AND PHYSICAL CHANGES TOPICS (Sample prompts)
-- ============================================================================

-- Evidence of Chemical Reactions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Evidence of Chemical Reactions' AND grade_level_min = 5),
  'Evidence of Chemical Reactions Topic Guide', 'Identifying signs that a chemical reaction has occurred',
  'EVIDENCE OF CHEMICAL REACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of chemical vs. physical changes
- Ability to make careful observations
- Experience with simple investigations
- Knowledge that new substances can form

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Identify four signs of chemical reactions (color change, gas production, temperature change, precipitate formation)
2. Recognize when a new substance has been formed
3. Distinguish chemical reactions from physical changes
4. Provide examples of chemical reactions in daily life

KEY CONCEPTS:
- Chemical reactions create new substances with different properties
- Signs of chemical reactions include:
  * Color change (not from mixing, but from new substance)
  * Gas production (bubbles forming, not from boiling)
  * Temperature change (getting hot or cold without heating source)
  * Precipitate (solid forming in a liquid mixture)
  * Odor change (new smell, different from reactants)
- Not all signs mean a reaction occurred (boiling water isn''t a reaction)
- Multiple signs together provide stronger evidence

COMMON MISCONCEPTIONS:
- Thinking all changes are chemical reactions
- Believing color mixing is always a chemical change
- Not distinguishing boiling bubbles from reaction bubbles
- Thinking chemical reactions always show obvious signs

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Demonstration: Baking soda + vinegar
   Observe: bubbles (gas), temperature drop, fizzing sound
   Ask: What evidence do we see that something new is forming?

2. DIRECT INSTRUCTION (15 minutes):
   Introduce four main signs of chemical reactions:
   1. Color Change: New color appears, not from mixing
      Example: Apple browning, iron rusting (becomes orange)
   2. Gas Production: Bubbles form when substances react
      Example: Alka-Seltzer in water, yeast producing CO₂
      Note: Different from boiling (physical change)
   3. Temperature Change: Gets hot or cold without outside heat source
      Example: Hot pack (exothermic), cold pack (endothermic)
   4. Precipitate Formation: Solid forms when two liquids mix
      Example: Mixing certain solutions creates cloudy solid
   Additional sign: Odor change (new smell different from starting materials)
   Demonstrate examples of each sign
   Emphasize: These signs suggest new substances are forming

3. GUIDED PRACTICE (20 minutes):
   Chemical reaction investigation stations:
   Station 1: Steel wool + vinegar (observe rust formation, color change)
   Station 2: Yeast + warm water + sugar (observe gas bubbles)
   Station 3: Citric acid + baking soda (observe temperature change, gas)
   Station 4: Epsom salt + ammonia (observe precipitate)
   Students record observations at each station:
   - What changes did you observe?
   - What signs of chemical reaction?
   - Do you think new substances formed? Why?
   Class discussion: Which signs did we observe? Were they chemical reactions?

4. INDEPENDENT PRACTICE (12 minutes):
   Provide scenarios, students identify:
   - Is this a chemical reaction or physical change?
   - What evidence supports your conclusion?
   Scenarios: Ice melting, firewood burning, sugar dissolving, nail rusting, paper tearing
   Students create "Chemical Reaction Evidence Chart":
   List 3 everyday chemical reactions with signs observed
   Example: "Cooking an egg: color change, smell change, cannot reverse"

DIFFERENTIATION:
For Struggling Learners:
- Focus on two main signs (color change, gas production)
- Use clear, obvious examples
- Provide observation checklists
- Compare obvious reactions to obvious physical changes

For Advanced Learners:
- Explore exothermic vs. endothermic reactions
- Investigate why some reactions show multiple signs
- Research indicators and how they detect reactions
- Design experiments to test for chemical reactions

ASSESSMENT INDICATORS:
- Identifies at least three signs of chemical reactions
- Correctly classifies scenarios as physical or chemical changes
- Explains that signs indicate new substances are forming
- Provides real-world examples of chemical reactions', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evidence of Chemical Reactions' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- Conservation of Matter
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Conservation of Matter' AND grade_level_min = 5),
  'Conservation of Matter Topic Guide', 'Understanding that matter is neither created nor destroyed',
  'CONSERVATION OF MATTER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of chemical and physical changes
- Ability to measure mass accurately
- Experience with chemical reactions
- Concept that matter has mass

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. State the law of conservation of matter
2. Demonstrate that mass is conserved in chemical reactions
3. Explain that atoms are rearranged but not created or destroyed
4. Measure and verify conservation of mass in reactions

KEY CONCEPTS:
- Law of Conservation of Matter: Matter cannot be created or destroyed
- In chemical reactions, atoms are rearranged, not created or destroyed
- Total mass before reaction = Total mass after reaction
- Mass appears to change if gases escape or enter the system
- In closed systems, mass is always conserved
- Atoms are conserved even when they form new substances

COMMON MISCONCEPTIONS:
- Thinking mass changes when substances undergo chemical reactions
- Believing matter disappears when it burns or dissolves
- Not accounting for gases that escape or enter reactions
- Confusing mass with volume or appearance

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Weigh sealed bag with baking soda and vinegar in separate compartments
   Mix inside bag (stays sealed), observe reaction
   Weigh again: Same mass! Why?

2. DIRECT INSTRUCTION (15 minutes):
   Introduce Law of Conservation of Matter: Matter is neither created nor destroyed
   Explain: During reactions, atoms rearrange to form new substances, but number of atoms stays same
   Model with building blocks:
   Before: 2 red + 1 blue = separate blocks
   After: Combine to make new structure
   Same blocks (atoms), different arrangement (molecule)
   Demonstrate importance of closed systems:
   Open system: Burning candle loses mass (gases escape into air)
   Closed system: Burning in sealed container, mass unchanged (gases stay)
   Show mass conservation equation: Mass of reactants = Mass of products

3. GUIDED PRACTICE (20 minutes):
   Conservation of mass experiments:
   Experiment 1: Ice melting in sealed bag
   - Weigh ice in sealed bag
   - Allow to melt
   - Weigh liquid in sealed bag
   - Result: Same mass (state change, not loss of matter)
   Experiment 2: Chemical reaction in closed system
   - Baking soda + vinegar in sealed plastic bag
   - Weigh before mixing
   - Mix (inflate bag with CO₂ gas)
   - Weigh after reaction
   - Result: Same mass (gas stays in bag)
   Experiment 3: Open vs. closed system
   - Alka-Seltzer in open cup vs. sealed flask
   - Compare mass changes
   - Explain differences
   Students record data and explain findings using conservation of matter

4. INDEPENDENT PRACTICE (12 minutes):
   Students solve conservation of matter problems:
   Example: "If 10 g of wood reacts with 32 g of oxygen to form ash and gases, what is total mass of products?"
   Answer: 42 g (10 + 32)
   Draw before/after diagrams showing atom rearrangement
   Explain: Why does wood appear to lose mass when burned in open air?

DIFFERENTIATION:
For Struggling Learners:
- Use concrete models (blocks, balls)
- Focus on simple examples with visible reactants and products
- Provide mass calculation templates
- Use closed system experiments where gases are visible

For Advanced Learners:
- Write balanced equations showing atom conservation
- Calculate masses in multi-step reactions
- Investigate apparent mass changes in open systems
- Research historical development of conservation law

ASSESSMENT INDICATORS:
- States that matter is neither created nor destroyed
- Demonstrates mass conservation through experimentation
- Explains that total mass before = total mass after reaction
- Accounts for gases when explaining mass changes', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conservation of Matter' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FOOD WEBS AND ENERGY TOPICS (Sample prompts)
-- ============================================================================

-- Energy Pyramids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Energy Pyramids' AND grade_level_min = 5),
  'Energy Pyramids Topic Guide', 'Understanding energy decrease at each trophic level',
  'ENERGY PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Understanding of food chains and food webs
- Knowledge that energy comes from the sun
- Concept of producers and consumers
- Awareness that organisms need energy to live

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Explain that energy decreases at each level of a food chain
2. Interpret energy pyramids showing trophic levels
3. Understand why there are fewer organisms at higher levels
4. Apply the concept that only ~10% of energy transfers to the next level

KEY CONCEPTS:
- Energy pyramid shows amount of energy at each trophic level
- Producers (bottom) have most energy; top predators have least
- Only about 10% of energy transfers to next level (10% rule)
- 90% of energy is lost as heat, used for life processes, or in waste
- This explains why food chains rarely exceed 4-5 levels
- More organisms at bottom levels; fewer at top

COMMON MISCONCEPTIONS:
- Thinking all energy is passed to next level
- Believing organisms at top are more important
- Not understanding where "lost" energy goes
- Confusing number of organisms with energy amount

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Ask: Why don''t we see many top predators (like lions) compared to plants?
   Present puzzle: Sun provides endless energy, so why not endless lions?

2. DIRECT INSTRUCTION (15 minutes):
   Introduce energy pyramid:
   - Triangular diagram, widest at bottom, narrowest at top
   - Each level = trophic level (feeding level)
   - Width represents amount of energy available
   Draw and label example pyramid:
   Level 1 (Bottom - Producers): 10,000 units of energy - Plants/photosynthesizers
   Level 2 (Primary consumers): 1,000 units - Herbivores (eat plants)
   Level 3 (Secondary consumers): 100 units - Carnivores (eat herbivores)
   Level 4 (Tertiary consumers): 10 units - Top predators
   Explain 10% Rule: Only ~10% of energy passes to next level
   Where does the 90% go?
   - Used for organism''s life processes (moving, growing, reproducing)
   - Lost as heat
   - In waste products
   - Not all parts eaten
   Result: Each level supports fewer organisms than level below

3. GUIDED PRACTICE (20 minutes):
   Energy transfer activity with tokens:
   Students form 4 groups representing trophic levels
   Producers (20 students): Each gets 10 energy tokens (200 total)
   Primary consumers (10 students): Receive 1 token each from producers (10% of 100)
   Secondary consumers (5 students): Receive tokens from primary (10% of 50)
   Tertiary consumers (2 students): Receive tokens from secondary (10% of 25)
   Visualize: Most students/energy at producer level, very few at top
   Create energy pyramid for specific ecosystem:
   Example: Ocean - Phytoplankton → Zooplankton → Small fish → Large fish → Shark
   Calculate energy at each level if producers have 100,000 units

4. INDEPENDENT PRACTICE (12 minutes):
   Students create energy pyramid:
   Choose ecosystem (forest, pond, grassland)
   Draw pyramid with 4 levels
   Label organisms at each level
   Show relative energy amounts
   Answer: "Why are there more grasshoppers than hawks in a field?"

DIFFERENTIATION:
For Struggling Learners:
- Use simplified 3-level pyramids
- Provide pre-drawn pyramid templates
- Focus on concept: less energy at each level
- Use concrete manipulatives (blocks decreasing in number)

For Advanced Learners:
- Calculate specific energy values at each level
- Compare pyramids from different ecosystems
- Investigate biomass pyramids vs. energy pyramids
- Research exceptions to typical pyramid shape

ASSESSMENT INDICATORS:
- Correctly labels trophic levels on energy pyramid
- Explains that energy decreases at each level
- Applies 10% rule to calculate energy transfer
- Connects energy loss to fewer organisms at higher levels', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Energy Pyramids' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EARTH''S WATER TOPICS (Sample prompts)
-- ============================================================================

-- The Water Cycle in Detail
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'The Water Cycle in Detail' AND grade_level_min = 5),
  'The Water Cycle in Detail Topic Guide', 'Complete understanding of water cycle processes',
  'THE WATER CYCLE IN DETAIL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic knowledge of water cycle
- Understanding of states of matter
- Knowledge of energy and heat
- Awareness of weather and climate

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe all major processes in the water cycle (evaporation, transpiration, condensation, precipitation, runoff, infiltration)
2. Explain the role of energy in driving the water cycle
3. Trace the path water takes through the cycle
4. Understand that the water cycle is continuous and has no beginning or end

KEY CONCEPTS:
- Water cycle is continuous movement of water on, above, and below Earth
- Sun''s energy drives the water cycle
- Major processes:
  * Evaporation: Liquid water becomes vapor (from oceans, lakes, soil)
  * Transpiration: Water vapor released by plants
  * Condensation: Water vapor becomes liquid (forms clouds)
  * Precipitation: Water falls as rain, snow, sleet, or hail
  * Runoff: Water flows over land to water bodies
  * Infiltration: Water soaks into ground
- Water cycles between atmosphere, land, and bodies of water
- Same water cycles over and over (water you drink could have been in dinosaur!)

COMMON MISCONCEPTIONS:
- Thinking water cycle has a start and end point
- Believing new water is created
- Not recognizing transpiration as part of cycle
- Thinking clouds are made of water droplets, not water vapor

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Show glass of water: "This water has been cycling for billions of years. Where has it been?"
   Could have been: in ocean, in cloud, in plant, in animal, in ice, in underground reservoir
   Introduce: Water is constantly recycling!

2. DIRECT INSTRUCTION (18 minutes):
   Draw comprehensive water cycle diagram on board:
   Include: sun, ocean, clouds, mountains, rivers, plants, groundwater
   Explain each process in detail:
   1. Evaporation: Sun heats water → liquid becomes vapor → rises into atmosphere
      (from oceans, lakes, rivers, puddles, soil)
   2. Transpiration: Plants release water vapor through leaves
      (combined with evaporation = evapotranspiration)
   3. Condensation: Water vapor cools → becomes tiny liquid droplets → forms clouds
      (also forms dew, fog)
   4. Precipitation: Water droplets grow heavy → fall as rain, snow, sleet, or hail
   5. Runoff: Water flows over land → into streams → rivers → lakes → oceans
   6. Infiltration: Water soaks into ground → becomes groundwater → feeds springs/wells
   Trace multiple pathways water can take (not just one cycle path)
   Emphasize sun''s energy drives evaporation; gravity drives precipitation and runoff

3. GUIDED PRACTICE (20 minutes):
   Water cycle simulation:
   Setup: Plastic bag on window with wet sponge inside
   Observe: Evaporation → condensation on bag → "precipitation" droplets
   Water cycle relay race:
   Students move through stations representing each process:
   Station 1: Ocean (evaporation) - jump up
   Station 2: Cloud (condensation) - group together
   Station 3: Precipitation - fall down
   Station 4: Runoff - slide to river
   Station 5: Infiltration - sink into ground
   Station 6: Plant (transpiration) - wave arms
   Create detailed water cycle model or poster:
   Include all 6 processes with labels and arrows
   Show sun and gravity as energy sources

4. INDEPENDENT PRACTICE (12 minutes):
   "Journey of a Water Droplet" creative writing:
   Students write first-person story as a water droplet
   Must include at least 4 different processes
   Example: "I started in the ocean. The sun warmed me and I evaporated into the sky. I condensed in a cloud, then precipitated as rain..."
   Draw illustrations showing each stage

DIFFERENTIATION:
For Struggling Learners:
- Focus on 4 main processes (evaporation, condensation, precipitation, runoff)
- Use simplified cycle diagrams
- Act out cycle with movements
- Provide word bank and sentence frames

For Advanced Learners:
- Include additional processes (sublimation, percolation)
- Calculate time water spends in different reservoirs
- Research how water cycle varies in different climates
- Investigate human impacts on water cycle

ASSESSMENT INDICATORS:
- Identifies and describes at least 5 water cycle processes
- Explains role of sun''s energy in water cycle
- Traces multiple paths water can take through cycle
- Creates accurate, detailed water cycle diagram', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Water Cycle in Detail' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- HUMAN BODY SYSTEMS TOPICS (Sample prompts)
-- ============================================================================

-- Circulatory System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Circulatory System' AND grade_level_min = 5),
  'Circulatory System Topic Guide', 'Understanding the heart, blood, and blood vessels',
  'CIRCULATORY SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Basic knowledge of body systems
- Understanding that cells need oxygen and nutrients
- Awareness of heart pumping
- Concept of transport and delivery

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Describe the function of the circulatory system (transport oxygen, nutrients, wastes)
2. Identify major parts: heart, blood vessels (arteries, veins, capillaries), blood
3. Explain how the heart pumps blood through the body
4. Understand blood delivers oxygen and picks up carbon dioxide

KEY CONCEPTS:
- Circulatory system transports materials throughout body
- Heart is muscular pump that pushes blood through vessels
- Three types of blood vessels:
  * Arteries: Carry blood away from heart (oxygenated)
  * Veins: Carry blood back to heart (deoxygenated)
  * Capillaries: Tiny vessels where exchange occurs
- Blood carries:
  * Oxygen (from lungs to cells)
  * Nutrients (from digestive system to cells)
  * Carbon dioxide (from cells to lungs)
  * Waste products (to kidneys)
- Blood circulates continuously through body

COMMON MISCONCEPTIONS:
- Thinking blood is blue (it''s always red, just darker when deoxygenated)
- Believing heart is on left side (it''s in center, slightly left)
- Not understanding that blood returns to heart (thinking it''s one-way)
- Confusing arteries with veins

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Measure pulse: Find pulse on wrist or neck
   Count beats for 15 seconds, multiply by 4
   Ask: What are we feeling? Why does it beat?
   Exercise briefly (jumping jacks 30 seconds), measure again
   Why faster? Body needs more oxygen!

2. DIRECT INSTRUCTION (18 minutes):
   Introduce circulatory system functions:
   - Deliver oxygen and nutrients to all cells
   - Remove carbon dioxide and waste from cells
   - Fight infection (white blood cells)
   - Regulate body temperature
   Present major components:
   1. Heart: Muscular pump, size of fist, beats ~100,000 times/day
      4 chambers: 2 atria (upper, receiving), 2 ventricles (lower, pumping)
   2. Blood vessels:
      Arteries: Thick walls, carry blood away from heart, oxygenated (except pulmonary)
      Veins: Thinner walls, carry blood to heart, deoxygenated (except pulmonary)
      Capillaries: Microscopic, one cell thick, exchange occurs here
   3. Blood: Liquid tissue containing:
      Red blood cells (carry oxygen), white blood cells (fight germs), platelets (clotting), plasma (liquid)
   Trace blood flow path:
   Heart → Arteries → Capillaries (oxygen/nutrient exchange) → Veins → Heart → Lungs (get oxygen) → Heart (repeat)

3. GUIDED PRACTICE (20 minutes):
   Circulatory system activities:
   Activity 1: Heart model - Show pumping action with squeezable ball
   Activity 2: Blood vessel comparison - Feel pulse in artery, observe veins in hand
   Activity 3: Circulation relay:
      Students represent blood cells
      Travel from heart → arteries → capillaries (exchange oxygen card for CO2 card) → veins → heart → lungs
   Activity 4: Examine circulation diagram, trace blood pathway with finger
   Create circulatory system diagram:
   Draw heart, major blood vessels
   Label parts and use color coding (red for oxygenated, blue for deoxygenated)

4. INDEPENDENT PRACTICE (12 minutes):
   Students create "Circulatory System Journey" comic or flowchart:
   Follow red blood cell from heart through body and back
   Include: heart chambers, arteries, capillaries, oxygen/CO2 exchange, veins, lungs
   Answer questions:
   - What does blood deliver to cells?
   - What does blood pick up from cells?
   - Why do we need the circulatory system?

DIFFERENTIATION:
For Struggling Learners:
- Use simplified diagrams with fewer labels
- Focus on main function: carry oxygen and nutrients
- Provide flow chart templates
- Use concrete model (pump, tubes, liquid)

For Advanced Learners:
- Research specific heart chambers and valves
- Learn about double circulation (pulmonary and systemic)
- Investigate cardiovascular diseases
- Calculate cardiac output

ASSESSMENT INDICATORS:
- Identifies heart, arteries, veins, and capillaries
- Explains that circulatory system transports oxygen and nutrients
- Describes heart as pump that moves blood
- Traces pathway of blood through body', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circulatory System' AND grade_level_min = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SUMMARY
-- ============================================================================
-- Grade 5 Science Expanded Prompts Created:
-- Sample prompts from major units:
-- - Properties of Matter: 2 topics
-- - Chemical and Physical Changes: 2 topics
-- - Food Webs and Energy: 1 topic
-- - Earth''s Water: 1 topic
-- - Human Body Systems: 1 topic
-- Total: 7 comprehensive teaching prompts as examples
-- Additional prompts can be created following the same comprehensive format
-- ============================================================================
