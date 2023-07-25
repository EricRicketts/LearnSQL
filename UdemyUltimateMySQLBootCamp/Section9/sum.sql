SELECT CONCAT(author_fname, ' ', author_lname) AS full_name,
       SUM(pages) AS total_pages_written
FROM books
GROUP BY full_name;