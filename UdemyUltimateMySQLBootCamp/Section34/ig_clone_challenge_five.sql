DESC photos;
DESC tags;
DESC photo_tags;
/*
    This is asking how many times does the average user post?  So we have to go into the photos
    table, group by the user_ids
*/
DESC photos;
SELECT COUNT(*) AS number_of_photos FROM photos;
SELECT COUNT(*) AS number_of_users FROM users;

SELECT
    user_id,
    COUNT(*) AS number_of_posts
FROM photos
GROUP BY user_id
ORDER BY number_of_posts DESC;

-- This is the instructor's solution I could not figure out how to do it myself
SELECT
    ROUND(
        (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users),
    2) AS average_posts_per_user;