SELECT CONCAT(author_fname, ' ', author_lname) AS full_name,
        MIN(released_year) AS first_published_year
FROM books
GROUP BY full_name;

SELECT CONCAT(author_fname, ' ', author_lname) AS full_name,
       MIN(released_year) AS first_published_year,
       MAX(released_year) AS last_year_published,
       COUNT(*) AS books_written,
       MAX(pages) AS longest_page_count
FROM books
GROUP BY full_name;
