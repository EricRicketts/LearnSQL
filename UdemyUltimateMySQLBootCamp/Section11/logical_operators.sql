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

SELECT
    title, released_year
FROM books
WHERE released_year >= 2004 AND released_year <= 2015;

SELECT
    title, released_year
FROM books
WHERE released_year BETWEEN 2004 AND 2015;

SELECT
    title, released_year
FROM books
WHERE released_year NOT BETWEEN 2004 AND 2015;

SELECT
    title, pages
FROM books
WHERE pages BETWEEN 200 AND 300;

SELECT
    title, pages
FROM books
WHERE pages NOT BETWEEN 200 AND 300;

SELECT *
FROM people
WHERE BirthDate < '1950-01-01';

-- this is more explicit and readable than the above solution
SELECT *
FROM people
WHERE YEAR(BirthDate) < 2005;

SELECT *
FROM people
WHERE BirthTime > '09:00:00';

SELECT *
FROM people
WHERE HOUR(BirthTime) > 9;

-- this is the technically correct version of comparing times if you want
-- more precision that just hours because of you just compare hours then
-- you will get results on the same hour but which also includes minutes and
-- seconds AFTER the hour.  In the format below we can compare in a way which
-- includes minutes and seconds.  Note mySQL can understand a string version
-- of time, 'hh:mm:ss' but the more robust way is to CAST the string to a TIME
-- object.
SELECT *
FROM people
WHERE
    BirthTime
        BETWEEN CAST('05:00:00' AS TIME) AND CAST('08:00:00' AS TIME);

-- as mentioned above this syntax below, while more readable, does not take into
-- account minutes and seconds after the hour, so if the developer wants to restrict
-- the comparison to 08:00:00 and any time before this will not work.
SELECT *
FROM people
WHERE
    HOUR(BirthTime) BETWEEN 5 AND 8;

SELECT * FROM books;

SELECT
    title, author_lname, author_fname
FROM books
WHERE author_lname IN ('Saunders', 'Lahiri');

SELECT
    title, author_lname, author_fname
FROM books
WHERE author_lname NOT IN ('Saunders', 'Lahiri');

SELECT
    title, author_lname, author_fname, released_year
FROM books
WHERE books.released_year NOT IN (2000, 2001, 2002, 2003, 2004);

-- get all even year released books
SELECT
    title, author_lname, author_fname, released_year
FROM books
WHERE released_year % 2 = 0;

-- get all odd year released books
SELECT
    title, author_lname, author_fname, released_year
FROM books
WHERE released_year % 2 = 1;
