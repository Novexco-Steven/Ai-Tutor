-- Kindergarten History Topic Prompts
-- 16 comprehensive topic prompts for Kindergarten History
-- Topics organized by unit: Myself and My Family, My School and Community, Maps and Places, American Symbols

-- =====================================================
-- UNIT: MYSELF AND MY FAMILY
-- =====================================================

-- Topic: All About Me
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'All About Me' AND grade_level_min = 0),
  'All About Me (Kindergarten) Topic Guide',
  'Teaching children to describe themselves and their unique qualities',
  'ALL ABOUT ME - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should know their first and last name and be able to communicate basic information about themselves verbally. They should understand the concept of "special" or "unique" and be comfortable sharing in a group setting.

LEARNING OBJECTIVES:
- State their full name, age, and birthday
- Identify physical characteristics like hair color, eye color, and height
- Describe favorite things (food, color, animal, activity)
- Recognize what makes them special and unique
- Use describing words to talk about themselves

KEY CONCEPTS:
1) Every person is unique and special with their own characteristics and preferences
2) We can describe ourselves using words about how we look and what we like
3) Learning about ourselves helps us understand our identity
4) Sharing about ourselves helps others get to know us
5) Our bodies, feelings, and likes all make up who we are

COMMON MISCONCEPTIONS:
- Thinking everyone must like the same things to be friends
- Believing being different is bad rather than special
- Not understanding that people can change (grow taller, get older)
- Confusing what makes us unique with what makes us better or worse than others

TEACHING SEQUENCE:
Begin with a mirror activity where children look at themselves and describe what they see. Model self-description with enthusiasm: "I have brown eyes and I love pizza!" Create "All About Me" drawings where children illustrate themselves with favorite things. Practice saying full name and age. Use songs like "Head, Shoulders, Knees, and Toes" to identify body parts. Have show-and-tell where each child shares one special thing about themselves. Create a class book with each child''s page celebrating what makes them special.

DIFFERENTIATION:
For struggling learners: Use picture cards showing different characteristics (hair colors, favorite foods) for children to point to. Practice one-on-one before group sharing. Allow drawing instead of verbal description.
For advanced learners: Encourage complete sentences with multiple details. Ask follow-up questions about why they like certain things. Have them compare similarities with a friend while celebrating differences.

VOCABULARY:
Name, age, birthday, favorite, special, unique, describe, tall, short, hair, eyes, like, love, me, myself, different, same

CONNECTION TO FUTURE LEARNING:
Understanding oneself is the foundation for understanding others, families, and communities. This topic prepares children for discussing family roles, comparing their family to others, and eventually understanding citizenship and identity in larger social contexts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'All About Me' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: My Family
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'My Family' AND grade_level_min = 0),
  'My Family (Kindergarten) Topic Guide',
  'Teaching about family members and what makes families special',
  'MY FAMILY - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should be able to identify themselves and understand the concept of living with or spending time with certain people regularly. They should be comfortable talking about people they love and care for.

LEARNING OBJECTIVES:
- Name family members who live with them or are close to them
- Understand that families come in different sizes and types
- Describe roles of different family members (who takes care of you, who you play with)
- Recognize that families love and take care of each other
- Use family vocabulary words correctly (mother, father, sister, brother, grandparent)

KEY CONCEPTS:
1) A family is people who love and take care of each other
2) Families can look different - some have two parents, one parent, grandparents, stepparents, or other caregivers
3) Family members have different roles (who cooks, who works, who helps with homework)
4) Everyone in a family is important and contributes in their own way
5) Families do things together like eating, playing, and celebrating

COMMON MISCONCEPTIONS:
- Thinking all families must look like their own family
- Believing families must include specific members like mom and dad
- Not understanding that pets can be part of families for some people
- Confusing friends who feel like family with actual family members

TEACHING SEQUENCE:
Begin by reading books showing diverse family structures (families with single parents, grandparents as caregivers, two moms or dads, foster families). Have children draw their family and share who is in their picture. Discuss what families do together - eat, play, celebrate. Create a family tree or family circle diagram. Role-play family activities like setting the table or reading bedtime stories. Invite family members to visit the classroom or send photos/videos if possible. Celebrate all family types equally.

DIFFERENTIATION:
For struggling learners: Provide photos of common family groupings. Use puppets to demonstrate family relationships. Allow children to point and name rather than draw.
For advanced learners: Discuss extended family (aunts, uncles, cousins). Compare how families are similar and different. Have them interview a family member about their role.

VOCABULARY:
Family, mother, father, mom, dad, sister, brother, grandma, grandpa, grandmother, grandfather, aunt, uncle, cousin, baby, pet, love, care, home, together

