-- ============================================================================
-- COMPUTER SCIENCE UNIT PROMPTS (ALL GRADES K-12)
-- ============================================================================
-- Comprehensive pedagogical prompts for each Computer Science unit
-- Each prompt provides teaching methodology, computational thinking approaches,
-- programming concepts, and instructional strategies
-- ============================================================================

-- ============================================================================
-- KINDERGARTEN COMPUTER SCIENCE
-- ============================================================================

-- Digital Literacy Foundation (K)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Digital Literacy Foundation' AND grade_level = 0),
  'Digital Literacy Foundation Teaching Guide',
  'Comprehensive pedagogical approach for teaching digital literacy in Kindergarten',
  'DIGITAL LITERACY FOUNDATION - KINDERGARTEN UNIT GUIDE

UNIT OVERVIEW:
This unit introduces young learners to technology in age-appropriate ways. Students learn basic device usage, digital citizenship concepts, and begin developing computational thinking through following and giving instructions.

LEARNING PROGRESSION:
1. Learning to use tablets and computers safely
2. Understanding digital citizenship basics (being kind online)
3. Following step-by-step instructions precisely
4. Giving instructions to others
5. Recognizing technology in daily life

DEVELOPMENTAL CONSIDERATIONS:
Kindergartners are concrete thinkers with developing fine motor skills. Use touch devices when possible. Focus on unplugged activities that build computational thinking before screen-based learning.

COMMON CHALLENGES:
- Fine motor skills for mouse/keyboard
- Understanding abstract "digital" concepts
- Following multi-step instructions
- Waiting for technology (taking turns)

INSTRUCTIONAL STRATEGIES:

Unplugged Activities:
Start with activities without computers. "Program" classmates to move, draw, or complete tasks. Build algorithmic thinking through movement.

Robot Play:
Use simple programmable robots (Bee-Bot, Code-a-pillar). Concrete, tactile programming experience.

Following Instructions:
Practice following precise instructions. Simon Says, dance moves, building activities. Precision matters in computing.

Digital Citizenship Stories:
Read picture books about being kind online, asking adults for help, and technology safety.

Technology Hunt:
Find technology in classroom and home. Discuss how it helps us. Build technology awareness.

ASSESSMENT INDICATORS:
- Uses device safely and appropriately
- Follows multi-step instructions
- Describes ways to be kind online
- Identifies technology in daily life

VOCABULARY TO DEVELOP:
computer, tablet, device, instruction, step, order, safe, kind, digital, technology, program',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Digital Literacy Foundation' AND grade_level = 0)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 1 COMPUTER SCIENCE
-- ============================================================================

-- Computer Basics (1)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Computer Basics' AND grade_level = 1),
  'Computer Basics Teaching Guide',
  'Comprehensive pedagogical approach for teaching computer basics in Grade 1',
  'COMPUTER BASICS - GRADE 1 UNIT GUIDE

UNIT OVERVIEW:
Students develop foundational computer skills including keyboard and mouse use, basic internet navigation, and essential digital safety. They continue building computational thinking through instruction-following and pattern recognition.

LEARNING PROGRESSION:
1. Developing keyboard and mouse skills
2. Navigating simple websites safely
3. Understanding passwords and privacy
4. Recognizing patterns and sequences
5. Practicing digital safety habits

DEVELOPMENTAL CONSIDERATIONS:
First graders have improving fine motor skills but still need practice. Keep keyboard practice playful. Focus on digital safety habits that will persist.

INSTRUCTIONAL STRATEGIES:

Keyboard Games:
Use engaging keyboard practice programs. Short sessions (5-10 min) build skill without frustration.

Mouse Practice:
Drawing and clicking games develop mouse control. Celebrate improvement.

Password Understanding:
Use analogies (passwords are like keys) to explain. Practice creating and remembering safe passwords.

Pattern Recognition:
Find patterns in everything—images, sounds, movements. Pattern recognition is foundational to CS.

Safe Searching:
Practice supervised internet searches. Establish habits of asking adults before clicking unfamiliar links.

