SELECT CONCAT(author_fname, ' ', author_lname) AS full_name FROM books;
SELECT CONCAT_WS('-', title, author_fname, author_lname) AS slug FROM books;