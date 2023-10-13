SELECT
    DAYNAME(created_at) AS day_name,
    DAYOFWEEK(created_at) AS day_of_week,
    COUNT(DAYOFWEEK(created_at)) AS number_of_registrations_on_day
FROM users
GROUP BY day_name, day_of_week
ORDER BY number_of_registrations_on_day DESC;

-- Instructor Solution

SELECT
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;

-- the above works as we are grouping by day, so the COUNT(*) will count the number of
-- records in that group which is what we want.