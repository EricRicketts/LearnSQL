SELECT
    title,
    released_year
FROM books
WHERE released_year < 2000
ORDER BY released_year;

SELECT
    title,
    pages
FROM books
WHERE pages < 200
ORDER BY pages DESC;
