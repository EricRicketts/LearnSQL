SELECT
    author_lname,
    title
FROM books
GROUP BY author_lname, title;

SELECT
    author_lname,
    author_fname,
    COUNT(title) As number_of_books_written
FROM books
GROUP BY author_lname, author_fname
ORDER BY author_lname, author_fname;

SELECT
    released_year,
    COUNT(*) AS number_of_books_written_for_that_year
FROM books
GROUP BY released_year;

SELECT
    CONCAT(COUNT(*), ' books released in year ', released_year) AS release_statement
FROM books
GROUP BY released_year
ORDER BY released_year;
