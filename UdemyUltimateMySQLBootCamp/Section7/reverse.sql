SELECT REVERSE('Hello World');
SELECT REVERSE('chicken nuggets');
SELECT REVERSE(author_fname)
FROM books;
SELECT CONCAT(author_fname, REVERSE(author_fname)) AS palindrome
FROM books;