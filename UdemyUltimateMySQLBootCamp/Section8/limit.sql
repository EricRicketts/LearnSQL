SELECT author_lname, author_fname, title, released_year
FROM books
ORDER BY released_year LIMIT 5;
SELECT author_lname, author_fname, title, released_year
FROM books
ORDER BY released_year DESC LIMIT 3, 10;
