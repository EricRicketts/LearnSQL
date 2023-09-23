SELECT UPPER('Hello World') AS upper;

SELECT LOWER('Hello World') AS lower;

SELECT
    UPPER(title) AS title_upper_cased
FROM legacy_books;

SELECT
    CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) AS favorite
FROM legacy_books;
