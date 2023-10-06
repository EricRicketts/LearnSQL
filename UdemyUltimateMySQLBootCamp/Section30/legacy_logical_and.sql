SELECT
    *
FROM books
WHERE author_lname = 'Eggers' && books.released_year > 2010;

SELECT
    *
FROM books
WHERE author_lname = 'Eggers' AND books.released_year > 2010;

SELECT 1 < 5 AND 7 = 9; -- 0
SELECT -10 > -20 && 0 <= 0; -- 1
SELECT -40 <= -0 AND 10 > 40; -- 0
SELECT 54 <= 54 && 'a' = 'A'; -- 1

SELECT
    *
FROM books
WHERE author_lname = 'Eggers'
AND released_year > 2000
AND title LIKE '%novel%';

