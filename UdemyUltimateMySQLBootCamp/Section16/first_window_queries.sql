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
