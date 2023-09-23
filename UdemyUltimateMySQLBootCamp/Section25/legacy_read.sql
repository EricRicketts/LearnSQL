SELECT * FROM legacy_shirts;
SELECT
    article,
    color
FROM legacy_shirts;

SELECT
    article,
    color,
    shirt_size,
    last_worn
FROM legacy_shirts
WHERE shirt_size = 'M';