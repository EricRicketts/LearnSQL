SELECT
    title,
    AVG(rating) AS average_rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY average_rating;