-- 1.  What is a good use case for a CHAR?
-- holding a person's initials as it is fixed in length

-- 2.  CREATE TABLE inventory (
--      item_name VARCHAR(100),
--      price DECIMAL(9, 2),
--      quantity INTEGER
-- );

/*
    3.  What is the difference between DATETIME and TIMESTAMP?
    TIMESTAMP is used on a much smaller time range from 1970 to 2039 whereas
    DATETIME is used for 1000 to 9999, they are similar in that they both
    have the similar functions operating on them
*/

SELECT CURRENT_TIME;
SELECT CURRENT_DATE;
SELECT DAYOFWEEK(CURRENT_DATE);
SELECT DAYNAME(CURRENT_DATE);
SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%m/%d/%Y %T');
SELECT DATE_FORMAT(CURRENT_TIMESTAMP, '%M %D, %Y at %l:%i %p')
