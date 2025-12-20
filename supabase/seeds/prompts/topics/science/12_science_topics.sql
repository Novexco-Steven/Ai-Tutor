-- =============================================
-- GRADE 12 SCIENCE TOPIC PROMPTS
-- Subject: Science (Physics)
-- Grade: 12 (High School)
-- Units: Mechanics, Waves and Optics, Electricity and Magnetism, Modern Physics
-- =============================================

-- =============================================
-- UNIT: MECHANICS
-- =============================================

-- Topic: Kinematics in 1D
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Kinematics in 1D' AND grade_level_min = 12),
  'Kinematics in 1D (Grade 12) Topic Guide', 'Motion in one dimension',
  'KINEMATICS IN 1D - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand position, velocity, and acceleration concepts. They should be comfortable with algebraic manipulation. Understanding of graphical representations of motion is essential.

LEARNING OBJECTIVES:
- Apply kinematic equations to solve one-dimensional motion problems
- Analyze motion using position-time, velocity-time, and acceleration-time graphs
- Distinguish between average and instantaneous quantities
- Solve free-fall problems using appropriate kinematic equations
- Connect graphical and mathematical representations of motion

KEY CONCEPTS:
1) Kinematic equations for constant acceleration: v = v₀ + at; x = x₀ + v₀t + ½at²; v² = v₀² + 2a(x - x₀)
2) Position is the area under velocity-time graph; velocity is the area under acceleration-time graph
3) Velocity is the slope of position-time graph; acceleration is the slope of velocity-time graph
4) Free fall has constant acceleration g ≈ 9.8 m/s² downward (ignoring air resistance)
5) Sign conventions are critical: typically up and right are positive

COMMON MISCONCEPTIONS:
- Using kinematic equations when acceleration isn''t constant
- Confusing velocity with acceleration (an object moving up can accelerate down)
- Thinking free fall means falling (throwing up is also free fall)
- Forgetting to use consistent sign conventions
- Assuming final velocity is zero at maximum height but ignoring direction change
- Using the wrong equation for the given information

TEACHING SEQUENCE:
Derive kinematic equations from definitions. Practice equation selection based on knowns and unknowns. Solve varied one-dimensional problems systematically. Analyze motion graphs and connect to equations. Investigate free fall mathematically and experimentally. Connect to real-world motion scenarios.

DIFFERENTIATION:
Struggling learners: Create equation selection flowcharts. Practice identifying knowns and unknowns. Work through step-by-step solutions. Use consistent problem-solving strategies.
Advanced learners: Explore calculus-based derivations, analyze non-constant acceleration, investigate air resistance effects, research motion sensing and measurement technologies.

VOCABULARY:
Kinematics, displacement, velocity, acceleration, position, free fall, kinematic equations, constant acceleration, initial, final, instantaneous, average, trajectory

CONNECTION TO FUTURE LEARNING:
1D kinematics is foundational for 2D motion and dynamics. Students will apply these concepts to projectile motion and force analysis. This mathematical approach is essential for physics problem-solving.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Kinematics in 1D' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Kinematics in 2D
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Kinematics in 2D' AND grade_level_min = 12),
  'Kinematics in 2D (Grade 12) Topic Guide', 'Projectile motion and vectors',
  'KINEMATICS IN 2D - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students must master one-dimensional kinematics. They should understand vector addition and components. Trigonometry skills (sine, cosine, tangent) are essential.

LEARNING OBJECTIVES:
- Decompose vectors into x and y components
- Analyze projectile motion as independent horizontal and vertical motion
- Calculate range, maximum height, and time of flight for projectiles
- Solve problems involving projectiles launched horizontally and at angles
- Analyze relative motion and reference frames

KEY CONCEPTS:
1) Projectile motion combines constant velocity horizontally with constant acceleration vertically
2) Horizontal and vertical components are independent; they share only time
3) At the peak of trajectory: vertical velocity is zero, horizontal velocity unchanged
4) Range formula for level ground: R = (v₀²sin2θ)/g; maximum range at 45°
5) Relative velocity: v_AB = v_A - v_B (velocity of A relative to B)

COMMON MISCONCEPTIONS:
- Thinking horizontal and vertical motions affect each other
- Believing objects "run out of horizontal motion" and fall straight down
- Forgetting that acceleration is always downward, even when moving up
- Using 1D equations without separating components
- Thinking the object slows down horizontally (ignoring air resistance, it doesn''t)
- Confusing speed with velocity components

TEACHING SEQUENCE:
Review vector components and addition. Demonstrate independence of horizontal and vertical motion. Analyze projectile motion systematically. Solve problems for horizontal launches, then angled launches. Investigate range dependence on angle. Explore relative motion in 2D.

DIFFERENTIATION:
Struggling learners: Focus on horizontal launches before angles. Use component tables for organization. Practice vector decomposition extensively. Create step-by-step problem-solving guides.
Advanced learners: Analyze projectiles with air resistance, investigate optimal launch angles with elevation change, explore circular motion kinematics, research ballistic trajectories.

VOCABULARY:
Projectile motion, vector, component, horizontal, vertical, range, maximum height, time of flight, trajectory, parabola, relative velocity, reference frame, angle of projection

CONNECTION TO FUTURE LEARNING:
2D kinematics applies to dynamics and circular motion. Students will use vector analysis throughout physics. This foundation is essential for mechanics and engineering applications.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Kinematics in 2D' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Newton's Laws (Grade 12)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Newton''s Laws' AND grade_level_min = 12),
  'Newton''s Laws (Grade 12) Topic Guide', 'Force analysis and applications',
  'NEWTON''S LAWS - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand Newton''s laws conceptually from earlier courses. They must be proficient with kinematics and vector mathematics. Free body diagram skills are essential.

