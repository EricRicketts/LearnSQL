SELECT REPLACE('Hello World', 'Hell', '%$#@');
SELECT REPLACE('cheese bread milk coffee', ' ', ' and ');
SELECT REPLACE(title, ' ', '-') AS hyphenated_title
FROM books;