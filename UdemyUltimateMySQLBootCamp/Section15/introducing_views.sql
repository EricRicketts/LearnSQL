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

-- this creates a virtual table which we can refer to later
SHOW TABLES;
-- run the above CREATE VIEW command followed by SHOW TABLES command
-- full_reviews will show up in the query of tables

SELECT * FROM full_reviews;
-- this gives us the virtual "full_reviews" table, now I can refer to this table
-- just as I would any other table, see example below

SELECT
    genre,
    AVG(rating) AS avg_genre_rating
FROM full_reviews
GROUP BY genre;