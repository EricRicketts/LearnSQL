SELECT
    ROUND(AVG(released_year)) AS average_released_year
FROM books;

SELECT
    author_lname,
    author_fname,
    ROUND(AVG(pages)) AS author_average_book_length
FROM books
GROUP BY author_lname, author_fname;

SELECT
    author_lname,
    author_fname,
    ROUND(AVG(pages)) AS author_average_book_length
FROM books
GROUP BY author_lname, author_fname
ORDER BY author_average_book_length ASC;

SELECT
    released_year,
    ROUND(AVG(stock_quantity)) AS yearly_stock_quantity
FROM books
GROUP BY released_year
ORDER BY released_year ASC;

SELECT
    released_year,
    ROUND(AVG(stock_quantity)) AS yearly_stock_quantity
FROM books
GROUP BY released_year
ORDER BY yearly_stock_quantity ASC;