CONNECTION TO FUTURE LEARNING:
Understanding one''s own family prepares children for learning about families in different times and places, community roles, and eventually broader social structures. This is foundational for all social studies learning about how people live together.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'My Family' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Family Traditions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Family Traditions' AND grade_level_min = 0),
  'Family Traditions (Kindergarten) Topic Guide',
  'Teaching about special things families do together',
  'FAMILY TRADITIONS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand what a family is and be able to identify their own family members. They should have experience with at least some family activities they can recall and describe.

LEARNING OBJECTIVES:
- Understand what a tradition is (something special we do again and again)
- Identify traditions in their own family
- Recognize that different families have different traditions
- Appreciate that traditions are passed down from older to younger family members
- Share about a family tradition with the class

KEY CONCEPTS:
1) A tradition is something special that families do over and over, often at the same time each year
2) Traditions might include special foods, activities, songs, or celebrations
3) Families pass traditions from grandparents to parents to children
4) Every family has traditions, even if they are simple like pizza Friday or bedtime stories
5) Learning about others'' traditions helps us understand and appreciate different families

COMMON MISCONCEPTIONS:
- Thinking traditions must be fancy or expensive
- Believing only holiday celebrations count as traditions
- Assuming everyone has the same traditions
- Not recognizing simple routines as potential traditions

TEACHING SEQUENCE:
Begin by defining tradition with examples (birthday cake, holiday meals, Sunday dinners). Read books about family traditions from various cultures. Have children share one thing their family does together regularly. Create a class "tradition quilt" where each child decorates a square showing a family tradition. Discuss holiday traditions from different cultures respectfully. Make a new class tradition together (like a special greeting or goodbye song). Send home a family interview about traditions for children to complete with caregivers.

DIFFERENTIATION:
For struggling learners: Provide picture prompts of common traditions (birthday parties, holiday decorations, family meals). Help children identify even simple traditions like breakfast routines.
For advanced learners: Compare traditions across generations (what did grandma do as a child?). Discuss why certain traditions started. Have children create a new tradition they want their family to try.

VOCABULARY:
Tradition, celebration, holiday, special, family, together, remember, every year, pass down, generation, culture, celebrate, custom

CONNECTION TO FUTURE LEARNING:
Understanding family traditions prepares children for learning about cultural traditions, holidays, and how communities celebrate. This connects to broader social studies concepts about culture, heritage, and how societies pass knowledge between generations.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Family Traditions' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Rules at Home
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Rules at Home' AND grade_level_min = 0),
  'Rules at Home (Kindergarten) Topic Guide',
  'Teaching children why families have rules',
  'RULES AT HOME - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand basic concepts of family and have experience following simple directions. They should be developing understanding of cause and effect (if I do this, that happens).

LEARNING OBJECTIVES:
- Understand that rules are expectations for how to behave
- Identify rules they have at home
- Explain why families have rules (safety, fairness, respect)
- Recognize that rules help everyone in the family
- Compare home rules to school rules

KEY CONCEPTS:
1) Rules are instructions that tell us how to behave and what is expected
2) Rules keep us safe (no running with scissors, look both ways before crossing)
3) Rules help everyone get along (share toys, use kind words)
4) Rules show respect (clean up after yourself, listen when others talk)
5) Different families may have different rules, but all families have some rules

COMMON MISCONCEPTIONS:
- Thinking rules are only for punishment
- Believing adults don''t have to follow rules
- Not understanding the reason behind rules (why can''t I run in the house?)
- Assuming every family has the same rules

TEACHING SEQUENCE:
Begin by brainstorming class rules and why we have them. Connect to home rules - what rules do you have at your house? Create categories: safety rules, kindness rules, responsibility rules. Read books about following rules and what happens when rules are broken. Role-play scenarios showing why rules help (what could happen if we don''t share?). Create a "Rules Help Us" chart with pictures. Discuss consequences of not following rules (natural consequences vs. punishments). Celebrate when rules are followed.

DIFFERENTIATION:
For struggling learners: Use simple visuals showing rules (picture of crossing street safely, picking up toys). Focus on just 2-3 important rules at a time. Use puppets to demonstrate rule-following.
For advanced learners: Discuss who makes rules and why. Compare rules in different settings (grandma''s house, school, park). Have children help create a new classroom rule and explain why it''s needed.

VOCABULARY:
Rule, safe, safety, fair, share, kind, respect, follow, listen, responsible, consequence, family, home, expected, behavior

CONNECTION TO FUTURE LEARNING:
Understanding home rules prepares children for understanding school rules, community laws, and eventually government and citizenship. The concept that rules help everyone live together peacefully is foundational for social studies and civic education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rules at Home' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: MY SCHOOL AND COMMUNITY
-- =====================================================

