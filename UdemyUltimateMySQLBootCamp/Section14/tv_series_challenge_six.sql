SELECT
    first_name,
    last_name,
    COUNT(rating) AS number_of_reviews,
    IFNULL(MIN(rating), 0.0) AS lowest_rating,
    IFNULL(MAX(rating), 0.0) AS hightest_rating,
    IFNULL(ROUND(AVG(rating), 2), 0.0) AS avg_rating,
    IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS status
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;