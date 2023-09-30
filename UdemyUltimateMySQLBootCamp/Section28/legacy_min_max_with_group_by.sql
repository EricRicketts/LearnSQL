SELECT
    author_lname,
    author_fname,
    MIN(released_year) AS earliest_book
FROM books
GROUP BY author_lname, author_fname
ORDER BY earliest_book;

SELECT
    author_lname,
    author_fname,
    MAX(released_year) AS latest_book
FROM books
GROUP BY author_lname, author_fname
ORDER BY latest_book DESC;

SELECT
    author_lname,
    author_fname,
    MAX(pages) AS longest_book
FROM books
GROUP BY author_lname, author_fname
ORDER BY longest_book DESC;

SELECT
    author_lname,
    author_fname,
    MIN(pages) AS shortest_book
FROM books
GROUP BY author_lname, author_fname
ORDER BY shortest_book ASC;
