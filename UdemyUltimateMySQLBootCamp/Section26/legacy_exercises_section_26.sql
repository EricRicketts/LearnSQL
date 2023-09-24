SELECT
    REVERSE(UPPER('Why does my cat look at me with such hatred!')) AS reverse_upper_string;

SELECT
    REPLACE(
        CONCAT('I', ' ', 'like', ' ', 'cats.'),
        ' ',
        '-'
        ) AS replace_space_with_dash; -- results in 'I-like-cats.'

SELECT
    REPLACE(title, ' ', '->') AS arrowed_title
FROM books;

SELECT
    author_lname AS last_name,
    REVERSE(author_lname) AS reversed_last_name
FROM books;

SELECT
    UPPER(CONCAT(author_fname, ' ', author_lname)) AS full_name_in_caps
FROM books;

SELECT
    CONCAT(title, ' was released in ', released_year) AS blurb
FROM books;

SELECT
    title,
    CHAR_LENGTH(title) AS title_length
FROM books;

SELECT
    CONCAT(SUBSTRING(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ', ', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM books;

SELECT
    CONCAT(SUBSTRING(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ', ', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM books
WHERE title LIKE '%American G%' OR title LIKE '%A Heartbre%'
