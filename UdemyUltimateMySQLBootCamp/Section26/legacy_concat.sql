SELECT
    CONCAT(author_fname, ' ', author_lname) AS author_full_name
FROM legacy_books;

SELECT
    author_fname AS first,
    author_lname AS last,
    CONCAT(author_fname, ' ', author_lname) AS full
FROM legacy_books;

SELECT
    CONCAT_WS('-', REPLACE(title, ' ', '-'), author_lname, author_fname) AS slug
FROM legacy_books;