LEARNING OBJECTIVES:
- Apply Newton''s second law quantitatively in one and two dimensions
- Analyze complex systems with multiple forces and objects
- Solve problems involving friction, tension, and normal forces
- Analyze motion on inclined planes
- Apply Newton''s laws to systems of connected objects

KEY CONCEPTS:
1) Newton''s second law: ΣF = ma (net force equals mass times acceleration)
2) Free body diagrams isolate objects and show all forces acting on them
3) Equilibrium: ΣF = 0 when acceleration is zero (static or constant velocity)
4) Friction: f_s ≤ μ_s N (static); f_k = μ_k N (kinetic)
5) Systems: internal forces cancel; external forces determine system acceleration

COMMON MISCONCEPTIONS:
- Including forces the object exerts on others (only forces ON the object)
- Forgetting that normal force isn''t always equal to weight
- Treating friction as always opposing motion (static friction enables motion)
- Applying Newton''s third law to the same object (action-reaction are on different objects)
- Using wrong angle decomposition on inclines
- Ignoring constraint equations for connected objects

TEACHING SEQUENCE:
Review Newton''s laws and free body diagrams. Practice force decomposition in 2D. Analyze equilibrium and non-equilibrium situations. Investigate friction (static and kinetic) with calculations. Solve inclined plane problems systematically. Analyze connected object systems (Atwood machines, pulleys).

DIFFERENTIATION:
Struggling learners: Use systematic free body diagram procedures. Practice identifying forces one at a time. Create problem-type templates. Work through examples before independent practice.
Advanced learners: Analyze systems with multiple pulleys, explore rotating reference frames, investigate friction at the microscopic level, research advanced dynamics applications.

VOCABULARY:
Newton''s laws, force, mass, acceleration, net force, free body diagram, normal force, friction, static friction, kinetic friction, coefficient of friction, tension, inclined plane, equilibrium

CONNECTION TO FUTURE LEARNING:
Newton''s laws are the foundation of classical mechanics. Students will apply these to work-energy and momentum. This dynamic analysis is essential for engineering and physics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Newton''s Laws' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Work and Energy (Grade 12)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Work and Energy' AND grade_level_min = 12),
  'Work and Energy (Grade 12) Topic Guide', 'Work, power, and efficiency',
  'WORK AND ENERGY - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand force, displacement, and kinetic/potential energy concepts. They should be comfortable with trigonometry and dot products. Understanding of energy conservation is essential.

LEARNING OBJECTIVES:
- Calculate work done by constant and variable forces
- Apply the work-energy theorem to solve problems
- Calculate power in mechanical systems
- Analyze conservative and non-conservative forces
- Apply energy conservation with non-conservative forces

KEY CONCEPTS:
1) Work: W = Fd cos θ (for constant force); W = ∫F·dx (for variable force)
2) Work-energy theorem: W_net = ΔKE = ½mv_f² - ½mv_i²
3) Conservative forces have path-independent work; non-conservative forces do not
4) Power: P = W/t = Fv cos θ (rate of energy transfer)
5) With non-conservative forces: KE₁ + PE₁ + W_nc = KE₂ + PE₂

COMMON MISCONCEPTIONS:
- Thinking work equals force times distance regardless of angle
- Confusing work done BY a force with work done ON an object
- Believing friction always does negative work (static friction can do positive work)
- Thinking work is always positive (it can be negative)
- Confusing power with energy or force
- Assuming energy conservation applies without accounting for friction

TEACHING SEQUENCE:
Review work calculations with varying angles. Derive and apply the work-energy theorem. Compare work by different forces on the same object. Distinguish conservative and non-conservative forces. Analyze systems with friction using energy methods. Calculate power in various scenarios.

DIFFERENTIATION:
Struggling learners: Focus on the relationship between work and energy change. Practice angle considerations systematically. Use energy bar charts for conservation problems.
Advanced learners: Explore work done by springs (W = ½kx²), analyze variable force problems with calculus, investigate energy diagrams and potential wells, research thermodynamic connections.

VOCABULARY:
Work, energy, kinetic energy, potential energy, work-energy theorem, power, Watt, conservative force, non-conservative force, friction, mechanical energy, efficiency

CONNECTION TO FUTURE LEARNING:
Work and energy provide powerful problem-solving approaches. Students will connect energy methods to thermodynamics and beyond. This analytical framework is fundamental to physics and engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Work and Energy' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Momentum (Grade 12)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Momentum' AND grade_level_min = 12),
  'Momentum (Grade 12) Topic Guide', 'Impulse and conservation of momentum',
  'MOMENTUM - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand Newton''s laws and force concepts. They should be familiar with kinetic energy and collision concepts. Vector mathematics including components is essential.

LEARNING OBJECTIVES:
- Calculate momentum and apply conservation of momentum
- Relate impulse to momentum change
- Analyze elastic and inelastic collisions in one and two dimensions
- Apply center of mass concepts
- Connect momentum conservation to Newton''s third law

KEY CONCEPTS:
1) Momentum: p = mv (vector quantity); units are kg⋅m/s
2) Impulse-momentum theorem: J = FΔt = Δp
3) Conservation of momentum: in isolated systems, Σp_initial = Σp_final
4) Elastic collisions conserve both momentum and kinetic energy
5) Inelastic collisions conserve momentum but not kinetic energy; perfectly inelastic objects stick together

COMMON MISCONCEPTIONS:
- Confusing momentum with kinetic energy (different quantities, different conservation conditions)
- Forgetting that momentum is a vector (direction matters)
- Thinking collisions only happen when objects touch (field forces can cause impulse)
- Assuming momentum is conserved in all collisions (only in isolated systems)
- Confusing elastic with inelastic (many think elastic means objects bounce, which isn''t quite right)
- Using scalar momentum conservation in 2D (must use components)

