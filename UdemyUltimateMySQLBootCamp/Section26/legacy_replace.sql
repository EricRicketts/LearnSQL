SELECT REPLACE('Hello World', 'Hell', 'Othell') AS othello;
SELECT REPLACE('Hello World', 'l', 7) AS sevens;
SELECT REPLACE('Hello World', 'o', 0) AS oohs;
SELECT REPLACE('cheese bread coffee milk', ' ', ' and ') AS ands;
SELECT
    REPLACE(title, 'e', 3) AS replace_e_with_3
FROM legacy_books;
SELECT
    REPLACE(SUBSTRING(title, 1, 10), 'e', '3') AS abbreviated_replace
FROM legacy_books;
