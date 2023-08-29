CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

SELECT * FROM ordered_series;

-- the table is an insertable table, lots of rules in the mySQL documentation about
-- updateable tables

INSERT INTO ordered_series(title, released_year, genre)
VALUES ('The Great', 2011, 'Comedy');

SELECT * FROM ordered_series;

DELETE FROM ordered_series WHERE title = 'The Great';

SELECT * FROM ordered_series;

