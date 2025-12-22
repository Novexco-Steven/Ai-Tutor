-- Grade 1 History Topic Prompts
-- 16 comprehensive topic prompts for Grade 1 History
-- Topics organized by unit: Families Then and Now, Community and Citizenship, American Heroes, Geography Basics

-- =====================================================
-- UNIT: FAMILIES THEN AND NOW
-- =====================================================

-- Topic: Life Long Ago
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Life Long Ago' AND grade_level_min = 1),
  'Life Long Ago (Grade 1) Topic Guide',
  'Teaching how people lived without electricity and cars',
  'LIFE LONG AGO - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand basic concepts of time (before, after, long ago, today). They should be familiar with modern conveniences like electricity, cars, phones, and computers. Understanding of daily routines at home prepares them to compare with the past.

LEARNING OBJECTIVES:
- Understand that people lived differently long ago than they do today
- Identify differences between life today and life long ago (transportation, communication, daily chores)
- Recognize that some things have changed and some have stayed the same
- Describe how specific inventions changed how people live
- Appreciate why life was harder in some ways but not necessarily worse

KEY CONCEPTS:
1) "Long ago" means a time before you were born, before your parents were born, or even further back
2) People long ago didn''t have electricity, cars, phones, or computers
3) Many chores that are easy today (washing clothes, cooking) were very hard and took a long time
4) People traveled by horse, wagon, or walking instead of cars and planes
5) Even without modern things, people still had happy lives with families and communities

COMMON MISCONCEPTIONS:
- Thinking life long ago was all bad or all good (romanticizing or condemning)
- Believing people long ago weren''t smart because they didn''t have technology
- Not understanding the gradual nature of change
- Assuming everything changed at once rather than over time
- Thinking "long ago" means the same thing to everyone

TEACHING SEQUENCE:
Compare typical morning routines today vs. 100 years ago. Use picture books showing life in early America or the 1800s. Discuss specific changes: how did people get water? cook food? wash clothes? travel? Show actual artifacts or replicas from the past (oil lamps, washboards, candles). Have children interview grandparents about changes they''ve seen. Create then-and-now comparison charts. Read historical fiction appropriate for the age level. Discuss: what do you think was harder? What might have been nice about life then?

DIFFERENTIATION:
For struggling learners: Focus on one or two clear comparisons (cars vs. horses, electric lights vs. candles). Use lots of pictures and tangible objects. Create simple sorting activities for "then" and "now."
For advanced learners: Research a specific time period in more depth. Create a timeline of inventions. Discuss how changes affected different people differently.

VOCABULARY:
Long ago, past, present, history, change, same, different, invention, electricity, candle, oil lamp, wagon, horse, well, fireplace, chore

CONNECTION TO FUTURE LEARNING:
Understanding that life changes over time is foundational for all historical thinking. This prepares children for studying specific time periods, understanding cause and effect in history, and developing historical empathy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Life Long Ago' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Schools Then and Now
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Schools Then and Now' AND grade_level_min = 1),
  'Schools Then and Now (Grade 1) Topic Guide',
  'Comparing old schools to modern schools',
  'SCHOOLS THEN AND NOW - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should have experience with their current school and classroom. They should understand basic concepts of comparing "then" and "now" from learning about life long ago.

LEARNING OBJECTIVES:
- Describe what schools looked like long ago (one-room schoolhouses)
- Compare school materials then and now (slate tablets vs. tablets, quill pens vs. pencils)
- Understand that all ages sometimes learned together in one room
- Recognize that children have always gone to school to learn
- Identify what has stayed the same about schools (learning, teachers, friends)

KEY CONCEPTS:
1) Long ago, many communities had one-room schoolhouses where all ages learned together
2) Students used slate boards, chalk, and quill pens instead of paper and pencils
3) Schools had wood stoves for heat and no electricity for lights or computers
4) Teachers were often strict and students memorized lessons by heart
5) Despite differences, schools have always been places to learn reading, writing, and math

COMMON MISCONCEPTIONS:
- Thinking one-room schools only happened "forever ago" (some still exist in rural areas)
- Believing school was either all terrible or all wonderful in the past
- Not understanding that not all children could go to school (some had to work)
- Assuming teachers were always mean in old schools

TEACHING SEQUENCE:
Show pictures of one-room schoolhouses and compare to their school. Read books like "The Little House" or schoolhouse-themed stories. Compare school supplies: show a slate board vs. whiteboard, quill pen vs. pencil. Discuss the school day: students walked to school, brought lunch in pails, had recesses. Explore what subjects children learned then vs. now. If possible, visit or see videos of preserved one-room schoolhouses. Have children write about what would be different if they went to school long ago.

