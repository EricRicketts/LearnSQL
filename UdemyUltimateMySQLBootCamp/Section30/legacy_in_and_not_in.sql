SELECT author_fname, author_lname FROM books;

SELECT
    author_fname,
    author_lname,
    title
FROM books
WHERE
    author_lname = 'carver' OR
    author_lname = 'smith' OR
    author_lname = 'lahiri';

SELECT
    author_fname,
    author_lname,
    title
FROM books
WHERE author_lname IN ('smith', 'carver', 'lahiri');

SELECT
    author_fname,
    author_lname,
    title
FROM books
WHERE author_lname NOT IN ('smith', 'carver', 'lahiri');

SELECT
    author_fname,
    author_lname,
    title,
    released_year
FROM books
WHERE released_year IN (1985, 2017);

SELECT
    author_fname,
    author_lname,
    title,
    released_year
FROM books
WHERE released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);

SELECT
    author_fname,
    author_lname,
    title,
    released_year
FROM books
WHERE
    released_year >= 2000 AND
    released_year % 2 != 0
ORDER BY released_year;