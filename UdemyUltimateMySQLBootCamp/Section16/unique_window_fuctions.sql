SELECT
    emp_no,
    department,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM more_employees;

-- Anki Question 1
SELECT
    emp_no,
    department,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM more_employees ORDER BY department;

-- Anki Question 2
SELECT
    emp_no,
    department,
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM more_employees ORDER BY department;

SELECT
    emp_no,
    department,
    salary,
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS salary_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_salary_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) AS overall_row_number
FROM more_employees ORDER BY department;

SELECT
    emp_no,
    department,
    salary,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM more_employees ORDER BY department;

SELECT
    emp_no,
    department,
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS high_pay_dept_emp_no,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS high_pay_emp_no
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    LAG(salary) OVER(ORDER BY salary DESC) AS lagging_salary
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    LAG(salary, 2) OVER(ORDER BY salary DESC) AS lagging_salary
    -- specifies 2 rows back
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    LEAD(salary) OVER(ORDER BY salary DESC) AS leading_salary
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    salary - LEAD(salary) OVER(PARTITION BY department ORDER BY salary DESC)
        AS dept_salary_diffs
FROM more_employees;

SELECT
    emp_no,
    department,
    salary,
    -salary + LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC)
        AS dept_salary_diffs
FROM more_employees;