DIFFERENTIATION:
For struggling learners: Focus on concrete, visible differences (no computers, different desks, one room). Use picture comparisons. Create a school then-and-now collage.
For advanced learners: Research what specific grades learned in one-room schools. Explore why all ages were together. Discuss who could and couldn''t go to school in different times.

VOCABULARY:
One-room schoolhouse, slate, chalk, quill pen, ink, inkwell, dunce cap, recitation, memorize, schoolmarm, potbelly stove, outhouse, chalkboard

CONNECTION TO FUTURE LEARNING:
Comparing schools connects to broader understanding of how institutions change over time. This prepares children for studying education reform, child labor laws, and how society''s values about children and learning have evolved.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Schools Then and Now' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Family History
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Family History' AND grade_level_min = 1),
  'Family History (Grade 1) Topic Guide',
  'Teaching children about their family''s past',
  'FAMILY HISTORY - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should be able to identify family members and understand family relationships. They should have basic understanding that time moves from past to present. Parental/guardian involvement is important for gathering family information.

LEARNING OBJECTIVES:
- Understand that everyone has a family history
- Learn about their own grandparents and great-grandparents
- Recognize that families have stories and memories from the past
- Create a simple family tree or timeline
- Appreciate that family history connects them to the past

KEY CONCEPTS:
1) Family history is the story of your family over time
2) Grandparents were once children, and they have parents (your great-grandparents)
3) Families have traditions, stories, and heirlooms passed down through generations
4) Some families have lived in one place for a long time; others have moved from far away
5) Everyone''s family history is unique and valuable

COMMON MISCONCEPTIONS:
- Thinking only "important" families have history
- Not understanding that grandparents were once children
- Believing everyone''s family has always lived in the same place
- Assuming all families have the same information available about their past

TEACHING SEQUENCE:
Send home family interview questions for children to ask grandparents or older relatives. Create simple family trees with photos when available. Share family stories in class (respecting privacy). Discuss where families came from and how they got here. Look at old family photos and discuss changes over time. Create a timeline of one child''s family through generations. Explore how names, traditions, or objects are passed down in families. Celebrate the diversity of family histories in the classroom.

DIFFERENTIATION:
For struggling learners: Focus on immediate family first, then extend to grandparents. Use picture-based family trees. Accept oral sharing if writing is challenging.
For advanced learners: Research family immigration stories if applicable. Create more detailed timelines. Explore how historical events affected their family (if family shares such information).

VOCABULARY:
Family tree, generation, grandparents, great-grandparents, ancestors, history, memory, tradition, heirloom, heritage, interview, pass down

CONNECTION TO FUTURE LEARNING:
Understanding family history is foundational for understanding community history, national history, and world history. Personal connection to the past makes history meaningful and prepares children for studying broader historical topics.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Family History' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: How Things Change
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'How Things Change' AND grade_level_min = 1),
  'How Things Change (Grade 1) Topic Guide',
  'Understanding that communities change over time',
  'HOW THINGS CHANGE - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand basic comparison of then and now. They should have some awareness of their community and neighborhood. Understanding that they themselves have changed since they were babies helps with the concept.

LEARNING OBJECTIVES:
- Understand that communities and places change over time
- Identify ways their neighborhood or town has changed
- Recognize that new buildings are built and old ones may be torn down
- Understand that roads, technology, and population can all change
- Appreciate that some things stay the same while others change

KEY CONCEPTS:
1) Every place changes over time as people build, move in and out, and use new technology
2) Old photographs show what places looked like before
3) Some changes are planned (building a new school) and some just happen over time
4) Both small changes (a new store) and big changes (a new highway) affect communities
5) Change can be good, challenging, or a mix of both

COMMON MISCONCEPTIONS:
- Thinking their community has always looked exactly the same
- Believing all change is either good or bad rather than nuanced
- Not understanding that changes they see happening (construction) connect to historical change
- Assuming their parents and grandparents experienced the same neighborhood

TEACHING SEQUENCE:
Show before-and-after photos of the local community (historical society or library resources). Discuss what buildings, roads, or landmarks children see now that weren''t there before. Interview older community members about changes they''ve seen. Create a class timeline of community changes. Walk around the school neighborhood and identify things that might be old or new. Discuss changes happening right now (new construction, road work). Draw pictures imagining what the community might look like in the future.

DIFFERENTIATION:
For struggling learners: Focus on simple, visible changes with clear photo comparisons. Use concrete examples from their own neighborhood. Make a simple "old and new" sorting activity.
For advanced learners: Research the history of a specific local building or landmark. Discuss what causes change (population growth, new technology, economic changes). Consider who makes decisions about community changes.

VOCABULARY:
Change, community, neighborhood, town, city, building, construction, population, growth, development, old, new, history, future, progress

