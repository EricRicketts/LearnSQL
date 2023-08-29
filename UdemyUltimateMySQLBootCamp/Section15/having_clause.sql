CREATE VIEW full_reviews AS
SELECT
    title,
    released_year,
    genre,
    rating,
    first_name,
    last_name
FROM reviews
INNER JOIN series
ON reviews.series_id = series.id
INNER JOIN reviewers
ON reviews.reviewer_id = reviewers.id;

SELECT * FROM full_reviews;

SELECT title, AVG(rating) AS avg_rating FROM full_reviews
GROUP BY title
HAVING avg_rating > 6.5
ORDER BY avg_rating DESC;