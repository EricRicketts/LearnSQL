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

SELECT
    title,
    AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY title;

SELECT
    title AS series_title,
    AVG(rating) AS avg_rating
FROM full_reviews
GROUP BY series_title WITH ROLLUP;
-- the WITH ROLLUP gives us the average of all the individual GROUP BY average ratings.

SELECT
    title,
    COUNT(rating) AS number_of_ratings
FROM full_reviews
GROUP BY title WITH ROLLUP;
-- in this case WITH ROLLUP with sum all the ratings for each GROUP BY

SELECT
    released_year,
    genre,
    AVG(rating) AS avg_rating_per_year
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP;
/*
    Notice in this case (after running the query above) we have a summary result after
    each released_year/genre this does not mean much as most of the years only have one
    genre associated with it.  It takes on more meaning in the year 2104 where we have a
    rating for Animation and a rating for Drama, now the WITH ROLLUP gives us the average
    of both of those ratings.
*/
