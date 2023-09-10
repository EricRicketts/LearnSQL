SELECT * FROM users;

-- my solution
SELECT
    DAYNAME(created_at) AS day_name,
    DAYOFWEEK(created_at) AS day_of_week,
    COUNT(DAYOFWEEK(created_at)) AS count_day_of_week
FROM users
GROUP BY day_name, day_of_week
ORDER BY count_day_of_week DESC;

-- instructor solution
SELECT
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;

/*
    In the general sense the Instructor and I had the same solution.  In order
    to get the day of the week with the most registrations we needed to examine
    which day of the week had the most instances of the "created_at" column.  If
    we group by day of the week and then count the number of "created_at" for each
    group then we can get a number for each day.  In order to make it easier to
    interpret the data we order the output by the count for each day of the week.
*/