TEACHING SEQUENCE:
Define momentum and calculate for various objects. Derive impulse-momentum from Newton''s second law. Analyze one-dimensional collisions with conservation. Investigate elastic vs inelastic collisions experimentally. Extend to two-dimensional collisions using components. Explore center of mass motion.

DIFFERENTIATION:
Struggling learners: Focus on one-dimensional collisions first. Use before/after momentum tables. Practice elastic vs inelastic classification. Create problem-solving templates.
Advanced learners: Analyze 2D collisions with vector methods, explore rocket propulsion, investigate center of mass for extended objects, research collider physics.

VOCABULARY:
Momentum, impulse, collision, elastic collision, inelastic collision, perfectly inelastic, conservation, isolated system, center of mass, kg⋅m/s, Newton-second

CONNECTION TO FUTURE LEARNING:
Momentum is conserved in all isolated systems, from collisions to particle physics. Students will apply momentum to rotational dynamics and relativity. This conservation law is fundamental to all physics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Momentum' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: WAVES AND OPTICS
-- =============================================

-- Topic: Wave Properties (Grade 12)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Wave Properties' AND grade_level_min = 12),
  'Wave Properties (Grade 12) Topic Guide', 'Frequency, wavelength, and speed',
  'WAVE PROPERTIES - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand basic wave concepts from earlier courses. They should know the difference between transverse and longitudinal waves. Mathematical skills including working with periodic functions are helpful.

LEARNING OBJECTIVES:
- Describe waves using frequency, wavelength, amplitude, and period
- Apply the wave equation v = fλ quantitatively
- Analyze the behavior of waves in different media
- Describe wave phenomena: superposition, interference, standing waves
- Connect wave properties to energy and intensity

KEY CONCEPTS:
1) Wave properties: amplitude (A), wavelength (λ), frequency (f), period (T = 1/f), wave speed (v = fλ)
2) Wave speed depends on the medium, not the source; frequency depends on the source
3) Superposition: waves add algebraically when they meet
4) Interference: constructive when waves are in phase; destructive when out of phase
5) Standing waves form at specific frequencies (resonance); nodes and antinodes have fixed positions

COMMON MISCONCEPTIONS:
- Thinking wave speed depends on frequency (in a given medium, speed is constant)
- Believing waves transport matter (they transport energy only)
- Assuming interference destroys energy (energy is redistributed, not lost)
- Thinking standing waves don''t move (they''re superpositions of traveling waves)
- Confusing nodes with antinodes (nodes don''t move; antinodes have maximum amplitude)
- Believing louder sounds travel faster (amplitude doesn''t affect speed)

TEACHING SEQUENCE:
Review wave fundamentals and apply v = fλ quantitatively. Investigate how speed changes in different media while frequency stays constant. Demonstrate superposition and interference. Analyze standing waves on strings and in pipes. Calculate resonant frequencies and wavelengths.

DIFFERENTIATION:
Struggling learners: Focus on the relationship v = fλ and its implications. Use visual representations of wave properties. Practice calculating unknown quantities. Create wave property summary sheets.
Advanced learners: Explore wave equations mathematically (y = A sin(kx - ωt)), investigate beat frequencies, analyze Fourier analysis concepts, research wave applications in technology.

VOCABULARY:
Wave, frequency, wavelength, amplitude, period, wave speed, medium, superposition, interference, constructive, destructive, standing wave, node, antinode, resonance, harmonic

CONNECTION TO FUTURE LEARNING:
Wave properties apply to sound, light, and quantum mechanics. Students will use these concepts for optics and modern physics. Understanding waves is essential for physics and engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Wave Properties' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Sound Waves (Grade 12)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 12),
  'Sound Waves (Grade 12) Topic Guide', 'Sound, Doppler effect, resonance',
  'SOUND WAVES - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand wave properties and the wave equation. They should know that sound is a longitudinal mechanical wave. Understanding of frequency and pitch relationship is essential.

LEARNING OBJECTIVES:
- Calculate the speed of sound in different media
- Apply the Doppler effect formula quantitatively
- Analyze resonance in strings and air columns
- Calculate beat frequency from interfering sound waves
- Describe the decibel scale and intensity relationships

KEY CONCEPTS:
1) Sound travels at different speeds in different media: fastest in solids, slowest in gases
2) Doppler effect: f_observed = f_source × (v ± v_observer)/(v ∓ v_source)
3) Beats occur when two frequencies interfere: f_beat = |f₁ - f₂|
4) Resonance in pipes: open-open and open-closed have different harmonic series
5) Intensity and decibel level: β = 10 log(I/I₀) where I₀ = 10⁻¹² W/m²

COMMON MISCONCEPTIONS:
- Thinking the Doppler effect changes actual frequency (it changes observed frequency)
- Believing sound travels faster in denser materials always (elasticity also matters)
- Confusing beats with interference patterns (beats are temporal; interference is spatial)
- Assuming all harmonics are present in all resonating systems (depends on boundary conditions)
- Thinking decibels are linear (they''re logarithmic)
- Believing ultrasound and infrasound aren''t sound (they are, just outside human hearing)

TEACHING SEQUENCE:
Calculate sound speed in various media. Derive and apply Doppler effect formulas. Investigate beat frequencies experimentally. Analyze resonance in strings and air columns. Calculate harmonic frequencies. Explore intensity and decibel relationships.

DIFFERENTIATION:
Struggling learners: Focus on one phenomenon at a time. Use the standard Doppler formula for moving source or observer (not both). Practice pipe resonance with diagrams. Create formula reference sheets.
Advanced learners: Analyze relativistic Doppler effect, investigate sonic booms and shock waves, explore musical acoustics in depth, research medical ultrasound applications.

