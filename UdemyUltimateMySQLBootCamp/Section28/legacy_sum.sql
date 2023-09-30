SELECT SUM(pages) AS total_pages
FROM books;

SELECT
    author_lname,
    author_fname,
    SUM(pages) AS total_pages_written
FROM books
GROUP BY author_lname, author_fname;
