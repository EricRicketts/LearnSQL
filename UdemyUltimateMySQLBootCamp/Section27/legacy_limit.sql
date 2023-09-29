SELECT
    title
FROM books
LIMIT 2;

SELECT
    title
FROM books
ORDER BY title
LIMIT 5;
-- above gives the first 5 titles when the titles are listed alphabetically

SELECT
    title,
    released_year
FROM books
ORDER BY released_year DESC LIMIT 5;
-- above gives the five most recently released books

SELECT
    title,
    released_year
FROM books
ORDER BY released_year DESC LIMIT 0, 5;
-- above gives the same as the previous query but with a different LIMIT syntax
-- the 0 is the starting point and the 5 is how many rows

SELECT
    title,
    released_year
FROM books
ORDER BY released_year DESC LIMIT 10, 1;
-- this gives us the 11th most recently released book

SELECT
    title,
    released_year
FROM books
ORDER BY released_year DESC LIMIT 3, 100000000;
-- this query tries to return a list of the most recently released books starting from the 3rd most
-- released book and going to the end of the table
