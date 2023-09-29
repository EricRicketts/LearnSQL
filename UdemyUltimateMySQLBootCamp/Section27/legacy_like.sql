SELECT
    author_lname,
    author_fname,
    title
FROM books
WHERE author_fname LIKE '%da%';
-- selects author's last name, first name and book title where the author's first name begins with 'da'
-- as you can see by running the query LIKE is case insensitive note this query return includes an author
-- first name of 'Frieda' as we specified 0 or any amount of characters before 'd'.
SELECT
    author_lname,
    author_fname,
    title
FROM books
WHERE author_fname LIKE 'da%';
-- the query above eliminates 'Frieda' in the return as the LIKE argument must start with 'd' (or 'D').

SELECT
    title,
    stock_quantity
FROM books
WHERE stock_quantity LIKE '____';
-- so what this query asks for is the list of books where the stock quantity has four digits, as the '_' is the LIKE
-- representation of 1 character (any character).  Since stock_quantity is an integer we can be guaranteed the LIKE
-- in this case will only match digits.

SELECT
    title,
    stock_quantity
FROM books
WHERE title LIKE '%\%%';
-- searches for books with an '%' in the title '\%' escapes '%' character

SELECT
    title,
    stock_quantity
FROM books
WHERE title LIKE '%\_%';
-- searches for books with an '_' in the title '\_' escapes '_' character
