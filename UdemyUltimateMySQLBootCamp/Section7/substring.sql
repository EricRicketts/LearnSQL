-- create a substring from 'Hello World' starting at the first character and of length 4
SELECT SUBSTRING('Hello World', 1, 4) AS first_example;

-- create a substring from 'Hello World' starting at the seventh character to the end of the string
SELECT SUBSTRING('Hello World', 7) AS second_exmaple;

-- create a substring from 'Hello World' starting at the 3rd from last character to the end of the
-- string use negative indexes
SELECT SUBSTRING('Hello World', -3) AS third_exmaple;

-- create a substring from the title called 'short title' which is only 10 characters long
SELECT SUBSTRING(title, 1, 10) AS short_title FROM books;
SELECT SUBSTR(title, 1, 10) AS short_title FROM books;

-- get the author's last name initial and his last name
SELECT SUBSTRING(author_lname, 1, 1) AS last_name_initial, author_lname FROM books;
