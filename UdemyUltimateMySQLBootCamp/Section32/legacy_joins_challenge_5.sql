SELECT
    genre,
    ROUND(AVG(rating), 2) AS average_genre_rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;
