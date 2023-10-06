SELECT *
FROM books
WHERE released_year < 2000
ORDER BY released_year;

SELECT *
FROM books
WHERE released_year <= 2000
ORDER BY released_year DESC;

SELECT 3 < -10; -- 0
SELECT -10 < -9; -- 1
SELECT 42 <= 42; -- 1
SELECT 'h' < 'p'; -- 1
SELECT 'Q' <= 'q'; -- 1