VOCABULARY:
Sound wave, longitudinal wave, speed of sound, Doppler effect, frequency shift, beats, beat frequency, resonance, harmonic, overtone, fundamental frequency, decibel, intensity

CONNECTION TO FUTURE LEARNING:
Sound physics applies to music, medicine, and engineering. Students will connect Doppler effect to light and cosmology. Understanding sound provides context for electromagnetic waves.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sound Waves' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Reflection and Refraction (Grade 12)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Reflection and Refraction' AND grade_level_min = 12),
  'Reflection and Refraction (Grade 12) Topic Guide', 'Laws and applications',
  'REFLECTION AND REFRACTION - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand that light is an electromagnetic wave. They should know the law of reflection from earlier courses. Understanding of wave behavior at boundaries is essential.

LEARNING OBJECTIVES:
- Apply the law of reflection quantitatively
- Apply Snell''s law (n₁sinθ₁ = n₂sinθ₂) to refraction problems
- Calculate critical angle and explain total internal reflection
- Describe dispersion and its cause
- Trace light rays through prisms and optical systems

KEY CONCEPTS:
1) Law of reflection: angle of incidence equals angle of reflection (θᵢ = θᵣ)
2) Snell''s law: n₁sinθ₁ = n₂sinθ₂; index of refraction n = c/v
3) Light bends toward normal when entering denser medium (higher n)
4) Total internal reflection occurs when θ > θ_critical (sinθ_c = n₂/n₁)
5) Dispersion: different wavelengths refract differently, separating white light into colors

COMMON MISCONCEPTIONS:
- Measuring angles from the surface instead of the normal
- Thinking light bends toward denser medium regardless of direction (it bends toward normal)
- Assuming total internal reflection occurs at any boundary (only from high to low n)
- Thinking index of refraction depends on angle (it depends on material and wavelength)
- Believing prisms create colors (they separate existing colors)
- Confusing reflection and refraction effects

TEACHING SEQUENCE:
Review and quantify reflection with precision measurements. Derive Snell''s law from wave speed changes. Practice refraction calculations. Investigate critical angle and total internal reflection. Demonstrate dispersion with prisms. Trace rays through complex optical systems.

DIFFERENTIATION:
Struggling learners: Practice angle measurement from the normal consistently. Use ray diagrams extensively. Create step-by-step Snell''s law procedures. Focus on one direction of travel first.
Advanced learners: Explore Huygen''s principle and wave fronts, investigate fiber optics design, analyze thin film interference, research optical coating technology.

VOCABULARY:
Reflection, refraction, Snell''s law, index of refraction, normal, angle of incidence, angle of refraction, critical angle, total internal reflection, dispersion, prism, optical density

CONNECTION TO FUTURE LEARNING:
Reflection and refraction are essential for understanding optical instruments. Students will apply these to mirrors and lenses. This knowledge is fundamental to optics and many technologies.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reflection and Refraction' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Mirrors and Lenses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Mirrors and Lenses' AND grade_level_min = 12),
  'Mirrors and Lenses (Grade 12) Topic Guide', 'Image formation and equations',
  'MIRRORS AND LENSES - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students must understand reflection and refraction. They should be able to trace light rays. Familiarity with geometric constructions and algebraic equation solving is essential.

LEARNING OBJECTIVES:
- Apply the mirror equation (1/f = 1/d_o + 1/d_i) to curved mirrors
- Apply the thin lens equation to converging and diverging lenses
- Calculate magnification (m = -d_i/d_o = h_i/h_o)
- Trace principal rays to locate images
- Describe image characteristics: real/virtual, upright/inverted, magnified/diminished

KEY CONCEPTS:
1) Mirror/lens equation: 1/f = 1/d_o + 1/d_i (same form for both)
2) Magnification: m = -d_i/d_o = h_i/h_o; negative means inverted
3) Sign conventions: real distances/heights positive on one side; focal length positive for converging
4) Three principal rays locate images: parallel to axis, through focus, through center
5) Converging mirrors/lenses can form real or virtual images; diverging always form virtual images

COMMON MISCONCEPTIONS:
- Confusing focal length with radius of curvature (f = R/2 for mirrors)
- Forgetting sign conventions (different textbooks use different conventions)
- Thinking virtual images aren''t real (they appear real to the eye; "virtual" means no light actually passes through)
- Assuming all lenses behave the same (converging and diverging differ significantly)
- Using wrong ray tracing rules for the type of mirror/lens
- Confusing where light goes vs where image appears

TEACHING SEQUENCE:
Review reflection/refraction in curved surfaces. Introduce principal ray tracing for mirrors. Apply mirror equation systematically. Extend to lenses with ray tracing and lens equation. Practice with varied object positions. Analyze optical instruments as lens systems.

DIFFERENTIATION:
Struggling learners: Master one type (e.g., concave mirror) before others. Use consistent sign convention with clear reference. Practice ray tracing before equations. Create image characteristic summary tables.
Advanced learners: Analyze lens combinations and compound systems, explore aberrations and corrections, investigate thick lens equations, research telescope and microscope design.

VOCABULARY:
Mirror, lens, converging, diverging, concave, convex, focal length, focal point, object distance, image distance, magnification, real image, virtual image, principal ray, center of curvature

CONNECTION TO FUTURE LEARNING:
Mirrors and lenses are essential components of optical instruments. Students will apply this to understanding eyes, cameras, and telescopes. This knowledge is fundamental to optics and vision science.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mirrors and Lenses' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: ELECTRICITY AND MAGNETISM
-- =============================================

-- Topic: Electric Charge and Force
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Electric Charge and Force' AND grade_level_min = 12),
  'Electric Charge and Force (Grade 12) Topic Guide', 'Coulomb''s law and electric fields',
  'ELECTRIC CHARGE AND FORCE - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand atomic structure and charge. They should know Newton''s third law and force as a vector. Understanding of inverse-square relationships is helpful.