CONNECTION TO FUTURE LEARNING:
Understanding community change prepares children for studying urban development, historical movements, and geography. This concept is fundamental for understanding historical cause and effect and recognizing that history is not just the distant past but ongoing.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'How Things Change' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: COMMUNITY AND CITIZENSHIP
-- =====================================================

-- Topic: What is Government?
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'What is Government?' AND grade_level_min = 1),
  'What is Government? (Grade 1) Topic Guide',
  'Teaching why communities have rules and leaders',
  'WHAT IS GOVERNMENT? - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand that rules exist in families and at school and why rules are important. They should be familiar with authority figures like parents and teachers who make and enforce rules.

LEARNING OBJECTIVES:
- Understand that government is a group of people who make rules for everyone
- Recognize that communities, cities, and countries have governments
- Identify that the President is a leader of our country''s government
- Understand that we have different levels of government (local, state, national)
- Recognize that government provides services (schools, roads, fire stations)

KEY CONCEPTS:
1) Government is a system of people who make rules (laws) and decisions for a community
2) Government helps keep people safe, builds roads and schools, and provides services
3) Different leaders are in charge of different things (mayor for city, governor for state, President for country)
4) Laws are like rules that everyone in the community must follow
5) People vote to choose leaders in a democracy

COMMON MISCONCEPTIONS:
- Thinking the President makes all decisions alone
- Not understanding that they interact with government services daily
- Believing government is scary or only about punishment
- Not realizing there are different levels of government for different places

TEACHING SEQUENCE:
Start by connecting to classroom rules and who makes them. Expand to school rules and who makes those. Introduce the concept of a community needing rules too. Discuss who makes rules for the town/city (mayor, city council). Introduce the President as a leader for the whole country. Discuss government services they use: public schools, parks, fire trucks, libraries. Read age-appropriate books about government. Role-play a town meeting where class votes on a decision.

DIFFERENTIATION:
For struggling learners: Focus on concrete examples of government services they see. Use simple terms: "The mayor is like the leader of our town." Create a simple diagram showing levels of government.
For advanced learners: Discuss how laws are made. Explore the three branches of government simply. Research what the local mayor or city council does.

VOCABULARY:
Government, rules, laws, leader, President, mayor, governor, vote, decision, services, community, city, state, country, citizen

CONNECTION TO FUTURE LEARNING:
This introduction to government prepares children for studying civics, the Constitution, and how democratic systems work. Understanding that government provides services and makes decisions is foundational for active citizenship.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What is Government?' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Rights and Responsibilities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Rights and Responsibilities' AND grade_level_min = 1),
  'Rights and Responsibilities (Grade 1) Topic Guide',
  'Teaching what you can do and should do as a citizen',
  'RIGHTS AND RESPONSIBILITIES - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should have basic understanding of rules and fairness. They should understand what government is and that communities have rules. They should be familiar with concepts of what they "can" do versus what they "should" do.

LEARNING OBJECTIVES:
- Understand that rights are things we are allowed to do
- Recognize that responsibilities are things we should do
- Identify rights they have (to go to school, to be safe, to speak)
- Identify responsibilities they have (to follow rules, to be kind, to help)
- Understand that rights and responsibilities go together

KEY CONCEPTS:
1) A right is something you are allowed to do or have (right to learn, right to speak)
2) A responsibility is something you should do (follow rules, take care of things, help others)
3) When we have rights, we also have responsibilities that go with them
4) Example: We have the right to speak, but the responsibility to be kind with our words
5) Being a good citizen means both enjoying rights and fulfilling responsibilities

COMMON MISCONCEPTIONS:
- Thinking rights mean they can do anything they want
- Not understanding that rights have limits when they affect others
- Believing only adults have responsibilities
- Thinking rights and responsibilities are separate rather than connected

TEACHING SEQUENCE:
Discuss things children can do in the classroom (rights: choose books, play at recess). Discuss things they should do (responsibilities: clean up, listen, be kind). Create a T-chart of rights and responsibilities. Read books about children''s rights and responsibilities. Discuss specific examples: "You have the right to use toys, but the responsibility to share and take care of them." Connect to larger community: rights to use parks, responsibilities to keep them clean. Practice identifying rights and responsibilities in daily situations.

DIFFERENTIATION:
For struggling learners: Use concrete classroom examples. Create a picture chart of rights and responsibilities. Focus on simple pairs (right to speak/responsibility to listen).
For advanced learners: Discuss how rights are protected. Explore the Bill of Rights in simple terms. Consider what happens when rights conflict.

VOCABULARY:
Right, responsibility, citizen, freedom, fair, rule, law, community, duty, privilege, respect, care, protect, expect

