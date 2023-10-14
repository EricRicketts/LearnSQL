DESC tags;
DESC photo_tags;
/*
    what are the five most commonly used hashtags?
    In this case if we group by tag_id and then count them we should have the answer
    we just have to join with tags to get the tag name
*/

SELECT
    tag_id,
    tag_name,
    COUNT(*) AS tag_count
FROM photo_tags
INNER JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY tag_id, tag_name
# ORDER BY tag_count DESC;
ORDER BY tag_count DESC LIMIT 5;