-- Topic: School Rules
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'School Rules' AND grade_level_min = 0),
  'School Rules (Kindergarten) Topic Guide',
  'Teaching the rules that help school be safe and fun',
  'SCHOOL RULES - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand what rules are from home experience and be adjusting to the school environment. They should be able to follow simple verbal directions.

LEARNING OBJECTIVES:
- Identify important school rules and explain their purpose
- Follow rules in the classroom, hallway, cafeteria, and playground
- Understand that rules keep everyone safe and help us learn
- Take responsibility for following rules without constant reminders
- Recognize that adults at school enforce rules to help everyone

KEY CONCEPTS:
1) School rules help everyone learn and stay safe
2) Different areas of school have different rules (quiet in library, walk in halls)
3) Following rules shows respect for teachers, classmates, and ourselves
4) Rules help prevent accidents and hurt feelings
5) Everyone at school - students AND adults - follows rules

COMMON MISCONCEPTIONS:
- Thinking rules only apply when the teacher is watching
- Believing rules are just to restrict fun
- Not understanding that rules apply to all students equally
- Thinking breaking rules only affects themselves, not others

TEACHING SEQUENCE:
Create classroom rules together with student input at the start of the year. Tour the school explaining rules for each area (cafeteria, playground, bathroom, library). Use pictures and symbols for each rule. Practice rules through role-play and positive modeling. Read books about school rules and making good choices. Create a "caught being good" system that celebrates rule-following. Review rules regularly and discuss why each one matters. Address rule-breaking with natural consequences and re-teaching.

DIFFERENTIATION:
For struggling learners: Use visual schedules and picture cards for rules. Provide consistent routines and reminders. Partner with a buddy who models good rule-following.
For advanced learners: Have them help teach rules to classmates. Discuss what would happen without certain rules. Let them suggest improvements to classroom procedures.

VOCABULARY:
Rules, safe, fair, respect, responsible, listen, take turns, share, quiet, walk, inside voice, playground, cafeteria, hallway, line up, follow directions

CONNECTION TO FUTURE LEARNING:
School rules connect to broader concepts of community rules, laws, and governance. Understanding that rules help groups function prepares children for civic education and understanding how societies organize themselves.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'School Rules' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Community Helpers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Community Helpers' AND grade_level_min = 0),
  'Community Helpers (Kindergarten) Topic Guide',
  'Teaching about firefighters, police officers, doctors, and teachers',
  'COMMUNITY HELPERS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand what a community is (the area where we live, including our neighborhood). They should be able to identify some adults who help them in daily life.

LEARNING OBJECTIVES:
- Identify different community helpers and their roles
- Explain how each helper makes the community better or safer
- Recognize tools and equipment community helpers use
- Understand that community helpers are trained for their jobs
- Show appreciation for people who help in our community

KEY CONCEPTS:
1) Community helpers are people whose jobs help others in our neighborhood
2) Different helpers do different jobs (doctors help sick people, firefighters put out fires)
3) Community helpers use special tools and equipment for their work
4) Many helpers wear uniforms to show their job
5) We all benefit from the work of community helpers

COMMON MISCONCEPTIONS:
- Thinking police officers are scary or mean rather than helpers
- Believing only certain jobs count as helping (missing garbage collectors, bus drivers)
- Not understanding that community helpers must learn and train for their jobs
- Assuming all firefighters fight fires all day (missing their other duties)

TEACHING SEQUENCE:
Introduce one community helper at a time with pictures and props. Read books about firefighters, police officers, doctors, nurses, teachers, and other helpers. Set up dramatic play areas with helper costumes and props. Invite community helpers to visit the classroom or take virtual field trips. Create a "Community Helpers" bulletin board with student drawings. Match helpers to their tools (stethoscope for doctor, hose for firefighter). Discuss how students can be helpers in their community too. Write thank-you cards to real community helpers.

DIFFERENTIATION:
For struggling learners: Focus on 3-4 main helpers before expanding. Use concrete props and dress-up. Create simple matching games with helpers and their tools.
For advanced learners: Explore less-common helpers (veterinarians, librarians, crossing guards). Discuss the training needed for different jobs. Have children research and present about a helper.

VOCABULARY:
Community, helper, firefighter, police officer, doctor, nurse, teacher, mail carrier, dentist, garbage collector, librarian, uniform, tools, job, work, safe, help, serve

CONNECTION TO FUTURE LEARNING:
Community helpers prepare children for understanding different occupations, the economy, and civic responsibility. This connects to later learning about government services, public servants, and how communities organize to meet needs.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Community Helpers' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Jobs in Our Community
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Jobs in Our Community' AND grade_level_min = 0),
  'Jobs in Our Community (Kindergarten) Topic Guide',
  'Teaching about different jobs people do',
  'JOBS IN OUR COMMUNITY - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand what community helpers are and recognize that adults work at jobs. They should be developing understanding that people do different types of work.