CONNECTION TO FUTURE LEARNING:
Understanding rights and responsibilities prepares children for studying the Bill of Rights, citizenship, and civic participation. These concepts are fundamental to democratic education and developing ethical citizens.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rights and Responsibilities' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Community Leaders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Community Leaders' AND grade_level_min = 1),
  'Community Leaders (Grade 1) Topic Guide',
  'Teaching about mayors, police chiefs, and other leaders',
  'COMMUNITY LEADERS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand what government is and what communities are. They should be able to identify community helpers. They should understand the concept of leadership from classroom and home experience.

LEARNING OBJECTIVES:
- Identify leaders in the local community
- Understand what different community leaders do
- Recognize that leaders are chosen or appointed to help the community
- Understand that leaders make decisions that affect everyone
- Know that people can contact leaders with concerns

KEY CONCEPTS:
1) Community leaders are people who make important decisions for everyone in the community
2) Different leaders have different jobs: mayor leads the city, police chief leads police, principal leads school
3) Some leaders are elected (voted for) and some are appointed (chosen by other leaders)
4) Good leaders listen to people, make fair decisions, and work to help everyone
5) Citizens can talk to leaders about their concerns and ideas

COMMON MISCONCEPTIONS:
- Thinking leaders are always right or can do whatever they want
- Not understanding that they can communicate with leaders
- Believing leaders work alone instead of with many people
- Confusing different leaders'' roles

TEACHING SEQUENCE:
Start with familiar leaders: principal, school librarian. Expand to community leaders: mayor, fire chief, police chief. If possible, invite a community leader to visit or send a video message. Discuss what each leader''s responsibilities are. Create a chart showing different leaders and their jobs. Role-play being community leaders making decisions for the class. Discuss qualities of good leaders (listens, fair, works hard, cares about everyone). Write a class letter to a local leader about a community topic.

DIFFERENTIATION:
For struggling learners: Focus on 2-3 key leaders with clear, concrete roles. Use pictures of actual local leaders when possible. Create matching activities with leaders and their jobs.
For advanced learners: Research the local mayor or another leader. Discuss how leaders are chosen. Explore what it takes to become a leader.

VOCABULARY:
Leader, mayor, governor, principal, fire chief, police chief, city council, elected, appointed, decision, community, responsibility, citizen, vote

CONNECTION TO FUTURE LEARNING:
Understanding community leaders prepares children for studying local, state, and federal government in more depth. This connects to learning about elections, civic participation, and how democratic leadership works.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Community Leaders' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Being a Good Citizen (Grade 1)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Being a Good Citizen' AND grade_level_min = 1),
  'Being a Good Citizen (Grade 1) Topic Guide',
  'Teaching how to help others and follow rules',
  'BEING A GOOD CITIZEN - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand what rules and laws are. They should know about rights and responsibilities. They should have experience with being kind and helpful in the classroom.

LEARNING OBJECTIVES:
- Define what a good citizen is and does
- Identify ways to be a good citizen at school, home, and in the community
- Practice citizenship behaviors like helping, sharing, and being respectful
- Understand that good citizens make communities better
- Take action to be a good citizen in their own life

KEY CONCEPTS:
1) A good citizen follows rules and laws, helps others, and cares about the community
2) Good citizenship includes voting (when old enough), being honest, and respecting others
3) Children can be good citizens by being kind, helping at home and school, and caring for their environment
4) Good citizens think about how their actions affect others
5) Small acts of good citizenship add up to make communities better

COMMON MISCONCEPTIONS:
- Thinking citizenship only matters for adults
- Believing good citizenship is only about following rules, not helping
- Not understanding that everyday actions count as citizenship
- Thinking citizenship only matters during special events or elections

TEACHING SEQUENCE:
Review what makes someone a good citizen (from kindergarten learning). Create a class pledge about being good citizens. Identify specific actions good citizens take: picking up litter, helping neighbors, following rules, being honest. Plan and do a class service project. Discuss how good citizenship makes everyone''s life better. Create "good citizen" awards for classmates who demonstrate citizenship. Connect citizenship to community: how does helping at school help the community?

DIFFERENTIATION:
For struggling learners: Focus on concrete, doable actions. Create a picture chart of good citizen behaviors. Provide immediate recognition for citizenship actions.
For advanced learners: Discuss historical examples of good citizens. Plan a more complex service project. Write about what citizenship means to them.

VOCABULARY:
Citizen, citizenship, community, responsible, helpful, honest, respectful, volunteer, service, vote, laws, respect, kind, fair

CONNECTION TO FUTURE LEARNING:
Understanding good citizenship prepares children for active civic participation. This connects to learning about democracy, voting, civil rights, and what it means to contribute to society.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Being a Good Citizen' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: AMERICAN HEROES
-- =====================================================

