-- Verify Grade 6-8 Math Topic Prompts
SELECT
    'Grade ' || t.grade_level_min || ' Math' as grade,
    COUNT(DISTINCT t.id) as total_topics,
    COUNT(DISTINCT pt.id) as topics_with_prompts,
    ROUND(100.0 * COUNT(DISTINCT pt.id) / COUNT(DISTINCT t.id), 1) as coverage_percent
FROM topics t
LEFT JOIN prompt_templates pt ON
    pt.topic_id = t.id AND pt.prompt_type = 'topic_global'
WHERE
    t.subject_id = (SELECT id FROM subjects WHERE name = 'Math')
    AND t.grade_level_min IN (6, 7, 8)
GROUP BY t.grade_level_min
ORDER BY t.grade_level_min;

-- Detailed breakdown by unit
SELECT
    'Grade ' || t.grade_level_min as grade,
    u.name as unit_name,
    COUNT(DISTINCT t.id) as total_topics,
    COUNT(DISTINCT pt.id) as topics_with_prompts
FROM topics t
JOIN units u ON t.unit_id = u.id
LEFT JOIN prompt_templates pt ON
    pt.topic_id = t.id AND pt.prompt_type = 'topic_global'
WHERE
    t.subject_id = (SELECT id FROM subjects WHERE name = 'Math')
    AND t.grade_level_min IN (6, 7, 8)
GROUP BY t.grade_level_min, u.id, u.name
ORDER BY t.grade_level_min, u.order_index;
