-- query the number of books in the table
SELECT
    COUNT(*) AS number_of_books
FROM books;

-- query the number of books released each year
SELECT
    released_year,
    COUNT(*) AS book_released_in_year
FROM books
GROUP BY released_year
ORDER BY released_year ASC;

-- query the total number of books in stock
SELECT
    SUM(stock_quantity) AS total_number_of_books_in_stock
FROM books;

-- query the average released year for each author
SELECT
    author_lname,
    author_fname,
    ROUND(AVG(released_year)) AS average_released_year_per_author
FROM books
GROUP BY author_lname, author_fname
ORDER BY average_released_year_per_author ASC;

-- find the full name of the author who wrote the longest book
SELECT
    author_lname,
    author_fname,
    title,
    pages
FROM books
ORDER BY pages DESC;

-- return the full name of the author who wrote the longest book
SELECT
    CONCAT(author_fname, ' ', author_lname) AS full_name
FROM books
ORDER BY pages DESC LIMIT 1;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS full_name
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- query year, number of books written that year, and average pages per year
SELECT
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year ASC;