-- Topic: George Washington
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'George Washington' AND grade_level_min = 1),
  'George Washington (Grade 1) Topic Guide',
  'Teaching about America''s first president',
  'GEORGE WASHINGTON - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand what a president is and that the United States is their country. They should have basic understanding of the concept of "long ago" and be familiar with the American flag and symbols.

LEARNING OBJECTIVES:
- Recognize George Washington as the first President of the United States
- Understand that he is called "The Father of Our Country"
- Learn basic facts about his life (soldier, farmer, leader)
- Recognize his picture (including on the dollar bill and quarter)
- Understand why we celebrate his birthday

KEY CONCEPTS:
1) George Washington was the first President of the United States
2) He led the army that helped America become free from England (very simplified)
3) He is called "The Father of Our Country" because he helped create America
4) We celebrate Presidents Day partly to honor Washington
5) His face appears on the dollar bill and quarter

COMMON MISCONCEPTIONS:
- Thinking Washington was the only founder of America
- Believing every myth (cherry tree story) as historical fact
- Not understanding the time period (expecting him to have used modern things)
- Confusing Washington with other presidents

TEACHING SEQUENCE:
Show Washington''s picture and ask if children recognize him. Show the dollar bill and quarter. Read age-appropriate books about Washington''s life. Discuss his roles: soldier, farmer, leader, president. Explain briefly why he''s called "Father of Our Country" (helped America become free and be its first leader). Create art projects related to Washington. Discuss character traits that made him a good leader. Connect to Presidents Day celebrations.

DIFFERENTIATION:
For struggling learners: Focus on key facts: first president, his picture on money, "Father of Our Country." Use lots of visuals and simple stories. Create a simple fact sheet with pictures.
For advanced learners: Discuss more details of his life (Mount Vernon, Martha Washington). Explore why the cherry tree story became famous even if not true. Compare to other founders briefly.

VOCABULARY:
President, first, leader, soldier, army, freedom, Father of Our Country, quarter, dollar bill, Mount Vernon, hero, honor

CONNECTION TO FUTURE LEARNING:
Learning about Washington prepares children for studying the American Revolution, the Constitution, and the presidency in more depth. Understanding founding leaders helps children connect to American identity and history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'George Washington' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Abraham Lincoln
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Abraham Lincoln' AND grade_level_min = 1),
  'Abraham Lincoln (Grade 1) Topic Guide',
  'Teaching about the president who freed the slaves',
  'ABRAHAM LINCOLN - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand what a president is. They should have learned about George Washington. They should have basic understanding of fairness and that treating people badly is wrong.

LEARNING OBJECTIVES:
- Recognize Abraham Lincoln and key facts about him
- Understand that he helped free enslaved people (age-appropriate discussion)
- Learn that he grew up poor but worked hard and became president
- Recognize his picture (including on the penny and five-dollar bill)
- Understand why he is considered a hero

KEY CONCEPTS:
1) Abraham Lincoln was the 16th President of the United States
2) He is known as "Honest Abe" because of his honesty
3) He grew up in a log cabin and worked very hard to learn and succeed
4) He helped free people who were enslaved (held against their will)
5) His face appears on the penny and five-dollar bill

COMMON MISCONCEPTIONS:
- Not understanding what slavery was (needs age-appropriate introduction)
- Thinking Lincoln single-handedly ended slavery
- Confusing Lincoln and Washington
- Believing everything about his life was happy (he faced many struggles)

TEACHING SEQUENCE:
Show Lincoln''s picture and penny/five-dollar bill. Read age-appropriate books about Lincoln''s life. Discuss his humble beginnings (log cabin, self-taught). Explain that long ago, some people were not free and were forced to work without pay (slavery), and Lincoln worked to make that wrong thing stop. Discuss his character: honest, hardworking, fair. Create log cabin crafts or Lincoln portraits. Connect to Presidents Day. Emphasize that he believed all people deserve to be free.

DIFFERENTIATION:
For struggling learners: Focus on key facts: log cabin, hard worker, helped people be free, penny. Use pictures and simple stories. Avoid complex details about the Civil War.
For advanced learners: Discuss the Gettysburg Address in simple terms. Explore more about his life challenges. Compare his childhood to children today.

VOCABULARY:
President, honest, Honest Abe, log cabin, freedom, free, slavery, enslaved, fair, leader, penny, five dollars, hero, Lincoln Memorial