ASSESSMENT INDICATORS:
- Uses keyboard and mouse effectively
- Navigates approved websites safely
- Explains why passwords matter
- Identifies patterns in sequences

VOCABULARY TO DEVELOP:
keyboard, mouse, click, password, private, website, internet, pattern, sequence, safe, search',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Computer Basics' AND grade_level = 1)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 2 COMPUTER SCIENCE
-- ============================================================================

-- Digital Tools (2)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Digital Tools' AND grade_level = 2),
  'Digital Tools Teaching Guide',
  'Comprehensive pedagogical approach for teaching digital tools in Grade 2',
  'DIGITAL TOOLS - GRADE 2 UNIT GUIDE

UNIT OVERVIEW:
Students learn to use digital tools for creativity, organization, and communication. They develop file management skills and practice appropriate online communication.

LEARNING PROGRESSION:
1. Saving and organizing files
2. Using creative digital tools (drawing, music)
3. Communicating safely online
4. Creating simple digital projects
5. Understanding appropriate online behavior

DEVELOPMENTAL CONSIDERATIONS:
Second graders enjoy creating and sharing. Channel this into productive digital creation. Establish clear expectations for online communication.

INSTRUCTIONAL STRATEGIES:

File Organization:
Use concrete analogies—folders are like physical folders. Practice saving, naming, and finding files.

Digital Art:
Use drawing and art programs. Create digital versions of classroom art projects.

Safe Communication:
Practice appropriate email or message writing. Model and discuss what to share and not share.

Digital Creation Projects:
Create digital stories, presentations, or art. Celebrate and share appropriately.

Netiquette Practice:
Establish and practice rules for online communication. Kind words, asking permission, respecting others.

ASSESSMENT INDICATORS:
- Saves and finds files independently
- Uses creative digital tools appropriately
- Communicates respectfully online
- Creates digital projects

VOCABULARY TO DEVELOP:
file, folder, save, create, digital, communication, email, appropriate, share, respect, project',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Digital Tools' AND grade_level = 2)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 3 COMPUTER SCIENCE
-- ============================================================================

-- Introduction to Coding (3)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Introduction to Coding' AND grade_level = 3),
  'Introduction to Coding Teaching Guide',
  'Comprehensive pedagogical approach for teaching coding introduction in Grade 3',
  'INTRODUCTION TO CODING - GRADE 3 UNIT GUIDE

UNIT OVERVIEW:
Students begin formal computational thinking and block-based programming. They learn sequences, simple loops, and basic programming concepts through visual coding environments.

LEARNING PROGRESSION:
1. Developing typing fluency
2. Understanding sequences and order
3. Recognizing and creating patterns
4. Introduction to block-based programming
5. Creating simple programs

DEVELOPMENTAL CONSIDERATIONS:
Third graders are ready for structured programming concepts. Block-based coding (Scratch, Code.org) removes syntax barriers. Emphasize that making mistakes is part of learning.

COMMON CHALLENGES:
- Frustration with debugging
- Understanding that computers are literal
- Sequencing complex instructions
- Transitioning from free play to structured programming

INSTRUCTIONAL STRATEGIES:

Unplugged First:
Begin with unplugged activities. Write instructions for making a sandwich, drawing a picture. Precision matters!

Block-Based Coding:
Use Scratch, Blockly, or Code.org. Visual blocks make programming accessible.

Debugging Mindset:
Normalize errors. "Bugs are part of programming! Finding them is a puzzle."

Sequence Challenges:
Create increasingly complex sequences. Animation, stories, simple games.

Pair Programming:
Two students, one computer. Driver types, navigator guides. Switch roles. Learn collaboration.

ASSESSMENT INDICATORS:
- Creates sequential programs
- Identifies and fixes simple bugs
- Explains what their code does
- Works collaboratively on coding projects

VOCABULARY TO DEVELOP:
sequence, code, program, block, command, debug, bug, loop, repeat, algorithm',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Introduction to Coding' AND grade_level = 3)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 4 COMPUTER SCIENCE
-- ============================================================================

