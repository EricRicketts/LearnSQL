SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    birth_date_time
FROM more_people;

SELECT
    CONCAT(first_name, ' ', last_name) AS full_name,
    birth_date_time,
    DATE_FORMAT(birth_date_time, '%M %D, %Y at %l:%i%p and %s seconds') AS written_birth_date_time,
    CONCAT(MONTHNAME(birth_date_time), ' ', DAY(birth_date_time), ', ', YEAR(birth_date_time)) AS brute_format,
    YEAR(birth_date_time) AS year_of_birth,
    MONTH(birth_date_time) AS month_of_birth,
    DAY(birth_date_time) AS day_of_birth,
    HOUR(birth_date_time) AS hour_of_birth,
    MINUTE(birth_date_time) AS minute_of_birth,
    SECOND(birth_date_time) AS second_of_birth,
    MONTHNAME(birth_date_time) AS month_name_of_birth,
    DAYNAME(birth_date_time) AS day_of_week_of_birth
FROM more_people;