CONNECTION TO FUTURE LEARNING:
Learning about Lincoln prepares children for studying the Civil War, the abolition of slavery, and the ongoing struggle for civil rights. His story illustrates values of honesty, perseverance, and fighting for justice.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Abraham Lincoln' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Martin Luther King Jr.
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Martin Luther King Jr.' AND grade_level_min = 1),
  'Martin Luther King Jr. (Grade 1) Topic Guide',
  'Teaching about the leader who fought for equal rights',
  'MARTIN LUTHER KING JR. - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand basic concepts of fairness and kindness. They should know that treating people differently because of how they look is wrong. They should have learned about Lincoln and that slavery ended.

LEARNING OBJECTIVES:
- Recognize Dr. Martin Luther King Jr. and why he is important
- Understand that he worked for fairness and equal treatment for everyone
- Learn that he believed in peaceful ways to make change
- Understand the meaning of his "I Have a Dream" speech in simple terms
- Know that we celebrate Martin Luther King Jr. Day to honor him

KEY CONCEPTS:
1) Dr. King worked so that all people would be treated fairly, no matter their skin color
2) He believed in using peaceful words and actions, not fighting, to make change
3) His "I Have a Dream" speech shared his dream of everyone being treated equally
4) He led marches where people walked together peacefully to ask for fairness
5) We celebrate his birthday with a national holiday to remember his message of love and equality

COMMON MISCONCEPTIONS:
- Thinking all problems with fairness were solved by Dr. King
- Not understanding that unfair treatment still happened even after Lincoln
- Believing peaceful protest means doing nothing
- Thinking the holiday is just a day off rather than meaningful

TEACHING SEQUENCE:
Discuss fairness: is it fair to treat someone differently because of how they look? Explain that after slavery ended, many unfair rules still existed. Introduce Dr. King as someone who worked peacefully to change unfair rules. Read age-appropriate books about his life and work. Listen to or read simplified parts of "I Have a Dream." Discuss his dream of people being judged by their character, not their skin. Do activities about dreams for a fair world. Connect to MLK Day celebrations and service.

DIFFERENTIATION:
For struggling learners: Focus on the message of fairness and kindness. Use the word "peaceful" and show pictures of peaceful marches. Create drawings about treating everyone fairly.
For advanced learners: Discuss specific examples of unfair rules he fought against. Explore what students can do to continue his work. Learn more details about his life and other civil rights leaders.

VOCABULARY:
Equal, fair, peaceful, protest, march, dream, rights, civil rights, leader, speech, holiday, honor, justice, respect

CONNECTION TO FUTURE LEARNING:
Learning about Dr. King prepares children for studying the Civil Rights Movement, peaceful protest, and ongoing work for equality. His example teaches about using words and peaceful action to create change.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Martin Luther King Jr.' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: What Makes a Hero
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'What Makes a Hero' AND grade_level_min = 1),
  'What Makes a Hero (Grade 1) Topic Guide',
  'Teaching qualities that make someone a hero',
  'WHAT MAKES A HERO - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should have learned about specific American heroes (Washington, Lincoln, King). They should understand basic character traits like bravery, honesty, and kindness. They should be able to identify qualities in people they admire.

LEARNING OBJECTIVES:
- Define what a hero is (someone who helps others or does something brave and good)
- Identify qualities that heroes have (brave, kind, helpful, fair, honest)
- Recognize that heroes can be famous or everyday people
- Identify heroes in their own lives (family members, teachers, community helpers)
- Understand that they can have heroic qualities too

KEY CONCEPTS:
1) A hero is someone who helps others, especially when it''s hard or scary
2) Heroes are brave, kind, honest, and fair
3) Some heroes are famous (Washington, Lincoln, King) but many heroes are regular people
4) Everyday heroes include parents, teachers, firefighters, nurses, and helpful neighbors
5) Everyone can be a hero by helping others and doing the right thing

COMMON MISCONCEPTIONS:
- Thinking heroes must have superpowers or be famous
- Believing they are too young or small to be heroic
- Confusing fictional superheroes with real heroes
- Thinking heroes never feel afraid (heroes can be scared but act anyway)

TEACHING SEQUENCE:
Review the heroes studied: Washington, Lincoln, King. Identify what made each one a hero. Create a class list of hero qualities. Introduce the idea of everyday heroes. Have children identify heroes in their own lives. Read books about everyday heroes. Discuss how children can show heroic qualities (helping a friend, being honest, being brave about something scary). Create "hero awards" for people in their lives. Draw pictures of their personal heroes.

DIFFERENTIATION:
For struggling learners: Focus on simple qualities: brave, kind, helpful. Use concrete examples from their lives. Create a simple hero qualities chart with pictures.
For advanced learners: Research a hero from another culture or time period. Write about someone they know who is a hero. Discuss how heroes sometimes face challenges or opposition.

VOCABULARY:
Hero, heroic, brave, courage, kind, helpful, fair, honest, quality, character, everyday hero, admire, inspire, role model