LEARNING OBJECTIVES:
- Identify various jobs people do in the community
- Understand that people work to earn money and help others
- Recognize that every job is important and contributes to the community
- Describe what family members do at their jobs
- Begin thinking about what jobs they might like to do when they grow up

KEY CONCEPTS:
1) Everyone who works has a job that helps the community in some way
2) People work to earn money to buy things they need
3) Different jobs require different skills and training
4) All jobs are important - from cleaning to building to teaching
5) Jobs can be indoors or outdoors, with people or with things

COMMON MISCONCEPTIONS:
- Thinking only "fancy" jobs are important
- Not recognizing family members'' work as real jobs (especially if they work from home or do caregiving)
- Believing children can''t have jobs (ignoring chores and responsibilities)
- Assuming all jobs pay the same or that higher-paying jobs are more important

TEACHING SEQUENCE:
Create a list of jobs parents and community members have. Discuss what each job involves and how it helps others. Read books about various careers showing diverse workers. Set up career centers for dramatic play (restaurant, store, hospital). Have parents visit to talk about their jobs or send video messages. Sort jobs by categories (helps people, builds things, grows food). Discuss what children might want to be when they grow up and why. Connect jobs to interests (if you like animals, you could be a vet!).

DIFFERENTIATION:
For struggling learners: Focus on familiar, concrete jobs (teacher, store clerk, cook). Use picture books and dress-up props. Create simple job matching activities.
For advanced learners: Explore unusual careers. Discuss why some jobs might be harder to find in certain communities. Connect jobs to subjects in school (scientists use math and science).

VOCABULARY:
Job, work, career, worker, employee, boss, business, store, office, factory, farm, earn, money, help, community, skills, training

CONNECTION TO FUTURE LEARNING:
Understanding jobs prepares children for learning about economics, the division of labor, and how communities and societies function. This connects to later learning about goods and services, trade, and career planning.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Jobs in Our Community' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Being a Good Citizen
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Being a Good Citizen' AND grade_level_min = 0),
  'Being a Good Citizen (Kindergarten) Topic Guide',
  'Teaching children how to help others and be kind',
  'BEING A GOOD CITIZEN - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand basic concepts of kindness, sharing, and following rules. They should be able to interact with peers and adults in the school setting.

LEARNING OBJECTIVES:
- Understand that a citizen is a member of a community
- Identify ways to be a good citizen at school and home
- Practice being helpful, kind, and responsible
- Recognize that good citizens follow rules and help others
- Take action to make their classroom and community better

KEY CONCEPTS:
1) Being a citizen means being part of a community (school, neighborhood, city, country)
2) Good citizens help others and are kind and respectful
3) Good citizens follow rules and take care of shared spaces
4) Everyone can be a good citizen, including children
5) Small acts of kindness make big differences in our community

COMMON MISCONCEPTIONS:
- Thinking "citizen" only applies to adults or is a legal term
- Believing you can only help if you''re grown up
- Not understanding that being a good citizen includes everyday actions
- Thinking following rules is enough without also being actively helpful

TEACHING SEQUENCE:
Define citizen in child-friendly terms (a member of a community who helps). Create a "Good Citizen" chart with pictures of helpful behaviors. Practice random acts of kindness in the classroom. Read stories about children making a difference. Create a class service project (making cards for nursing home, picking up trash). Role-play how to help classmates who are sad, need help, or are new. Celebrate when children demonstrate good citizenship. Discuss how being a good citizen at school prepares them to be good citizens in their community.

DIFFERENTIATION:
For struggling learners: Focus on concrete, observable behaviors (holding the door, sharing toys). Use visual reminder charts. Provide immediate positive feedback for good citizen actions.
For advanced learners: Discuss citizenship at larger scales (community, country). Have them identify problems in the school and suggest solutions. Lead younger children in service projects.

VOCABULARY:
Citizen, community, kind, helpful, responsible, fair, share, respect, care, volunteer, service, help, neighborhood, together, rules

CONNECTION TO FUTURE LEARNING:
Good citizenship connects to civic education, government, and community participation. This foundational understanding prepares children for learning about voting, laws, rights and responsibilities, and active participation in democracy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Being a Good Citizen' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: MAPS AND PLACES
-- =====================================================

-- Topic: What is a Map?
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'What is a Map?' AND grade_level_min = 0),
  'What is a Map? (Kindergarten) Topic Guide',
  'Teaching that maps show places from above like a bird sees',
  'WHAT IS A MAP? - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should have basic spatial awareness (understanding of above, below, next to) and be able to recognize familiar places like their classroom and home. They should be developing the ability to see things from different perspectives.

