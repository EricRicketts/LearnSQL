SELECT
    last_name,
    first_name,
    rating
FROM reviewers
INNER JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY last_name, first_name, rating
ORDER BY last_name, first_name, rating DESC;