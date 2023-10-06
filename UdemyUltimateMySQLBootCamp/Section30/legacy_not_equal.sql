SELECT * FROM books;

SELECT
    title,
    released_year
FROM books
WHERE released_year = 2017;

SELECT
    title,
    released_year
FROM books
WHERE released_year != 2017;

SELECT
    title,
    author_fname,
    author_lname
FROM books
WHERE author_lname = 'Harris';

SELECT
    title,
    author_fname,
    author_lname
FROM books
WHERE author_lname != 'Harris';