LEARNING OBJECTIVES:
- Understand that a map is a picture that shows a place from above
- Recognize that maps help us find places and see where things are
- Identify simple features on a classroom map
- Understand the "bird''s eye view" concept
- Begin creating simple maps of familiar places

KEY CONCEPTS:
1) A map is a picture of a place drawn as if looking down from above (like a bird)
2) Maps are smaller than the real places they show
3) Maps help us find places and show where things are in relation to each other
4) Different maps show different things (classroom, school, neighborhood, world)
5) Symbols on maps represent real things (a square for a desk, a circle for a rug)

COMMON MISCONCEPTIONS:
- Thinking maps are exactly like photographs
- Not understanding the bird''s-eye-view perspective
- Believing maps show everything, including tiny details
- Confusing maps with actual places they represent
- Not understanding that maps can be different sizes for the same place

TEACHING SEQUENCE:
Start with the concept of "looking down from above" - have children stand on chairs to look down at their desk arrangement. Use toy figurines to show how things look different from above. Create a simple classroom map together on large paper. Go on a "map walk" around the school, noting what a map would show. Look at different types of maps (classroom, school, city, world). Play games where children find objects on maps. Have children create their own map of their bedroom or a play area. Use floor maps for movement activities.

DIFFERENTIATION:
For struggling learners: Use actual objects placed on paper, then trace around them to show the connection between 3D and 2D. Start with very simple maps (just the rug and door).
For advanced learners: Introduce basic map symbols and a key. Have them create more detailed maps. Compare different maps of the same place at different scales.

VOCABULARY:
Map, above, bird''s eye view, picture, place, symbol, find, location, show, look down, represent, draw, classroom, school

CONNECTION TO FUTURE LEARNING:
Understanding what maps are prepares children for more complex geography skills including reading maps with keys, understanding scale, and using maps to learn about places near and far. Maps are fundamental tools for geographic and historical learning.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is a Map?' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Land and Water
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Land and Water' AND grade_level_min = 0),
  'Land and Water (Kindergarten) Topic Guide',
  'Teaching children to find land and water on maps and globes',
  'LAND AND WATER - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand basic concepts of land (dirt, ground, where we walk) and water (oceans, lakes, rivers, what we drink). They should have been introduced to what maps are and show places from above.

LEARNING OBJECTIVES:
- Identify land and water on maps and globes
- Understand that blue represents water on most maps
- Recognize that Earth has both land (continents) and water (oceans)
- Use a globe to see that Earth is covered by both land and water
- Describe basic differences between types of land and water

KEY CONCEPTS:
1) Earth has both land and water covering its surface
2) On maps and globes, blue usually shows water and other colors show land
3) Large areas of land are called continents; large areas of water are called oceans
4) There is more water than land on Earth
5) People, animals, and plants live on land; fish and sea creatures live in water

COMMON MISCONCEPTIONS:
- Thinking the blue on a globe is paint, not representation of water
- Not understanding that the globe represents the real Earth
- Assuming all green on maps is forests and all brown is desert
- Believing you can''t cross water (not understanding boats, ships, planes)
- Thinking land and water don''t connect or interact

TEACHING SEQUENCE:
Begin with real land and water - look outside at grass and puddles, or use a sensory table with dirt and water. Show a globe and identify the blue (water) and colored areas (land). Spin the globe and notice how much is blue vs. other colors. Use maps to point to land and water. Create land and water art projects (paint, collage). Sort pictures into land and water categories. Play games: "Is it land or water?" with pictures. Connect to where we live: "We live on land. What water is near us?"

DIFFERENTIATION:
For struggling learners: Use very simple maps with clear blue water and green/brown land. Create tactile globes with textured surfaces. Focus only on land versus water without naming continents or oceans.
For advanced learners: Begin introducing names of continents and oceans. Discuss different types of water (rivers, lakes, oceans) and land (mountains, plains, islands). Explore where different animals live based on land or water.

VOCABULARY:
Land, water, globe, Earth, blue, ocean, lake, river, continent, map, ground, sea, surface, wet, dry, island

CONNECTION TO FUTURE LEARNING:
Understanding land and water is fundamental for geographic literacy. This prepares children for learning about continents and oceans, landforms, bodies of water, and eventually climate, ecosystems, and human settlement patterns.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Land and Water' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: My Neighborhood
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'My Neighborhood' AND grade_level_min = 0),
  'My Neighborhood (Kindergarten) Topic Guide',
  'Teaching children to describe places in their neighborhood',
  'MY NEIGHBORHOOD - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand what maps are and that they show places from above. They should be able to describe their home and school and understand that there are other places near where they live.

