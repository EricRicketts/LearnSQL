SELECT author_lname FROM books ORDER BY author_lname;
SELECT DISTINCT author_lname FROM books ORDER BY author_lname;
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname)
AS author_full_name
FROM books;
SELECT DISTINCT author_fname, author_lname
AS author_full_name
FROM books;