SELECT *
FROM books
WHERE released_year > 2000
ORDER BY released_year;

SELECT *
FROM books
WHERE released_year >= 2000
ORDER BY released_year;

SELECT
    title,
    stock_quantity
FROM books
WHERE stock_quantity >= 100
ORDER BY stock_quantity;

SELECT 99 > 1 AS true_value;
SELECT 99 > 100 AS false_value;

-- exercises
SELECT 100 > 5; -- 1
SELECt -15 > 15; -- 0
SELECT 9 > -10; -- 1
SELECT 1 > 1; -- 0
SELECT 'a' > 'b'; -- 0
SELECT 'A' > 'a'; -- 0
SELECT 'A' >= 'a'; -- 1 this surprises me, what this means is that String comparisons in mySQL are
-- case insensitive
