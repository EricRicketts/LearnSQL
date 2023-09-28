SELECT author_lname FROM books;
SELECT DISTINCT author_lname FROM books;

SELECT released_year FROM books ORDER BY released_year;
SELECT DISTINCT released_year FROM books ORDER BY released_year;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS distinct_full_name FROM books;
SELECT DISTINCT author_lname, author_fname FROM books;
