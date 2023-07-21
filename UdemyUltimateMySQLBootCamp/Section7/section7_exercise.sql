SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
SELECT
    REPLACE
        (
            CONCAT('I', ' ', 'like', ' ', 'cats'),
            ' ',
            '-'
        );
SELECT REPLACE(title, ' ', '->') AS title FROM books;
SELECT author_lname AS forward, REVERSE(author_lname) AS backward
FROM books;
SELECT CONCAT(UPPER(author_fname), ' ', UPPER(author_lname))
    AS 'full name in caps'
FROM books;
SELECT CONCAT(title, ' was released in ', released_year) AS blurb
FROM books;
SELECT title, CHAR_LENGTH(title) AS character_count
FROM books;
SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
       CONCAT(author_lname, ', ', author_fname) AS author,
       CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;
