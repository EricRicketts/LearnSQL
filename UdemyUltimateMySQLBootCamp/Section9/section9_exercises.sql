-- print the number of books in the table
SELECT COUNT(*) AS total_number_of_books
FROM books;

-- print out how many books were released each year
-- left side will be year and the right side number
-- of books
SELECT released_year, COUNT(*) AS books_written
FROM books
GROUP BY released_year;

-- print out the total number of books in stock
SELECT SUM(stock_quantity) AS total_in_stock
FROM books;

-- find the average released year for each author include author's firsta
--  and last name
SELECT CONCAT(author_fname, ' ', author_lname) AS full_name,
       AVG(released_year) AS average_release_year
FROM books
GROUP BY full_name;

-- find the full name of the author who wrote the longest book
-- include the number of pages
SELECT CONCAT(author_fname, ' ', author_lname) AS full_name,
       pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- for each release year find the number of books written as '# books' and
-- the average number of pages written for that year
SELECT released_year, COUNT(*) AS '# books',
       AVG(pages) AS average_number_of_pages
FROM books
GROUP BY released_year
ORDER BY released_year;
