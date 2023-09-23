SELECT REVERSE('meow meow') AS reverse_meow;
SELECT
    CONCAT(LOWER(title), REVERSE(LOWER(title))) AS title_palindrome
FROM legacy_books;
SELECT
    CONCAT(LOWER(author_fname), REVERSE(LOWER(author_fname))) AS author_fname_palindrome
FROM legacy_books;
SELECT
    CONCAT(LOWER(author_lname), REVERSE(LOWER(author_lname))) AS author_lname_palindrome
FROM legacy_books;
