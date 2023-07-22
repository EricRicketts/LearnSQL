SELECT book_id, author_fname, author_lname, pages
FROM books
ORDER BY pages;
SELECT book_id, author_fname, author_lname, pages
FROM books
ORDER BY 4;
SELECT book_id, author_lname, author_fname, released_year
FROM books
ORDER BY author_fname, released_year;
SELECT book_id, author_lname, author_fname, released_year
FROM books
ORDER BY author_fname, released_year DESC;
SELECT CONCAT(author_lname, ' ', author_fname)
AS author
FROM books
ORDER BY author;
