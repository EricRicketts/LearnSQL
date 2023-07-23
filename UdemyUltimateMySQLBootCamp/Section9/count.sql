-- how many books in the table
SELECT COUNT(*) AS book_count
FROM books;

-- how many distinct author first names are there
SELECT COUNT(DISTINCT author_fname) AS distinct_first_names
FROM books;

-- how many distinct author last names are there
SELECT COUNT(DISTINCT author_lname) AS distinct_last_names
FROM books;

-- how many unique years are there where books were released
SELECT COUNT(DISTINCT released_year) AS distainct_release_years
FROM books;

-- count how many titles contain the word 'the'
SELECT COUNT(*) AS title_contains_the
FROM books
WHERE title LIKE '%the%';