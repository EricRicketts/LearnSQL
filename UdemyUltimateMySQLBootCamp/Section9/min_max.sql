SELECT MIN(released_year) AS earliest_release_year
FROM books;

SELECT MAX(pages) AS largest_number_of_pages
FROM books;

SELECT MIN(author_lname) AS top_alphabetically,
       MAX(author_lname) AS bottom_alphabetically
FROM books;

SELECT title, pages
FROM books
ORDER BY pages DESC LIMIT 1;

SELECT title, pages
FROM books
WHERE pages = (
        SELECT MAX(pages)
        FROM books
     );

SELECT title, released_year
FROM books
WHERE released_year = (
        SELECT MIN(released_year)
        FROM books
    );

SELECT author_lname, author_fname, COUNT(*) AS books_written
FROM books
GROUP BY author_lname, author_fname
ORDER BY books_written DESC;

SELECT CONCAT(author_fname, ' ', author_lname) AS author,
       COUNT(*) AS books_written
FROM books
GROUP BY author
ORDER BY books_written DESC;
