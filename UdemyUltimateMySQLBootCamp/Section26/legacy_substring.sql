SELECT SUBSTR('Hello', 1, 4) AS first_sub_string; -- Hell
SELECT SUBSTR('Hello World', 7) AS second_sub_string; -- World
SELECT SUBSTR('Hello World', -5) AS third_sub_string; -- World
SELECT
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title
FROM legacy_books;
