SELECT
    last_name,
    first_name,
    IFNULL(COUNT(rating), 0) AS number_of_reviews,
    IFNULL(MIN(rating), 0) AS low_rating,
    IFNULL(MAX(rating), 0) AS high_rating,
    IFNULL(AVG(rating), 0) AS average_rating,
    IF(rating IS NOT NULL, 'ACTIVE', 'INACTIVE') AS reviewer_status
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY last_name, first_name, reviewer_status
ORDER BY last_name, first_name;