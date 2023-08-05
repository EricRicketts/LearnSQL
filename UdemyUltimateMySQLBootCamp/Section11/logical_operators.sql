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