-- Algorithms and Logic (4)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Algorithms and Logic' AND grade_level = 4),
  'Algorithms and Logic Teaching Guide',
  'Comprehensive pedagogical approach for teaching algorithms and logic in Grade 4',
  'ALGORITHMS AND LOGIC - GRADE 4 UNIT GUIDE

UNIT OVERVIEW:
Students deepen programming understanding with algorithms, conditionals, and more complex projects. They learn systematic problem-solving and design thinking.

LEARNING PROGRESSION:
1. Evaluating online sources
2. Designing step-by-step algorithms
3. Using conditionals (if-then)
4. Building more complex block-based projects
5. Applying logic to problem-solving

DEVELOPMENTAL CONSIDERATIONS:
Fourth graders can handle more abstract logic. Conditionals may need concrete analogies first. Encourage planning before coding.

INSTRUCTIONAL STRATEGIES:

Algorithm Design:
Plan before coding. Flowcharts, pseudocode, or written steps. Design thinking precedes implementation.

Conditional Logic:
"If it''s raining, bring umbrella. Else, wear sunscreen." Real-life conditionals before code conditionals.

Research Skills:
Evaluate websites for reliability. Who made it? What evidence supports claims?

Game Design:
Create simple games. Meaningful projects motivate deeper learning.

Debugging Strategies:
Teach systematic debugging. Read error messages, test sections, explain code aloud.

ASSESSMENT INDICATORS:
- Designs algorithms before coding
- Uses conditionals appropriately
- Creates interactive projects
- Evaluates online sources critically

VOCABULARY TO DEVELOP:
algorithm, condition, if-then, else, logic, design, evaluate, source, reliable, interactive, event',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Algorithms and Logic' AND grade_level = 4)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 5 COMPUTER SCIENCE
-- ============================================================================

-- Data and Debugging (5)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Data and Debugging' AND grade_level = 5),
  'Data and Debugging Teaching Guide',
  'Comprehensive pedagogical approach for teaching data and debugging in Grade 5',
  'DATA AND DEBUGGING - GRADE 5 UNIT GUIDE

UNIT OVERVIEW:
Students explore data concepts, strengthen debugging skills, and learn collaborative coding practices. They understand how data is collected, organized, and represented.

LEARNING PROGRESSION:
1. Collecting and organizing data
2. Representing data visually
3. Systematic debugging techniques
4. Collaborative coding projects
5. Understanding data privacy

DEVELOPMENTAL CONSIDERATIONS:
Fifth graders can handle data analysis and abstract debugging. Connect data concepts to real surveys and investigations. Emphasize collaboration skills.

INSTRUCTIONAL STRATEGIES:

Data Collection:
Collect classroom data—favorites, measurements, surveys. Make data personal and relevant.

Data Visualization:
Create charts and graphs from data. Use digital tools and code to visualize.

Debugging Protocols:
Teach systematic approaches: read errors, add print statements, test incrementally, explain to a friend.

Collaborative Projects:
Larger projects with partners or teams. Practice version control concepts (taking turns, saving versions).

Privacy Discussion:
Discuss data privacy. What data should be shared? What should be kept private?

ASSESSMENT INDICATORS:
- Collects and organizes data effectively
- Creates visualizations from data
- Uses systematic debugging strategies
- Collaborates effectively on coding projects

VOCABULARY TO DEVELOP:
data, collect, organize, visualize, graph, debug, test, collaborate, version, privacy, survey',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Data and Debugging' AND grade_level = 5)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 6 COMPUTER SCIENCE
-- ============================================================================

-- Web and Data Basics (6)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Web and Data Basics' AND grade_level = 6),
  'Web and Data Basics Teaching Guide',
  'Comprehensive pedagogical approach for teaching web and data basics in Grade 6',
  'WEB AND DATA BASICS - GRADE 6 UNIT GUIDE

UNIT OVERVIEW:
Students are introduced to web technologies (HTML), programming fundamentals (variables, data types), and cybersecurity concepts. This bridges elementary concepts to more formal programming.

LEARNING PROGRESSION:
1. Understanding how the web works
2. Introduction to HTML structure
3. Understanding variables and data types
4. Practicing cybersecurity awareness
5. Creating simple web pages

