SELECT
    BirthTime,
    HOUR(BirthTime),
    MINUTE(Birthtime),
    SECOND(Birthtime)
FROM people
WHERE first_name = 'Phillip' AND last_name = 'Frond';

SELECT
    BirthDateTime,
    HOUR(BirthDateTime),
    MINUTE(BirthDateTime),
    SECOND(BirthDateTime)
FROM people
WHERE first_name = 'Calvin' AND last_name = 'Fischoeder';
