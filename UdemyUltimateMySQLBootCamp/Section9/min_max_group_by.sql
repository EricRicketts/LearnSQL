SELECT CONCAT(author_fname, ' ', author_lname) AS full_name,
        MIN(released_year) AS first_published_year
FROM books
GROUP BY full_name;