DEVELOPMENTAL CONSIDERATIONS:
Sixth graders are ready for text-based coding concepts. Start with HTML—immediate visual feedback motivates learning. Make cybersecurity personally relevant.

COMMON CHALLENGES:
- Syntax precision (closing tags, spelling)
- Abstract concept of variables
- Remembering security practices
- Transitioning from block to text concepts

INSTRUCTIONAL STRATEGIES:

How Web Works:
Explore how browsers, servers, and HTML work together. Demystify the internet.

HTML Basics:
Create simple web pages. Immediate feedback—save, refresh, see changes.

Variable Analogies:
Variables are like labeled boxes or name tags. Store and retrieve information.

Data Types:
Numbers vs text vs true/false. Different types for different purposes.

Cybersecurity Personal:
Phishing examples, password practices, social engineering. Real stories make it relevant.

ASSESSMENT INDICATORS:
- Creates basic HTML pages
- Explains variables and data types
- Practices cybersecurity habits
- Describes how the web works

VOCABULARY TO DEVELOP:
HTML, tag, element, variable, data type, string, number, boolean, cybersecurity, phishing, web, browser',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Web and Data Basics' AND grade_level = 6)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 7 COMPUTER SCIENCE
-- ============================================================================

-- Programming Foundations (7)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Programming Foundations' AND grade_level = 7),
  'Programming Foundations Teaching Guide',
  'Comprehensive pedagogical approach for teaching programming foundations in Grade 7',
  'PROGRAMMING FOUNDATIONS - GRADE 7 UNIT GUIDE

UNIT OVERVIEW:
Students develop core programming skills including conditionals, loops, and problem decomposition. They learn to break complex problems into smaller parts and represent data in multiple forms.

LEARNING PROGRESSION:
1. Mastering conditionals (if/else, nested conditions)
2. Understanding loops (for, while)
3. Decomposing complex problems
4. Understanding data representation (binary basics)
5. Building multi-feature programs

DEVELOPMENTAL CONSIDERATIONS:
Seventh graders can handle increasing abstraction. Loops and nested conditionals need practice. Emphasize problem decomposition as a life skill.

INSTRUCTIONAL STRATEGIES:

Loop Patterns:
Identify repetition in real life. How would you describe it to a computer? Practice loop structures.

Nested Logic:
Build complexity gradually. Simple conditions → combined conditions → nested conditions.

Decomposition Practice:
Break large problems into smaller steps. "How would you explain making breakfast to an alien?"

Binary Introduction:
Connect binary to how computers "think." Simple encoding/decoding activities.

Project-Based:
Build programs with multiple features. Apply all concepts in meaningful projects.

ASSESSMENT INDICATORS:
- Uses loops and conditionals effectively
- Decomposes problems into smaller steps
- Explains basic data representation
- Creates programs with multiple features

VOCABULARY TO DEVELOP:
conditional, loop, for, while, nested, decomposition, binary, encode, decode, iteration, logic',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Programming Foundations' AND grade_level = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 8 COMPUTER SCIENCE
-- ============================================================================

-- Functions and Databases (8)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Functions and Databases' AND grade_level = 8),
  'Functions and Databases Teaching Guide',
  'Comprehensive pedagogical approach for teaching functions and databases in Grade 8',
  'FUNCTIONS AND DATABASES - GRADE 8 UNIT GUIDE

UNIT OVERVIEW:
Students learn modular programming with functions and understand how data is stored and retrieved in databases. They create interactive programs with user input and persistent data.

LEARNING PROGRESSION:
1. Writing and using functions
2. Understanding parameters and return values
3. Creating interactive programs with user input
4. Introduction to database concepts
5. Connecting programs to data storage

DEVELOPMENTAL CONSIDERATIONS:
Eighth graders can handle abstraction of functions. Use real-world analogies (functions as recipes). Database concepts prepare for high school CS.

INSTRUCTIONAL STRATEGIES:

Function Analogies:
Functions are like recipes—input ingredients, follow steps, output result. Reusable and organized.

Modular Design:
Break programs into functions. Each function does one thing well. Code organization matters.

User Input:
Create truly interactive programs. User choices affect program flow. More engaging projects.

