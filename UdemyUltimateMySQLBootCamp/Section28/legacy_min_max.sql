SELECT
    MIN(released_year) AS earliest_release_year,
    MAX(released_year) AS latest_release_year
FROM books;

SELECT
    MIN(pages) AS shortest_book,
    MAX(pages) AS longest_book
FROM books;

SELECT
    title,
    MIN(pages) AS shortest_book
FROM books
GROUP BY title, pages
ORDER BY pages LIMIT 1;

SELECT
    title,
    MAX(pages) AS longest_book
FROM books
GROUP BY title, pages
ORDER BY pages DESC LIMIT 1;

SELECT
    title,
    pages AS longest_book
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT
    title,
    pages AS shortest_book
FROM books
WHERE pages = (SELECT MIN(pages) FROM books);