LEARNING OBJECTIVES:
- Apply Coulomb''s law to calculate electric force between point charges
- Describe electric fields and calculate field strength
- Sketch electric field lines for various charge configurations
- Calculate net electric force on a charge from multiple charges
- Compare gravitational and electric forces

KEY CONCEPTS:
1) Coulomb''s law: F = k|q₁q₂|/r² where k = 8.99 × 10⁹ N⋅m²/C²
2) Electric field: E = F/q = kQ/r² (force per unit charge)
3) Field lines point away from positive charges, toward negative charges
4) Superposition: net force/field is the vector sum of individual contributions
5) Electric force is much stronger than gravitational force for elementary particles

COMMON MISCONCEPTIONS:
- Confusing electric field with electric force (field exists without test charge)
- Using wrong sign for force direction (like charges repel; unlike attract)
- Forgetting that force is a vector requiring components for multiple charges
- Thinking field lines represent paths of particles (they show force direction at each point)
- Assuming field is uniform between point charges (it varies with position)
- Confusing charge with current

TEACHING SEQUENCE:
Introduce charge and quantization. Apply Coulomb''s law to simple systems. Define electric field and calculate for point charges. Sketch field lines for various configurations. Calculate net forces and fields from multiple charges. Compare electric and gravitational forces.

DIFFERENTIATION:
Struggling learners: Focus on two-charge systems first. Practice vector addition carefully. Use field line diagrams for qualitative understanding. Create formula reference cards.
Advanced learners: Analyze continuous charge distributions, explore electric dipoles, investigate Gauss''s law, research applications in electrostatic devices.

VOCABULARY:
Electric charge, Coulomb, Coulomb''s law, electric force, electric field, field line, point charge, test charge, superposition, inverse-square, positive, negative, conductor, insulator

CONNECTION TO FUTURE LEARNING:
Electric force and field are foundational for circuits and magnetism. Students will apply these to potential energy and electrical systems. This knowledge is essential for physics and electrical engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Electric Charge and Force' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Electric Potential
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Electric Potential' AND grade_level_min = 12),
  'Electric Potential (Grade 12) Topic Guide', 'Voltage and potential energy',
  'ELECTRIC POTENTIAL - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students must understand electric field and Coulomb''s law. They should know about work and potential energy from mechanics. Understanding of energy conservation is essential.

LEARNING OBJECTIVES:
- Define electric potential as potential energy per unit charge
- Calculate potential from point charges V = kQ/r
- Calculate potential difference (voltage) and relate to work
- Apply conservation of energy to charged particles in electric fields
- Relate electric field to potential gradient

KEY CONCEPTS:
1) Electric potential: V = PE/q = kQ/r (units: Volts = Joules/Coulomb)
2) Potential difference (voltage): ΔV = W/q = work per unit charge
3) Electric potential energy: PE = qV = kq₁q₂/r
4) Equipotential surfaces are perpendicular to field lines; no work moves along them
5) E = -ΔV/Δx (field points from high to low potential)

COMMON MISCONCEPTIONS:
- Confusing potential with potential energy (potential is per unit charge)
- Thinking potential is a vector (it''s a scalar)
- Assuming high potential means high energy (depends on charge sign)
- Believing voltage is a property of a point (it''s a difference between points)
- Confusing potential with field (related but different: V is scalar, E is vector)
- Thinking current flows from high to low potential regardless of charge (positive charges do; electrons flow low to high potential)

TEACHING SEQUENCE:
Define electric potential from potential energy. Calculate potential from point charges. Introduce potential difference as voltage. Apply energy conservation to moving charges. Sketch equipotential surfaces. Relate field to potential gradient.

DIFFERENTIATION:
Struggling learners: Focus on the energy perspective (voltage moves charges). Practice potential calculations for single charges. Use gravitational analogy. Create voltage and energy relationship diagrams.
Advanced learners: Analyze capacitor energy storage, explore potential for continuous distributions, investigate equipotential mapping, research Van de Graaff generators and electrostatic applications.

VOCABULARY:
Electric potential, voltage, potential difference, potential energy, volt, work, equipotential surface, potential gradient, electron volt, ground, reference point

CONNECTION TO FUTURE LEARNING:
Electric potential is essential for understanding circuits. Students will apply voltage concepts to circuit analysis. This energy approach is fundamental to electrical engineering.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Electric Potential' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: DC Circuits
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'DC Circuits' AND grade_level_min = 12),
  'DC Circuits (Grade 12) Topic Guide', 'Ohm''s law, series, and parallel',
  'DC CIRCUITS - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand voltage, current, and resistance at a basic level. They should know about electric fields and potential. Mathematical skills including solving systems of equations are helpful.

LEARNING OBJECTIVES:
- Apply Ohm''s law (V = IR) to circuit analysis
- Calculate equivalent resistance for series and parallel resistors
- Apply Kirchhoff''s loop and junction rules to complex circuits
- Calculate power dissipated in circuit elements (P = IV = I²R = V²/R)
- Analyze circuits with multiple resistors and batteries

KEY CONCEPTS:
1) Ohm''s law: V = IR; resistance R is in ohms (Ω)
2) Series resistors: R_eq = R₁ + R₂ + ... (same current, voltages add)
3) Parallel resistors: 1/R_eq = 1/R₁ + 1/R₂ + ... (same voltage, currents add)
4) Kirchhoff''s rules: junction rule (ΣI_in = ΣI_out); loop rule (ΣV = 0)
5) Power: P = IV = I²R = V²/R (dissipated as heat in resistors)

