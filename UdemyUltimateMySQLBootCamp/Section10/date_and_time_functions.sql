-- select first and last name, day of month, and day of week for the birthday of Linda Belcher
SELECT first_name,
       last_name,
       DAYOFMONTH(BirthDate) AS day_of_month,
       DAYOFWEEK(BirthDate) AS day_of_week
FROM people
WHERE first_name = 'Linda' AND last_name = 'Belcher';

SELECT * FROM people;

-- select first and last names, year of birth, month name of birth, and day of week of birth for
-- Phillip Frond
SELECT first_name,
       last_name,
       YEAR(BirthDate) AS year,
       MONTHNAME(BirthDate) AS month,
       DAYNAME(BirthDate) AS day_of_week
FROM people
WHERE first_name = 'Phillip' && last_name = 'Frond';

UPDATE people
SET
    BirthDate = '1948-07-04',
    BirthTime = '12:00:00',
    BirthDateTime = '1948-07-04 12:00:00'
WHERE first_name = 'Phillip' AND last_name = 'Frond';

UPDATE people
SET
    BirthDate = '1932-10-11',
    BirthTime = '06:30:30',
    BirthDateTime = '1932-10-11 06:30:30'
WHERE first_name = 'Calvin' AND last_name = 'Fischoeder';
