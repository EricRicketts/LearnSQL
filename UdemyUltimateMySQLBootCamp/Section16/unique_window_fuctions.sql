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

