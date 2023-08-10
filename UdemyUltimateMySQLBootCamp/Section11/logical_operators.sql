SELECT
    title,
    released_year,
    author_fname,
    author_lname
FROM books
WHERE
  author_fname = 'Dave'
  AND author_lname = 'Eggers'
  AND released_year > 2010;

SELECT
    title,
    released_year,
    author_fname,
    author_lname
FROM books
WHERE
  author_fname = 'Dave'
  AND author_lname = 'Eggers'
  AND released_year > 2010
  AND title LIKE '%novel%';

SELECT
    title,
    pages
FROM books
WHERE
    CHAR_LENGTH(title) > 15
    AND pages > 500;

SELECT
    title,
    author_lname,
    released_year
FROM books
WHERE
    author_lname = 'Eggers'
    OR released_year > 2010;

SELECT
    title, pages
FROM books
WHERE
    pages < 200
    OR title LIKE '%stories%';