CONNECTION TO FUTURE LEARNING:
Understanding heroic qualities prepares children for studying more historical figures, understanding character education, and recognizing that ordinary people can make extraordinary differences. This connects to civic responsibility and personal character development.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'What Makes a Hero' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- =====================================================
-- UNIT: GEOGRAPHY BASICS
-- =====================================================

-- Topic: Reading Maps
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Reading Maps' AND grade_level_min = 1),
  'Reading Maps (Grade 1) Topic Guide',
  'Teaching children to read simple maps and find locations',
  'READING MAPS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand what a map is (a picture showing a place from above). They should have experience with their classroom and school. They should understand basic position words (near, far, next to).

LEARNING OBJECTIVES:
- Read and interpret simple maps
- Locate specific places on a map using reference points
- Understand that maps represent real places
- Follow a simple route on a map
- Create a basic map of a familiar place

KEY CONCEPTS:
1) Maps are tools that show us where things are located
2) We read maps to find places and figure out how to get there
3) Maps have different features that help us read them (shapes, colors, words)
4) The same place can be shown on different kinds of maps
5) Maps help us understand places we can''t see all at once

COMMON MISCONCEPTIONS:
- Expecting maps to show tiny details like a photograph
- Not understanding that north is typically at the top of maps
- Thinking maps are exactly to scale (small objects appear)
- Confusing different map orientations

TEACHING SEQUENCE:
Start with a simple classroom map. Practice finding items on the map ("find the teacher''s desk"). Create a map of the classroom together. Expand to school maps and practice finding locations. Do a map treasure hunt around the school. Look at neighborhood or community maps. Practice giving and following directions using a map. Compare different maps of the same place. Have children create maps of their bedroom or backyard.

DIFFERENTIATION:
For struggling learners: Use very simple maps with few items. Start with 3D models before 2D maps. Provide lots of practice finding one thing at a time.
For advanced learners: Introduce basic compass directions on maps. Create more detailed maps. Use maps to plan a route from one place to another.

VOCABULARY:
Map, location, find, read, symbol, above, below, next to, near, far, route, direction, represent, bird''s eye view

CONNECTION TO FUTURE LEARNING:
Map reading skills are foundational for all geography learning. This prepares children for understanding compass directions, map scales, different types of maps, and eventually using maps for navigation and geographic analysis.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Maps' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Map Symbols
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Map Symbols' AND grade_level_min = 1),
  'Map Symbols (Grade 1) Topic Guide',
  'Teaching children to understand symbols and keys on maps',
  'MAP SYMBOLS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should have experience reading simple maps. They should understand that maps show places from above. They should be familiar with the concept of symbols from learning about American symbols.

LEARNING OBJECTIVES:
- Understand that symbols on maps represent real things
- Use a map key to interpret symbols
- Recognize common map symbols (roads, water, buildings)
- Create and use symbols for their own maps
- Connect symbols to the real objects they represent

KEY CONCEPTS:
1) A symbol is a small picture or shape that stands for something real on a map
2) A map key (or legend) tells us what each symbol means
3) Common symbols include lines for roads, blue for water, and small shapes for buildings
4) Using symbols allows maps to show many things in a small space
5) Different maps may use different symbols for the same things

COMMON MISCONCEPTIONS:
- Expecting symbols to look exactly like the real thing
- Not realizing the same thing can be shown with different symbols on different maps
- Ignoring the map key and guessing what symbols mean
- Thinking all maps use the same symbols

TEACHING SEQUENCE:
Introduce the concept of symbols with a simple symbol game (what does this picture mean?). Show examples of common map symbols. Create a class map key with symbols for classroom objects. Practice reading maps using the key. Compare symbols on different maps (treasure maps, community maps, world maps). Have children create their own symbols for a class map project. Go on a symbol scavenger hunt on different maps. Discuss why symbols are useful (can''t draw tiny realistic pictures of everything).

DIFFERENTIATION:
For struggling learners: Use very simple, intuitive symbols. Start with matching activities (symbol to real object). Focus on 3-4 common symbols at a time.
For advanced learners: Compare symbols across different types of maps. Create a more complex map with many symbols. Research standardized symbols used on official maps.

VOCABULARY:
Symbol, map key, legend, represent, stand for, picture, meaning, road, water, building, park, school, library, interpret

CONNECTION TO FUTURE LEARNING:
Understanding map symbols prepares children for reading more complex maps including political maps, physical maps, and specialized maps. This connects to understanding that symbols represent concepts in many contexts (math symbols, music notation, etc.).', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Map Symbols' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Continents and Oceans (Grade 1)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Continents and Oceans' AND grade_level_min = 1),
  'Continents and Oceans (Grade 1) Topic Guide',
  'Teaching the seven continents and major oceans',
  'CONTINENTS AND OCEANS - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should understand the concepts of land and water on maps and globes. They should have seen a globe or world map. They should understand that Earth is a planet with many different places on it.

