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

CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

SELECT * FROM ordered_series;

CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;

SELECT * FROM ordered_series;

ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

SELECT * FROM ordered_series;

ALTER VIEW ordered_series AS
SELECT * FROM series
ORDER BY genre;

SELECT * FROM ordered_series;

DROP VIEW ordered_series;
-- this just drops the view, but not the data from the series table, DROP VIEW ordered_series;

