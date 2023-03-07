-- exercise 2 a
SELECT e.employee_id, e.last_name, e.salary as 'Monthly Salary' FROM employees e;
-- returned 40 rows

-- exercise 2 b

SELECT e.employee_id, e.last_name, e.salary*12 as 'Yearly Salary' FROM employees e;
-- returned 40 rows

-- exersice 2c

 select employee_id, last_name, round(DATEDIFF('2021-11-17',hire_date)/365, 0) AS 'Years of Service'

from employees;

-- returned 40 rows
