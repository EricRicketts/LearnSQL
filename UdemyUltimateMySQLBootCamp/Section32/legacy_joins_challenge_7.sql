SELECT
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
INNER JOIN reviewers ON reviews.reviewer_id = reviewers.id
GROUP BY title, rating, reviewer
ORDER BY title;