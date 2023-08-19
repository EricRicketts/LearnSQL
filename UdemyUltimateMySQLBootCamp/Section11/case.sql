SELECT * FROM books;

SELECT
    author_lname, author_fname, title, released_year,
CASE
    WHEN released_year >= 2000 THEN 'Modern Literature'
    ELSE '20th Century Literature'
END AS 'Genre'
FROM books;

SELECT
    title, stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        ELSE '***'
    END AS stock_rating
FROM books;

SELECT
    title, stock_quantity,
    CASE
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
        END AS stock_rating
FROM books;
