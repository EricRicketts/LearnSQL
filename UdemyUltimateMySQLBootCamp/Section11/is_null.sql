-- delete all books where there is either no last name or not title
DELETE FROM books
WHERE
    author_lname IS NULL
   OR title IS NULL;