-- select all 'Story' collections, ie, titles that contain 'Stories'
SELECT
    title
FROM books
WHERE title LIKE '%stories%';

-- select the longest book in the collection
SELECT
    title,
    pages
FROM books
ORDER BY pages DESC LIMIT 1;

-- query a summary of the 3 most recently released books
SELECT
    CONCAT(title, ' - ', released_year) AS summary
FROM books
ORDER BY released_year DESC LIMIT 3;

-- find all books whose author's last name contains a space
SELECT
    title,
    author_lname
FROM books
WHERE author_lname LIKE '% %';

-- find the 3 books that are the lowest in stock
SELECT
    title,
    released_year,
    stock_quantity
FROM books
ORDER BY stock_quantity LIMIT 3;

-- query the title and author last name, sort by author last name and title
SELECT
    title,
    author_lname
FROM books
ORDER BY author_lname, title;

SELECT
    CONCAT('MY FAVORITE AUTHOR IS ', UPPER(author_fname), ' ', UPPER(author_lname), '!') AS yell
FROM books
ORDER BY author_lname;