LEARNING OBJECTIVES:
- Identify places in their neighborhood (homes, stores, parks, schools)
- Describe what happens at different places in the neighborhood
- Understand that neighborhoods have homes, stores, and other buildings
- Create a simple representation of their neighborhood
- Recognize that different neighborhoods look different

KEY CONCEPTS:
1) A neighborhood is the area around where we live
2) Neighborhoods have different types of buildings for different purposes (homes to live, stores to shop, schools to learn)
3) People in neighborhoods live near each other and may help each other
4) Neighborhoods can be in cities, suburbs, or the country
5) Every neighborhood is a bit different but all have places where people live

COMMON MISCONCEPTIONS:
- Thinking their neighborhood is the whole world or city
- Not recognizing places they''ve visited as part of their neighborhood
- Assuming all neighborhoods look like theirs
- Not understanding that the same type of place (like a grocery store) can look different in different neighborhoods

TEACHING SEQUENCE:
Create a class list of places in the school''s neighborhood and what happens at each place. Take a walk around the school to observe neighborhood features (safely). Look at photos of the local neighborhood and identify landmarks. Build a neighborhood with blocks including homes, stores, and community buildings. Have children draw places in their own neighborhood. Compare neighborhoods - look at pictures of city, suburban, and rural neighborhoods. Discuss what all neighborhoods have in common and what makes each unique.

DIFFERENTIATION:
For struggling learners: Focus on just 3-4 types of places (home, store, school, park). Use toy buildings and vehicles for concrete representation. Create simple sorting activities for neighborhood places.
For advanced learners: Have them map their route from home to school. Discuss how their neighborhood has changed or might change. Compare their neighborhood to neighborhoods in books or photos from other places.

VOCABULARY:
Neighborhood, near, far, home, house, apartment, store, school, park, library, street, road, sidewalk, building, community, block

CONNECTION TO FUTURE LEARNING:
Understanding neighborhoods prepares children for comparing different types of communities, understanding how neighborhoods connect to form cities, and eventually learning about urban planning, community development, and civic participation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'My Neighborhood' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Giving Directions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Giving Directions' AND grade_level_min = 0),
  'Giving Directions (Kindergarten) Topic Guide',
  'Teaching children to use words like near, far, left, and right',
  'GIVING DIRECTIONS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand basic spatial concepts and be able to describe locations relative to themselves. They should be developing understanding of maps and be comfortable following simple verbal directions.

LEARNING OBJECTIVES:
- Use position words to describe where things are (near, far, next to, behind, in front)
- Begin to understand and use left and right
- Give simple directions to help someone find something
- Follow directions to move to different locations
- Connect giving directions to map reading

KEY CONCEPTS:
1) Position words help us describe where things are in relation to other things
2) We can give directions to help someone find a place or object
3) Left and right are based on our own body position
4) Good directions are clear and use specific words
5) Following directions helps us get where we need to go

COMMON MISCONCEPTIONS:
- Confusing left and right (very common and developmentally appropriate)
- Not understanding that left and right depend on which way you''re facing
- Using vague words like "over there" instead of specific position words
- Thinking everyone sees left and right the same way

TEACHING SEQUENCE:
Start with body-based position words through movement games (stand beside your chair, behind your partner). Play "I Spy" using position words. Practice left and right with consistent body cues (raise your right hand, touch your left ear). Create obstacle courses where children follow position-based directions. Play "hide and seek" with objects, giving directions to help find them. Use maps of the classroom to give directions from one spot to another. Practice giving directions for a simple path ("walk to the door, turn right, stop at the water fountain").

DIFFERENTIATION:
For struggling learners: Focus on simpler concepts first (near/far, in front/behind) before left/right. Use visual markers (put a sticker on the right hand). Provide physical prompts and movement-based practice.
For advanced learners: Give multi-step directions. Have them create direction cards for classroom activities. Practice giving directions on maps without seeing the actual space.

VOCABULARY:
Near, far, close, next to, beside, behind, in front of, above, below, left, right, straight, turn, direction, position, forward, backward, between

CONNECTION TO FUTURE LEARNING:
Understanding position and direction vocabulary is essential for geographic skills including map reading and compass use. These concepts prepare children for cardinal directions (north, south, east, west) and more complex navigation skills.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Giving Directions' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: AMERICAN SYMBOLS
-- =====================================================

-- Topic: The American Flag
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The American Flag' AND grade_level_min = 0),
  'The American Flag (Kindergarten) Topic Guide',
  'Teaching about our flag and what the colors mean',
  'THE AMERICAN FLAG - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand basic concepts of colors and counting. They should be developing understanding that they live in a country called the United States of America.

