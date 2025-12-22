# Fix unit name mismatches
sed -i "s/Me and My Community/My School and Community/g" supabase/seeds/prompts/units/history_units.sql
sed -i "s/American Symbols and Holidays/American Symbols/g" supabase/seeds/prompts/units/history_units.sql
sed -i "s/Families and Traditions/Families Then and Now/g" supabase/seeds/prompts/units/history_units.sql
sed -i "s/Maps and Geography/Geography Skills/g" supabase/seeds/prompts/units/history_units.sql
sed -i "s/Alphabet and Phonics/Phonics Foundations/g" supabase/seeds/prompts/units/reading_units.sql
sed -i "s/Print Concepts and Writing/Writing Basics/g" supabase/seeds/prompts/units/reading_units.sql
sed -i "s/Push and Pull/Pushes and Pulls/g" supabase/seeds/prompts/units/science_units.sql
sed -i "s/Our Senses/Our Five Senses/g" supabase/seeds/prompts/units/science_units.sql
sed -i "s/Space and Sky/Sky Patterns/g" supabase/seeds/prompts/units/science_units.sql

# Fix topic name mismatches for K-8
sed -i "s/Counting to 10/Counting to 20/g" supabase/seeds/prompts/topics/math/k_math_topics.sql
sed -i "s/Number Recognition/Writing Numbers/g" supabase/seeds/prompts/topics/math/k_math_topics.sql
sed -i "s/Addition Stories/Addition Concepts/g" supabase/seeds/prompts/topics/math/k_math_topics.sql
sed -i "s/Subtraction Stories/Subtraction Concepts/g" supabase/seeds/prompts/topics/math/k_math_topics.sql
sed -i "s/Comparing Lengths/Comparing Sizes/g" supabase/seeds/prompts/topics/math/k_math_topics.sql
sed -i "s/Counting On/Counting to 120/g" supabase/seeds/prompts/topics/math/1_math_topics.sql
sed -i "s/Making Ten/Making Connections/g" supabase/seeds/prompts/topics/math/1_math_topics.sql
sed -i "s/Doubles Facts/Fact Families/g" supabase/seeds/prompts/topics/math/1_math_topics.sql
sed -i "s/Comparing Numbers to 100/Comparing Numbers/g" supabase/seeds/prompts/topics/math/1_math_topics.sql

echo "Fixed name mismatches"
