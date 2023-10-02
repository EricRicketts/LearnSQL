SELECT DATEDIFF(CURDATE(), BirthDate) AS age_in_days
FROM people;

SELECT
    CURDATE(),
    BirthDate AS birth_date,
    TIMESTAMPDIFF(YEAR, BirthDate, CURDATE()) AS age_in_years
FROM people;

SELECT DATE_ADD(CURDATE(), INTERVAL 30 DAY ) AS add_30_days_to_current_date;
SELECT DATE_ADD(NOW(), INTERVAL 72 HOUR) AS 70_hours_from_today;
SELECT DATE_ADD(NOW(), INTERVAL '25:9' DAY_HOUR) AS 25_days_9_hours_from_today;
SELECT NOW() + INTERVAL 30 DAY AS add_30_days;
SELECT BirthDateTime + INTERVAL 20 DAY + INTERVAL 10 HOUR AS add_to_birthdate
FROM people;