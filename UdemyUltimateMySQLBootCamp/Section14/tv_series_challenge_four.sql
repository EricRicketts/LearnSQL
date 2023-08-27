SELECT
    title AS unreviewed_series
FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS NULL;

-- very important concept here we need a LEFT JOIN otherwise we cannot find out which series
-- have not been reviewed.  With a LEFT JOIN we know if a record from the series table does
-- not have a review, then the rating column in the reviews table will be NULL this happens
-- automatically as a result of the LEFT JOIN.
SELECT * FROM reviews;
