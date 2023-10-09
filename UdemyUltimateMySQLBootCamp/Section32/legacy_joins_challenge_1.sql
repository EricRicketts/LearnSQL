SELECT
    title,
    rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY title, rating
ORDER BY title;