SELECT author_lname, author_fname, title
FROM books
WHERE author_fname LIKE '%da%';
SELECT author_lname, author_fname, title
FROM books
WHERE title LIKE '%:%';
SELECT author_lname, author_fname, title
FROM books
WHERE author_lname LIKE '______';
SELECT author_lname, author_fname, title
FROM books
WHERE title LIKE '%\%%';
SELECT author_lname, author_fname, title
FROM books
WHERE title LIKE '%\_%';