LEARNING OBJECTIVES:
- Name and locate the seven continents on a world map or globe
- Name and locate the major oceans
- Understand that continents are large land masses and oceans are large bodies of water
- Identify which continent they live on (North America)
- Recognize that different animals, climates, and people live on different continents

KEY CONCEPTS:
1) There are seven continents: Africa, Antarctica, Asia, Australia, Europe, North America, South America
2) There are five major oceans: Atlantic, Pacific, Indian, Arctic, and Southern (Antarctic)
3) A continent is a very large area of land; an ocean is a very large body of water
4) We live on the continent of North America
5) Different continents have different climates, animals, and people

COMMON MISCONCEPTIONS:
- Confusing continents with countries
- Thinking oceans are separate bodies of water rather than connected
- Believing each continent has only one type of climate or animal
- Confusing Australia the continent with Australia the country

TEACHING SEQUENCE:
Use a globe to show the whole Earth and point out blue (oceans) and colored areas (continents). Sing continent songs to help memorize names. Label continents on an outline map. Discuss fun facts about each continent (penguins in Antarctica, kangaroos in Australia). Find North America and your country/state. Do the same process for oceans. Create continent and ocean puzzles. Use movement activities (stand up when you hear a continent, sit when you hear an ocean). Connect to where animals live or where stories take place.

DIFFERENTIATION:
For struggling learners: Focus on recognizing the shapes and 2-3 key continents first. Use songs and movement. Create simple matching activities. Use floor-sized maps for kinesthetic learning.
For advanced learners: Learn more about each continent (major countries, famous landmarks). Compare continent sizes. Explore which continents touch which oceans.

VOCABULARY:
Continent, ocean, Africa, Antarctica, Asia, Australia, Europe, North America, South America, Atlantic, Pacific, Indian, Arctic, Southern, land, water, globe, world map

CONNECTION TO FUTURE LEARNING:
Knowing continents and oceans is foundational for all geographic learning. This prepares children for studying individual countries, climate zones, animal habitats, and world cultures and history.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Continents and Oceans' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;

-- Topic: Where I Live
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global',
  (SELECT id FROM subjects WHERE name = 'History'),
  (SELECT id FROM topics WHERE name = 'Where I Live' AND grade_level_min = 1),
  'Where I Live (Grade 1) Topic Guide',
  'Teaching children to locate their community, state, and country',
  'WHERE I LIVE - TOPIC TEACHING GUIDE (GRADE 1)

PREREQUISITES:
Children should know their address and basic neighborhood concepts. They should understand what maps are and have learned about continents. They should understand that places fit inside larger places (house in neighborhood).

LEARNING OBJECTIVES:
- Locate their community on a local map
- Identify their state on a U.S. map
- Find the United States on a world map
- Understand the nested relationship: community within state within country within continent
- Describe where they live using geographic vocabulary

KEY CONCEPTS:
1) We live in a community, which is in a state, which is in a country, which is on a continent
2) Our country is the United States of America, and it is on the continent of North America
3) Each state has a name and shape, and our state has a capital city
4) Maps zoom in and out to show different levels of detail
5) Understanding where we live helps us understand our place in the world

COMMON MISCONCEPTIONS:
- Thinking their community IS the state or country
- Not understanding scale (state looks small on country map but is actually huge)
- Confusing city, state, and country
- Believing they can''t find their specific home on a world map (which is true but hard to understand)

TEACHING SEQUENCE:
Start with the most familiar: where is your home? Expand outward: home is in a neighborhood, in a community/city, in a state, in a country, on a continent, on Earth. Use nested dolls or boxes as an analogy. Find the school on a local map. Find the city/community on a state map. Find the state on a U.S. map. Find the U.S. on a world map. Create a "Where I Live" book or poster showing each level. Practice saying their full address including city, state, country.

DIFFERENTIATION:
For struggling learners: Focus on just 2-3 levels (city, state, country). Use hands-on nesting activities. Create a simple "I live in..." fill-in sheet.
For advanced learners: Learn about their state''s geography, symbols, and capital. Compare where they live to where relatives or pen pals live. Explore how addresses work at each level.

VOCABULARY:
Address, community, city, town, state, country, nation, United States, America, capital, border, locate, where, place, neighborhood

CONNECTION TO FUTURE LEARNING:
Understanding where they live prepares children for studying state and national geography, government organization, and their place in the broader world. This connects to civic identity and geographic literacy.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Where I Live' AND grade_level_min = 1)
ON CONFLICT DO NOTHING;
