SELECT author_lname
FROM books
ORDER BY author_lname;

SELECT title
FROM books
ORDER BY title;

SELECT author_lname
FROM books
ORDER BY author_lname DESC;

SELECT released_year
FROM books
ORDER BY released_year;

SELECT released_year
FROM books
ORDER BY released_year DESC;

SELECT
    title, released_year, pages
FROM books
ORDER BY released_year;

SELECT
    title, pages
FROM books
ORDER BY released_year;

SELECT
    title,
    author_fname,
    author_lname
FROM books
ORDER BY 2; -- this orders by the select arguments, in this case ordering will be by author_fname
-- I do not like this as it lacks explicit code

SELECT
    author_lname,
    author_fname,
    title
FROM books
ORDER BY author_lname, author_fname;
-- this is rarely done usually ordering is only done with one column however, in this case the query behaves
-- as intuition would expect, ordering done by last name and then when that sorting is finished a second
-- pass is done which orders any first names, in this case if we ordered just by author last name, the two
-- Harris authors Dan Harris and Freida Harris would be out of order.  With both columns in the ORDER BY
-- arguments, the resulting alphabetical sorting is correct.
