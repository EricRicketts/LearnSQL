SELECT AVG(released_year) FROM books;
SELECT AVG(pages) FROM books;
SELECT AVG(stock_quantity) FROM books;
-- calculate the average stock quantity for books
-- released in the same year
SELECT released_year,
       AVG(stock_quantity) AS stock_quantity_for_year,
       COUNT(*) AS books_written_for_year
FROM books
GROUP BY released_year;
