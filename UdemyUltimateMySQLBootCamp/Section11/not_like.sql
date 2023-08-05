SELECT
    author_fname,
    author_lname,
    title
FROM books
WHERE author_fname NOT LIKE 'da%';

SELECT
    title,
    author_fname,
    author_lname
FROM books
WHERE title NOT LIKE '%e%';

SELECT
    title,
    author_fname,
    author_lname
FROM books
WHERE title NOT LIKE '%a%';