Database Concepts:
Understand tables, rows, columns. Simple queries to retrieve information.

Full-Stack Preview:
Connect interfaces to data. See how real applications work.

ASSESSMENT INDICATORS:
- Creates and uses functions effectively
- Designs interactive user experiences
- Explains database structure
- Connects programs to data storage

VOCABULARY TO DEVELOP:
function, parameter, return, modular, input, output, database, table, query, record, field, interactive',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Functions and Databases' AND grade_level = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 9 COMPUTER SCIENCE
-- ============================================================================

-- Programming Fundamentals (9)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Programming Fundamentals' AND grade_level = 9),
  'Programming Fundamentals Teaching Guide',
  'Comprehensive pedagogical approach for teaching programming fundamentals in Grade 9',
  'PROGRAMMING FUNDAMENTALS - GRADE 9 UNIT GUIDE

UNIT OVERVIEW:
Students transition to text-based programming (Python) and learn software development practices. They understand the software development lifecycle and begin using version control.

LEARNING PROGRESSION:
1. Learning Python syntax and structure
2. Applying previous concepts in text-based language
3. Understanding software development lifecycle
4. Introduction to version control (Git)
5. Building complete programs

DEVELOPMENTAL CONSIDERATIONS:
Ninth graders can handle text-based programming. Syntax frustration is normal—emphasize that error messages are helpful, not punitive. Connect to real software development.

COMMON CHALLENGES:
- Syntax errors (indentation, typos)
- Transitioning from visual to text
- Understanding error messages
- Version control concepts

INSTRUCTIONAL STRATEGIES:

Python Transition:
Connect to block concepts. "This is how we write a loop in Python."

Error Message Reading:
Teach how to read and use error messages. They tell you what''s wrong and where.

Development Lifecycle:
Planning → Development → Testing → Deployment → Maintenance. Real software process.

Git Basics:
Commit, push, pull. Version control as time machine for code.

Complete Projects:
Build programs from start to finish. Practice full development cycle.

ASSESSMENT INDICATORS:
- Writes correct Python syntax
- Reads and uses error messages
- Follows development process
- Uses version control basics

VOCABULARY TO DEVELOP:
Python, syntax, indentation, error, exception, version control, commit, repository, development lifecycle, testing',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Programming Fundamentals' AND grade_level = 9)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 10 COMPUTER SCIENCE
-- ============================================================================

-- Object-Oriented Programming (10)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Object-Oriented Programming' AND grade_level = 10),
  'Object-Oriented Programming Teaching Guide',
  'Comprehensive pedagogical approach for teaching OOP in Grade 10',
  'OBJECT-ORIENTED PROGRAMMING - GRADE 10 UNIT GUIDE

UNIT OVERVIEW:
Students learn object-oriented programming concepts, work with APIs and web services, and understand how networks function. They build more sophisticated applications.

LEARNING PROGRESSION:
1. Understanding classes and objects
2. Learning inheritance and encapsulation
3. Working with APIs
4. Understanding networks and internet
5. Building networked applications

DEVELOPMENTAL CONSIDERATIONS:
Tenth graders can handle OOP abstraction. Use real-world modeling (objects in games, apps). Connect to technologies they use daily.

INSTRUCTIONAL STRATEGIES:

OOP Modeling:
Model real-world objects. Dog class with properties (name, breed) and methods (bark, run).

Class Design:
Design before code. What properties? What methods? How do objects interact?

API Exploration:
Use public APIs. Weather, translation, games. See how software connects.

Network Understanding:
How does the internet work? Packets, protocols, addressing. Demystify connectivity.

Connected Applications:
Build apps that use APIs or network features. Real-world application.

ASSESSMENT INDICATORS:
- Designs and implements classes
- Uses APIs effectively
- Explains network fundamentals
- Builds connected applications

VOCABULARY TO DEVELOP:
class, object, method, property, inheritance, encapsulation, API, protocol, network, server, client',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Object-Oriented Programming' AND grade_level = 10)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 11 COMPUTER SCIENCE
-- ============================================================================

