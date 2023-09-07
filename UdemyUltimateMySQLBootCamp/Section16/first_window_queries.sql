SELECT
    emp_no,
    department,
    salary,
    AVG(salary) OVER(PARTITION BY department) AS dept_avg_salary
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    MIN(salary) OVER(PARTITION BY department) AS min_salary,
    MAX(salary) OVER(PARTITION BY department) AS max_salary
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    AVG(salary) OVER() AS average_salary
FROM more_employees;
-- this last query does no specific partition so it gives the average salary of all
-- records in the table.  In the first query above we partition by department, so it
-- gives the average salary for each department.  When you provide an argument for
-- OVER() then one can think of a GROUP BY without the inherent reduction that takes
-- place, the WINDOW operation will show all records in the table.
