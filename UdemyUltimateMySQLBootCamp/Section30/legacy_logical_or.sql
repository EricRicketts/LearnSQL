SELECT
    *
FROM books
WHERE author_lname = 'Eggers'
|| released_year > 2010;

SELECT
    *
FROM books
WHERE author_lname = 'Eggers'
OR released_year > 2010;

SELECT 40 <= 100 || -2 > 0; -- 1
SELECT 10 > 5 || 5 = 5; -- 1
SELECT 'a' = 5 || 3000 > 2000; -- 1

SELECT
    title,
    author_lname,
    released_year,
    stock_quantity
FROM books
WHERE
    author_lname = 'Eggers' OR
    released_year > 2010 OR
    stock_quantity > 100;
