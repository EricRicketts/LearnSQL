-- go through the people table and find the number of days from the current date to their birth dates
SELECT CURRENT_DATE, BirthDate, DATEDIFF(CURRENT_DATE, BirthDate) AS difference_in_days
FROM people;

 -- add 45 days to the current date and see what date you arrive at
 SELECT DATE_ADD(CURRENT_DATE, INTERVAL 45 DAY);

-- subtract 45 days to the current date and see what date you arrive at
SELECT DATE_SUB(CURRENT_DATE, INTERVAL 45 DAY);

-- calculate the time difference between now and when you woke up in the morning
SELECT TIMEDIFF(CURRENT_TIME, '03:15:25');
