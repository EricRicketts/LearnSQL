-- SELECT 10 != 10; should return 0
-- SELECT 15 > 14 AND 99 - 5 <= 94; should return 1
-- SELECT 1 IN (5, 3) OR 9 BETWEEN 8 AND 10; should return 1

-- Select all books written before 1980 (non-inclusive)
SELECT *
FROM books
WHERE released_year < 1980;

-- Select all books written by 'Eggers' or "Chabon'
SELECT *
FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

-- Select all books written by Lahiri and published after 2000
SELECT *
FROM books
WHERE
    author_lname = 'Lahiri'
    AND released_year > 2000;

-- Select all books with a page count between 100 and 200
SELECT *
FROM books
WHERE pages BETWEEN 100 AND 200;

-- Select all books were author's last name start with a 'C' or an 'S'
SELECT *
FROM books
WHERE
    author_lname LIKE ('C%')
    OR author_lname LIKE ('S%');

SELECT *
FROM books
WHERE
    SUBSTR(author_lname, 1, 1) IN ('C', 'S');

-- Write a query which returns title, author_lname and a type column
-- the type column is 'Short Stories' if the title contains 'stories'
-- the type column is 'Memoir' if the title is 'Just Kids and A Heartbreaking Work'
-- otherwise the type column is 'Novel'
SELECT
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title LIKE '%Just Kids%' THEN 'Memoir'
        WHEN title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
        ELSE 'Novel'
    END AS 'Type'
FROM books;

-- Write a query groups author_fname and author_lname and how many books each author
-- has written
SELECT
    CONCAT(author_fname, ' ', author_lname) AS author_full_name,
    CASE
        WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book')
        ELSE CONCAT(COUNT(*), ' books')
    END AS books_written
FROM books
GROUP BY author_full_name;