-- Data Structures and AI (11)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Data Structures and AI' AND grade_level = 11),
  'Data Structures and AI Teaching Guide',
  'Comprehensive pedagogical approach for teaching data structures and AI in Grade 11',
  'DATA STRUCTURES AND AI - GRADE 11 UNIT GUIDE

UNIT OVERVIEW:
Students explore fundamental data structures, algorithm analysis, and introduction to artificial intelligence and machine learning concepts. They develop deeper computational thinking.

LEARNING PROGRESSION:
1. Implementing arrays, lists, stacks, queues
2. Understanding when to use each structure
3. Analyzing algorithm efficiency
4. Introduction to AI concepts
5. Exploring machine learning basics

DEVELOPMENTAL CONSIDERATIONS:
Eleventh graders can handle abstract analysis. Big-O concepts need concrete examples. AI/ML should be demystified—it''s math and data, not magic.

INSTRUCTIONAL STRATEGIES:

Data Structure Comparisons:
When would you use a stack vs queue? Real scenarios inform choice.

Algorithm Analysis:
Measure and compare. How does performance change with input size?

Big-O Introduction:
Conceptual understanding first. Linear, quadratic, logarithmic growth patterns.

AI Demystification:
AI learns from patterns in data. Explore examples, discuss limitations and ethics.

ML Experiments:
Use tools like Teachable Machine. Train simple models, understand the process.

ASSESSMENT INDICATORS:
- Implements and uses data structures
- Analyzes algorithm efficiency
- Explains AI/ML concepts accurately
- Considers ethical implications

VOCABULARY TO DEVELOP:
array, list, stack, queue, algorithm, efficiency, Big-O, artificial intelligence, machine learning, training, model, ethics',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Data Structures and AI' AND grade_level = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- GRADE 12 COMPUTER SCIENCE
-- ============================================================================

-- Software Engineering (12)
INSERT INTO prompt_templates (
  prompt_type, subject_id, unit_id, name, description, prompt_content, priority
)
SELECT
  'unit_global',
  (SELECT id FROM subjects WHERE name = 'Computer Science'),
  (SELECT id FROM units WHERE name = 'Software Engineering' AND grade_level = 12),
  'Software Engineering Teaching Guide',
  'Comprehensive pedagogical approach for teaching software engineering in Grade 12',
  'SOFTWARE ENGINEERING - GRADE 12 UNIT GUIDE

UNIT OVERVIEW:
Students design and build complete software projects while exploring computer ethics and career pathways. This capstone experience prepares for college and career in technology.

LEARNING PROGRESSION:
1. Designing complete applications
2. Following software engineering practices
3. Exploring computer ethics deeply
4. Investigating CS career pathways
5. Building portfolio-worthy projects

DEVELOPMENTAL CONSIDERATIONS:
Twelfth graders are preparing for next steps. Connect learning to college and career. Emphasize both technical skills and professional practices.

INSTRUCTIONAL STRATEGIES:

Capstone Projects:
Significant projects from design to deployment. Portfolio-worthy work.

Agile Practices:
Sprints, stand-ups, user stories. Experience real development practices.

Ethics Deep Dive:
Privacy, bias in algorithms, automation and jobs, responsible technology. Informed future technologists.

Career Exploration:
Guest speakers, job shadowing, college program research. Many paths in CS.

Portfolio Development:
Document and showcase work. Prepare for college applications and interviews.

ASSESSMENT INDICATORS:
- Designs and completes significant projects
- Follows professional development practices
- Analyzes ethical implications of technology
- Articulates career interests and pathways

VOCABULARY TO DEVELOP:
software engineering, agile, sprint, user story, ethics, bias, privacy, portfolio, career, deployment, professional',
  80
FROM dual
WHERE EXISTS (SELECT 1 FROM units WHERE name = 'Software Engineering' AND grade_level = 12)
ON CONFLICT DO NOTHING;

-- Verification
SELECT 'Computer Science unit prompts seeded' as status, COUNT(*) as count
FROM prompt_templates
WHERE prompt_type = 'unit_global' AND subject_id = (SELECT id FROM subjects WHERE name = 'Computer Science');
