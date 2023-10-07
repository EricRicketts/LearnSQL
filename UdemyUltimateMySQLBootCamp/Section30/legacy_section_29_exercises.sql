SELECT 10 != 10; -- 0
SELECT 15 > 14 && 99 - 5 <= 94; -- 1
SELECT 1 IN (5, 3) || 9 BETWEEN 8 AND 10; -- 1

SELECT
    *
FROM books
WHERE released_year < 1980;

SELECT
    *
FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

SELECT
    *
FROM books
WHERE author_lname = 'Lahiri' AND released_year > 2000;

SELECT
    *
FROM books
WHERE pages BETWEEN 100 AND 200;

SELECT
    *
FROM books
WHERE
    author_lname LIKE 'C%' OR
    author_lname LIKE 'S%';

SELECT
    *
FROM books
WHERE
    SUBSTRING(author_lname, 1, 1) IN ('C', 'S');

SELECT
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title IN ('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
        ELSE 'Novel'
    END AS genre
FROM books;

SELECT
    author_lname,
    CASE
        WHEN COUNT(title) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(title), ' books')
        END AS book_count
FROM books
GROUP BY author_lname
ORDER BY author_lname;
-- the original author solution was not possible with the default GROUP BY settings on MySQL
-- regardless the problem itself made no sense to me, why only have one title listed and then
-- count the number of books written by the author