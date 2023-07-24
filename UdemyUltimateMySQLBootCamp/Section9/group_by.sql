-- count number of books written by each author, most books first
-- not taking into account unique authors
SELECT DISTINCT author_lname, COUNT(*) AS books_written
FROM books
GROUP BY author_lname
ORDER BY books_written DESC;

-- count number of books written by each author, most books first
-- factor in unique author names
SELECT DISTINCT author_lname, author_fname, COUNT(*) AS books_written
FROM books
GROUP BY author_lname, author_fname
ORDER BY books_written DESC;

-- count the number of book released each year, most first
SELECT released_year, COUNT(*) AS books_released
FROM books
GROUP BY released_year
ORDER BY books_released DESC;