LEARNING OBJECTIVES:
- Recognize the American flag and describe its colors and shapes
- Understand that the flag is a symbol of the United States
- Learn the basics of flag etiquette (treating the flag with respect)
- Count the stripes and notice the stars
- Understand that every country has its own flag

KEY CONCEPTS:
1) The American flag has red and white stripes and a blue area with white stars
2) There are 50 stars for the 50 states and 13 stripes for the first 13 states
3) The flag is a symbol that represents our country
4) We show respect for the flag by handling it carefully
5) We see the flag at school, government buildings, and many other places

COMMON MISCONCEPTIONS:
- Thinking the flag is just a pretty decoration without meaning
- Not understanding that flags represent countries and are symbols
- Believing the flag has always looked the same (it has changed as states were added)
- Not recognizing the flag when it''s displayed in different ways or sizes

TEACHING SEQUENCE:
Show the American flag and describe what children see (colors, stripes, stars). Discuss where they have seen the flag. Learn a simple song about the flag. Create flag art projects using paper, paint, or collage. Count the stripes (13) and discuss that the stars are hard to count but there are 50. Explain that flags represent countries - show flags from other countries briefly. Discuss how we treat the flag with respect (don''t let it touch the ground). Read books about the flag appropriate for young children.

DIFFERENTIATION:
For struggling learners: Focus on colors and basic recognition. Use large, simple flag images. Create flags using pre-cut shapes they arrange correctly.
For advanced learners: Discuss why 13 stripes and 50 stars. Compare American flag to flags of other countries. Learn about Betsy Ross and the flag''s history in simple terms.

VOCABULARY:
Flag, American, United States, stars, stripes, red, white, blue, country, symbol, respect, states, represent, nation

CONNECTION TO FUTURE LEARNING:
Understanding the flag prepares children for learning other national symbols, the history of the country, and concepts of patriotism and citizenship. This connects to learning about government, states, and national identity.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The American Flag' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: The Pledge of Allegiance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'The Pledge of Allegiance' AND grade_level_min = 0),
  'The Pledge of Allegiance (Kindergarten) Topic Guide',
  'Teaching the Pledge and what it means',
  'THE PLEDGE OF ALLEGIANCE - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should recognize the American flag and understand that it represents our country. They should be developing verbal memory skills and understanding of simple ceremonies and rituals.

LEARNING OBJECTIVES:
- Learn to recite the Pledge of Allegiance
- Understand basic meaning of key words in the Pledge
- Demonstrate proper posture during the Pledge (standing, hand over heart)
- Recognize the Pledge as a way we show love and loyalty to our country
- Understand that saying the Pledge is a choice and a privilege

KEY CONCEPTS:
1) The Pledge is a promise we make to be loyal to our country
2) We stand and put our hand over our heart to show respect
3) "Allegiance" means being loyal and faithful
4) The Pledge talks about our flag and what it represents (our country)
5) We often say the Pledge at the start of the school day

COMMON MISCONCEPTIONS:
- Thinking the Pledge is just words to memorize without meaning
- Not understanding that "pledge" means promise
- Believing everyone must say the Pledge (it is voluntary)
- Not connecting the Pledge to the flag we''ve learned about

TEACHING SEQUENCE:
Begin by reviewing the American flag. Explain that the Pledge is a promise we make to our country. Teach the Pledge in small phrases, explaining simple meanings of each part. Practice standing respectfully with hand over heart. Discuss what it means to be "loyal" (like being a good friend to your country). Connect difficult words to kid-friendly concepts ("liberty" means freedom, "justice" means fairness). Practice daily but never force participation. Celebrate when children can recite it on their own.

DIFFERENTIATION:
For struggling learners: Break the Pledge into very small chunks. Use motions or gestures to help memory. Focus on the physical routine (standing, hand on heart) first. Accept approximations of words.
For advanced learners: Discuss the meaning of each phrase in more depth. Explore when and why the Pledge was written. Compare to pledges or promises in their own lives.

VOCABULARY:
Pledge, allegiance, promise, loyal, flag, republic, nation, indivisible, liberty, justice, stand, heart, respect, country, United States

CONNECTION TO FUTURE LEARNING:
The Pledge introduces children to civic ritual and national identity. This connects to learning about patriotism, citizenship, and what it means to be American. Understanding the Pledge prepares children for deeper discussions about national values and responsibilities.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Pledge of Allegiance' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: National Holidays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'National Holidays' AND grade_level_min = 0),
  'National Holidays (Kindergarten) Topic Guide',
  'Teaching about Thanksgiving, Independence Day, and more',
  'NATIONAL HOLIDAYS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should have experience with celebrations and holidays from their own families. They should understand basic concepts of special days and why we celebrate. They should be developing understanding of calendar time.

