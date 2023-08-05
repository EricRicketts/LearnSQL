SELECT
    title,
    released_year
FROM books
WHERE released_year >= 2010
ORDER BY released_year DESC;

SELECT
    title,
    released_year
FROM books
WHERE released_year <= 1985
ORDER BY released_year DESC;
