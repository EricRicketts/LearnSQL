SELECT
    title,
    released_year,
    CASE
        WHEN released_year < 2000 THEN '20th Century Lit'
        ELSE 'Modern Lit'
    END AS period
FROM books
ORDER BY released_year;

SELECT
    title,
    released_year,
    IF(released_year < 2000, '20th Century Lit', 'Modern Lit') AS period
FROM books
ORDER BY released_year;

SELECT
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 99 THEN '**'
        ELSE '***'
    END AS stock
FROM books
ORDER BY stock_quantity;

SELECT
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS stock
FROM books
ORDER BY stock_quantity;