COMMON MISCONCEPTIONS:
- Thinking current is "used up" in resistors (current is the same in series)
- Confusing voltage drop with current (voltage drops; current stays same in series)
- Believing resistance increases when resistors are added in parallel (it decreases)
- Applying series rules to parallel circuits and vice versa
- Thinking electrons move at the speed of light (they drift slowly; the signal is fast)
- Forgetting that batteries have internal resistance

TEACHING SEQUENCE:
Review Ohm''s law and circuit symbols. Analyze simple series and parallel circuits. Calculate equivalent resistances systematically. Apply Kirchhoff''s rules to multi-loop circuits. Calculate power in circuit elements. Investigate real circuits with ammeters and voltmeters.

DIFFERENTIATION:
Struggling learners: Master series and parallel separately before combining. Use systematic approaches for Kirchhoff''s rules. Practice identifying series vs parallel. Create circuit analysis checklists.
Advanced learners: Analyze Wheatstone bridge circuits, explore RC circuits and time constants, investigate non-ohmic devices, research circuit simulation software.

VOCABULARY:
Circuit, current, voltage, resistance, Ohm''s law, series, parallel, equivalent resistance, Kirchhoff''s rules, junction, loop, power, watt, ammeter, voltmeter, short circuit

CONNECTION TO FUTURE LEARNING:
DC circuits are foundational for electrical engineering. Students will extend this to AC circuits and electronics. Understanding circuits is essential for technology and physics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'DC Circuits' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Magnetic Fields
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Magnetic Fields' AND grade_level_min = 12),
  'Magnetic Fields (Grade 12) Topic Guide', 'Magnetism and moving charges',
  'MAGNETIC FIELDS - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand electric fields and forces on charges. They should know about current as moving charges. Vector mathematics including cross products is essential.

LEARNING OBJECTIVES:
- Describe magnetic field and its sources (magnets, currents)
- Calculate the force on a moving charge in a magnetic field F = qvBsinθ
- Calculate the force on a current-carrying wire F = BILsinθ
- Determine field direction using right-hand rules
- Describe the magnetic field from long straight wires and solenoids

KEY CONCEPTS:
1) Magnetic fields are created by moving charges (currents) and permanent magnets
2) Force on moving charge: F = qv × B (direction perpendicular to both v and B)
3) Force on current-carrying wire: F = IL × B
4) Right-hand rules determine field and force directions
5) Field from long wire: B = μ₀I/(2πr); solenoid: B = μ₀nI

COMMON MISCONCEPTIONS:
- Confusing magnetic field with electric field (magnetic forces only act on moving charges)
- Thinking magnetic force can do work on particles (it doesn''t—force is perpendicular to velocity)
- Believing magnetic poles can be isolated (they always come in north-south pairs)
- Using wrong fingers for right-hand rules
- Confusing magnetic field direction with force direction
- Thinking field lines cross (they never do)

TEACHING SEQUENCE:
Investigate magnetic field patterns from magnets. Demonstrate force on current-carrying wires. Apply right-hand rules systematically. Calculate magnetic forces on charges and wires. Investigate fields from current-carrying wires. Analyze the magnetic field in solenoids.

DIFFERENTIATION:
Struggling learners: Master right-hand rules with consistent procedures. Practice determining directions before magnitudes. Use diagrams extensively. Create rule reference cards.
Advanced learners: Explore magnetic field from Biot-Savart law, investigate Hall effect, analyze charged particle motion in fields, research MRI and magnetic storage technology.

VOCABULARY:
Magnetic field, magnetic force, Tesla, right-hand rule, current, moving charge, north pole, south pole, solenoid, electromagnet, μ₀ (permeability of free space), magnetic field lines

CONNECTION TO FUTURE LEARNING:
Magnetism connects to electromagnetic induction and EM waves. Students will apply magnetic concepts to generators and motors. This knowledge is essential for electromagnetism and technology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Magnetic Fields' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Electromagnetic Induction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Electromagnetic Induction' AND grade_level_min = 12),
  'Electromagnetic Induction (Grade 12) Topic Guide', 'Faraday''s law and applications',
  'ELECTROMAGNETIC INDUCTION - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students must understand magnetic fields and flux. They should know about electric potential and circuits. Understanding of rate of change concepts is essential.

LEARNING OBJECTIVES:
- Define magnetic flux and calculate it for various configurations
- Apply Faraday''s law to calculate induced EMF
- Use Lenz''s law to determine the direction of induced current
- Analyze generators and transformers using electromagnetic induction
- Explain self-inductance and its effects in circuits

KEY CONCEPTS:
1) Magnetic flux: Φ = BAcosθ (magnetic field through an area)
2) Faraday''s law: EMF = -dΦ/dt (changing flux induces EMF)
3) Lenz''s law: induced current opposes the change that caused it (conservation of energy)
4) Generators convert mechanical to electrical energy; motors do the reverse
5) Transformers change voltage using mutual induction: V₁/V₂ = N₁/N₂

COMMON MISCONCEPTIONS:
- Thinking a stationary magnetic field creates current (field must change or move relative to conductor)
- Confusing magnetic flux with magnetic field (flux includes area and angle)
- Believing induced current opposes the field (it opposes the CHANGE in flux)
- Thinking transformers create power (they transfer it with some losses)
- Forgetting that generators and motors are essentially the same device
- Assuming induced EMF is constant (it varies as flux changes)

TEACHING SEQUENCE:
Define magnetic flux and practice calculations. Demonstrate Faraday''s law with moving magnets and coils. Apply Lenz''s law to determine current direction. Analyze generator operation. Investigate transformer principles. Explore practical applications of induction.

DIFFERENTIATION:
Struggling learners: Focus on qualitative understanding of Lenz''s law first. Practice flux calculations for simple geometries. Use systematic approaches for direction determination.
Advanced learners: Analyze AC generators quantitatively, explore eddy currents and their effects, investigate self and mutual inductance, research electromagnetic braking and induction heating.

