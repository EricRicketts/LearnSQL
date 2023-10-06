SELECT
    *
FROM books
WHERE
    released_year >= 2004 AND
    released_year <= 2015
ORDER BY released_year;

SELECT
    *
FROM books
WHERE released_year BETWEEN 2004 AND 2015
ORDER BY released_year;

SELECT
    *
FROM books
WHERE released_year NOT BETWEEN 2004 AND 2015
ORDER BY released_year;

SELECT
    *
FROM books
WHERE pages NOT BETWEEN 100 AND 500;

SELECT CAST('2010-05-02' AS DATE);

SELECT * FROM more_people;

SELECT
    *
FROM more_people
WHERE
    birth_date_time BETWEEN CAST('1900-01-01' AS DATE) AND CAST('1950-01-01' AS DATE);

SELECT
    *
FROM more_people
WHERE
    birth_date_time BETWEEN CAST('1950-01-01' AS DATETIME) AND CAST('1970-01-01' AS DATETIME);
