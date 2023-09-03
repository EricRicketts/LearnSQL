DESC series;
DESC reviewers;
DESC reviews;

-- 1.  Write a query to list each title along with its respective rating
SELECT
    title,
    rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id

-- 2.  Write a query to find the average rating of each tv series and list it in ascending order
-- round the average rating to 2 digits
SELECT
    title,
    ROUND(AVG(rating), 2) AS average_rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY average_rating;

-- 3.  Write a query which lists the reviewers first name, last name, and each of their ratings
SELECT
    first_name,
    last_name,
    rating
FROM reviewers
INNER JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name, rating;

-- 4.  Write a query which lists all the series titles with no reviews.
SELECT
    title AS unreviewed_series
FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE reviews.id IS NULL;

-- 5.  Write a query which lists the average rating for each genre
SELECT
    genre,
    ROUND(AVG(rating), 2) AS average_rating
FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

-- 6.  Write a query which lists the first name, last name, number of reviews, lowest review, highest review,
--  average review, and whether the reviewer is active.  If a reviewer has no reviews count, min, max, and
-- average review will be zero
SELECT
    first_name,
    last_name,
    IFNULL(COUNT(rating), 0) AS number_of_reviews,
    IFNULL(MIN(rating), 0) AS lowest_rating,
    IFNULL(MAX(rating), 0) AS hightest_rating,
    IFNULL(AVG(rating), 0) AS average_rating,
    IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE')
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;