VOCABULARY:
Electromagnetic induction, magnetic flux, Faraday''s law, Lenz''s law, induced EMF, induced current, generator, motor, transformer, inductance, primary coil, secondary coil, weber

CONNECTION TO FUTURE LEARNING:
Electromagnetic induction is the basis for electrical power generation. Students will connect induction to AC circuits and electromagnetic waves. This knowledge is fundamental to electrical engineering and technology.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Electromagnetic Induction' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- =============================================
-- UNIT: MODERN PHYSICS
-- =============================================

-- Topic: Special Relativity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Special Relativity' AND grade_level_min = 12),
  'Special Relativity (Grade 12) Topic Guide', 'Time dilation and length contraction',
  'SPECIAL RELATIVITY - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should have strong foundations in classical mechanics. They should understand frames of reference and relative motion. Comfort with mathematical reasoning and implications is essential.

LEARNING OBJECTIVES:
- State Einstein''s postulates of special relativity
- Calculate time dilation using Δt = γΔt₀
- Calculate length contraction using L = L₀/γ
- Apply relativistic mass-energy equivalence E = mc²
- Explain why classical physics breaks down at high velocities

KEY CONCEPTS:
1) Einstein''s postulates: laws of physics are the same in all inertial frames; speed of light is constant
2) Time dilation: moving clocks run slower; Δt = γΔt₀ where γ = 1/√(1-v²/c²)
3) Length contraction: moving objects are shorter in direction of motion; L = L₀/γ
4) Mass-energy equivalence: E = mc² (rest mass contains enormous energy)
5) Relativistic effects are significant only at speeds approaching c

COMMON MISCONCEPTIONS:
- Thinking time dilation is an illusion or measurement error (it''s a real physical effect)
- Believing objects actually shrink or clocks slow down in their own frame (effects are relative)
- Assuming faster-than-light travel is merely difficult (it''s impossible for massive objects)
- Thinking E = mc² only applies to nuclear reactions (all mass has equivalent energy)
- Believing classical physics is wrong (it''s a valid approximation at low speeds)
- Confusing special with general relativity (special is for inertial frames; general includes gravity)

TEACHING SEQUENCE:
Introduce the constancy of light speed and its surprising implications. Derive time dilation from light clock thought experiment. Derive length contraction from time dilation. Explore mass-energy equivalence and its implications. Calculate relativistic effects for various scenarios. Discuss experimental confirmations.

DIFFERENTIATION:
Struggling learners: Focus on the qualitative effects before calculations. Use thought experiments to build intuition. Practice using the Lorentz factor systematically.
Advanced learners: Explore spacetime diagrams and Minkowski geometry, investigate relativistic momentum, analyze the twin paradox in detail, research experimental tests of relativity.

VOCABULARY:
Special relativity, postulate, inertial reference frame, time dilation, proper time, length contraction, proper length, Lorentz factor (γ), mass-energy equivalence, speed of light (c), spacetime

CONNECTION TO FUTURE LEARNING:
Special relativity is essential for particle physics and cosmology. Students will connect relativity to general relativity and quantum mechanics. This knowledge is fundamental to modern physics understanding.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Relativity' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Quantum Theory
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Quantum Theory' AND grade_level_min = 12),
  'Quantum Theory (Grade 12) Topic Guide', 'Photons, wave-particle duality',
  'QUANTUM THEORY - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand wave properties of light and the photoelectric effect. They should know about energy quantization from atomic spectra. Comfort with abstract concepts and statistical thinking is essential.

LEARNING OBJECTIVES:
- Describe the dual nature of light as both wave and particle
- Apply the photon energy formula E = hf
- Explain the photoelectric effect and its quantum interpretation
- Describe the de Broglie hypothesis λ = h/p
- Discuss the Heisenberg uncertainty principle and its implications

KEY CONCEPTS:
1) Light is quantized: photon energy E = hf where h = 6.63 × 10⁻³⁴ J⋅s
2) Photoelectric effect: electrons ejected when hf > work function; KE_max = hf - φ
3) Wave-particle duality: all matter has wave properties; λ = h/p = h/(mv)
4) Heisenberg uncertainty: ΔxΔp ≥ h/(4π); fundamentally limits simultaneous knowledge
5) Quantum mechanics is probabilistic, not deterministic

COMMON MISCONCEPTIONS:
- Thinking wave-particle duality means light switches between forms (both are always true)
- Believing uncertainty is due to measurement limitations (it''s fundamental)
- Assuming classical physics fails only for photons (all particles show quantum effects)
- Thinking electrons are waves OR particles (they''re neither classical concept)
- Believing quantum effects are only at subatomic scales (macroscopic effects exist)
- Assuming quantization applies only to energy (many quantities are quantized)

TEACHING SEQUENCE:
Introduce blackbody radiation and Planck''s quantum hypothesis. Analyze the photoelectric effect and Einstein''s explanation. Demonstrate wave-particle duality through double-slit experiments. Apply de Broglie wavelength to particles. Explore uncertainty principle and its implications. Discuss the probabilistic nature of quantum mechanics.

DIFFERENTIATION:
Struggling learners: Focus on the photon model and its calculations. Use the photoelectric effect as a concrete example. Practice energy and wavelength conversions. Build intuition with simulations.
Advanced learners: Explore the Schrödinger equation conceptually, investigate quantum tunneling, analyze single-photon experiments, research quantum computing applications.

VOCABULARY:
Quantum, photon, wave-particle duality, photoelectric effect, work function, Planck''s constant (h), de Broglie wavelength, uncertainty principle, probability, electron volt, blackbody radiation