LEARNING OBJECTIVES:
- Name important American holidays and when they occur
- Explain in simple terms what each holiday celebrates
- Identify traditions associated with major holidays
- Understand that holidays help us remember important events and people
- Connect national holidays to personal experience of celebration

KEY CONCEPTS:
1) National holidays are special days when the whole country celebrates
2) Different holidays celebrate different things (independence, thankfulness, honoring leaders)
3) Holidays often have special traditions (parades, fireworks, special meals)
4) Many people get the day off work or school on national holidays
5) Holidays help us remember important events and people from history

COMMON MISCONCEPTIONS:
- Thinking holidays are only about not going to school or getting presents
- Confusing national holidays with personal celebrations like birthdays
- Not understanding that holidays have historical reasons
- Believing holiday traditions are the same for all families

TEACHING SEQUENCE:
Create a holiday timeline or calendar for the school year. As each holiday approaches, teach about its meaning in age-appropriate ways. For Thanksgiving: focus on thankfulness and sharing. For Independence Day: focus on America''s birthday and celebrations. For Presidents Day: introduce Washington and Lincoln briefly. For Memorial Day: discuss remembering people who helped our country. For Martin Luther King Jr. Day: focus on dreams, kindness, and fairness. Use books, songs, and art projects for each holiday. Connect to children''s own family celebrations when appropriate.

DIFFERENTIATION:
For struggling learners: Focus on 3-4 major holidays. Use concrete visuals and symbols for each (turkey, fireworks, hearts). Create holiday sorting activities.
For advanced learners: Discuss the history behind each holiday in more depth. Compare how different families celebrate. Learn about holidays in other countries.

VOCABULARY:
Holiday, celebrate, celebration, national, Thanksgiving, Independence Day, Presidents Day, Memorial Day, Veterans Day, Martin Luther King Jr. Day, parade, fireworks, thankful, remember, honor

CONNECTION TO FUTURE LEARNING:
National holidays connect to American history, civic values, and cultural traditions. Understanding holidays prepares children for deeper study of historical events and figures, and helps them understand how societies use celebrations to reinforce values and remember the past.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'National Holidays' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;

-- Topic: Famous Symbols
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Famous Symbols' AND grade_level_min = 0),
  'Famous Symbols (Kindergarten) Topic Guide',
  'Teaching about the Statue of Liberty, bald eagle, and White House',
  'FAMOUS SYMBOLS - TOPIC TEACHING GUIDE (KINDERGARTEN)

PREREQUISITES:
Children should understand the concept of symbols (something that stands for something else). They should have learned about the American flag as a symbol. They should be developing recognition skills for pictures and images.

LEARNING OBJECTIVES:
- Recognize important American symbols (Statue of Liberty, bald eagle, White House)
- Understand that symbols represent ideas and our country
- Explain in simple terms what each symbol represents
- Connect symbols to ideas of freedom, strength, and leadership
- Identify symbols when seen in various contexts

KEY CONCEPTS:
1) Symbols are pictures or objects that stand for something bigger
2) The Statue of Liberty represents freedom and welcomes people to America
3) The bald eagle is our national bird and represents strength and freedom
4) The White House is where the President lives and works
5) These symbols help us feel connected to our country

COMMON MISCONCEPTIONS:
- Thinking symbols are just pictures without meaning
- Believing the bald eagle is bald (it has white feathers on its head)
- Not understanding that the Statue of Liberty was a gift from France
- Thinking everyone can just walk into the White House

TEACHING SEQUENCE:
Review the concept of symbols using the flag as an example. Introduce symbols one at a time with pictures, books, and virtual tours. For the Statue of Liberty: discuss Lady Liberty holding her torch, welcoming people. For the bald eagle: show pictures and videos, discuss strength and freedom. For the White House: introduce it as the President''s home and office. Create symbol recognition games and activities. Make art projects featuring each symbol. Connect symbols to values they represent (freedom, strength, leadership). Look for symbols in everyday life (on money, stamps, signs).

DIFFERENTIATION:
For struggling learners: Focus on visual recognition first before meaning. Use simple songs or chants about each symbol. Create matching activities with symbol pictures and names.
For advanced learners: Discuss more symbols (Liberty Bell, Uncle Sam, national monuments). Explore why these particular symbols were chosen. Research where to see these symbols in person.

VOCABULARY:
Symbol, Statue of Liberty, bald eagle, White House, President, freedom, represent, torch, bird, national, America, liberty, strength, welcome

CONNECTION TO FUTURE LEARNING:
Understanding national symbols prepares children for studying American history, government, and values in more depth. Symbols appear throughout the curriculum and in daily life, making recognition and understanding foundational for civic education.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Famous Symbols' AND grade_level_min = 0)
ON CONFLICT DO NOTHING;
