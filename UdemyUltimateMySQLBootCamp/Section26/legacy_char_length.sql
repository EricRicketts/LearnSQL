SELECT CHAR_LENGTH(title) AS title_length
FROM legacy_books;

SELECT author_lname, CHAR_LENGTH(author_lname) AS author_lname_length
FROM legacy_books;

SELECT author_fname, CHAR_LENGTH(author_fname) AS author_fname_length
FROM legacy_books;

SELECT
    CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long.') AS charcount
FROM legacy_books
GROUP BY author_lname;

