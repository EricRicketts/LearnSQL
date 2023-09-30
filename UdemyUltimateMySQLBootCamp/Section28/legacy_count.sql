SELECT COUNT(*) AS number_of_books
FROM books;

SELECT COUNT(author_lname) AS count_of_author_last_name
FROM books;

SELECT COUNT(DISTINCT author_lname) AS count_of_author_last_name
FROM books;

SELECT COUNT(DISTINCT author_fname) AS count_of_author_last_name
FROM books;

SELECT COUNT(DISTINCT author_lname, author_fname) AS distinct_authors
FROM books;

SELECT COUNT(DISTINCT CONCAT(author_fname, ' ', author_lname)) AS distinct_authors
FROM books;

SELECT
    COUNT(title) AS number_of_titles_containing_the
FROM books
WHERE title LIKE '%the%';