CONNECTION TO FUTURE LEARNING:
Quantum theory is foundational for atomic physics and modern technology. Students will connect quantum concepts to atomic models and chemistry. This knowledge is essential for understanding modern physics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quantum Theory' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Atomic Models
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Atomic Models' AND grade_level_min = 12),
  'Atomic Models (Grade 12) Topic Guide', 'Bohr model to quantum mechanics',
  'ATOMIC MODELS - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand atomic structure and electron energy levels. They should know about photons and quantized energy. Familiarity with spectroscopy and emission spectra is essential.

LEARNING OBJECTIVES:
- Explain the Bohr model and calculate hydrogen energy levels
- Describe how the Bohr model explains atomic emission spectra
- Explain the limitations of the Bohr model
- Describe the quantum mechanical model with orbitals and probability
- Connect atomic transitions to photon emission and absorption

KEY CONCEPTS:
1) Bohr model: electrons orbit in quantized energy levels; E_n = -13.6 eV/n² for hydrogen
2) Photon emission: electron drops from n₂ to n₁, emitting photon with E = hf = E_n₂ - E_n₁
3) Atomic spectra are unique fingerprints of elements
4) Bohr model limitations: only works for hydrogen; doesn''t explain orbital shapes
5) Quantum mechanical model: electrons exist in orbitals (probability distributions), not fixed orbits

COMMON MISCONCEPTIONS:
- Thinking electrons orbit like planets (they''re probability clouds)
- Believing the Bohr model is correct (it''s useful but limited)
- Assuming atoms emit continuous spectra (they emit discrete lines)
- Thinking electrons can exist between energy levels (they cannot in bound states)
- Confusing energy levels with orbitals (levels contain multiple orbitals)
- Believing electrons literally jump between levels (they transition, changing probability distribution)

TEACHING SEQUENCE:
Analyze hydrogen emission spectrum and patterns. Introduce Bohr''s postulates and energy level formula. Calculate photon energies and wavelengths for transitions. Discuss Bohr model successes and limitations. Introduce the quantum mechanical model with orbitals. Compare orbital shapes with Bohr orbits.

DIFFERENTIATION:
Struggling learners: Focus on energy level calculations for hydrogen. Practice the transition-photon relationship. Use spectral diagrams for visualization. Create energy level reference charts.
Advanced learners: Analyze multi-electron atoms qualitatively, explore selection rules and forbidden transitions, investigate laser operation, research atomic clocks and precision spectroscopy.

VOCABULARY:
Bohr model, energy level, ground state, excited state, photon emission, photon absorption, electron transition, spectrum, spectral line, orbital, probability distribution, quantum number, principal quantum number

CONNECTION TO FUTURE LEARNING:
Atomic models connect to nuclear physics and chemistry. Students will apply spectroscopy to astronomical observations. This understanding is essential for chemistry, physics, and astronomy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Atomic Models' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Topic: Nuclear Physics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Science'),
  (SELECT id FROM topics WHERE name = 'Nuclear Physics' AND grade_level_min = 12),
  'Nuclear Physics (Grade 12) Topic Guide', 'Radioactivity and nuclear reactions',
  'NUCLEAR PHYSICS - TOPIC TEACHING GUIDE (GRADE 12 PHYSICS)

PREREQUISITES:
Students should understand atomic structure including protons, neutrons, and isotopes. They should know mass-energy equivalence (E = mc²). Understanding of exponential decay is essential.

LEARNING OBJECTIVES:
- Describe the three types of radioactive decay (alpha, beta, gamma)
- Write balanced nuclear equations for decay and reactions
- Calculate half-life and remaining quantity using N = N₀(1/2)^(t/t₁/₂)
- Calculate binding energy and mass defect
- Compare fission and fusion processes

KEY CONCEPTS:
1) Alpha decay: emits He-4 nucleus; beta decay: emits electron or positron; gamma decay: emits photon
2) Half-life: time for half of nuclei to decay; N = N₀(1/2)^(t/t₁/₂)
3) Mass defect: difference between nucleon masses and nuclear mass; converted to binding energy via E = mc²
4) Fission: heavy nucleus splits into lighter nuclei, releasing energy
5) Fusion: light nuclei combine into heavier nucleus, releasing energy

COMMON MISCONCEPTIONS:
- Thinking all radiation is dangerous gamma (alpha and beta differ greatly)
- Believing half-life means all decay stops after two half-lives (decay continues indefinitely)
- Assuming nuclear reactions create or destroy mass (mass converts to energy)
- Thinking fusion and fission are similar in conditions needed (fusion requires extreme conditions)
- Believing nuclear energy is fundamentally different from other energy (it''s mass-energy conversion)
- Confusing radioactivity with radiation exposure

TEACHING SEQUENCE:
Explore nuclear stability and the strong nuclear force. Analyze the three decay types with equations. Practice half-life calculations and graphing. Calculate binding energy from mass defect. Compare fission and fusion reactions. Discuss nuclear energy applications and risks.

DIFFERENTIATION:
Struggling learners: Focus on decay types and half-life calculations. Practice writing balanced nuclear equations. Use decay chains as visual aids. Create decay type comparison charts.
Advanced learners: Explore nuclear force and shell model, analyze decay chains quantitatively, investigate nuclear reactor physics, research fusion reactor development.

VOCABULARY:
Nuclear physics, radioactivity, radioactive decay, alpha particle, beta particle, gamma ray, half-life, decay constant, mass defect, binding energy, fission, fusion, nuclear reaction, strong force, isotope, nuclide

CONNECTION TO FUTURE LEARNING:
Nuclear physics connects to particle physics and cosmology. Students will apply nuclear concepts to energy policy and medical applications. This knowledge is essential for understanding matter and energy at fundamental levels.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nuclear Physics' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;
