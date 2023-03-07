-- ex 1 distinct departments from employees

SELECT DISTINCT department_id FROM employees;
-- returned 11 rows, same amount as department table

-- ex 2 show top salary in org
SELECT employee_id, first_name, last_name, job_id FROM employees ORDER BY salary DESC LIMIT 1;
-- 1 row Steven King

-- ex 3 departments between 5 and 10
SELECT department_id, department_name FROM departments WHERE department_id >= 5 AND department_id <= 10;
-- returned 6 rows 

-- alternatively 
SELECT department_id, department_name FROM departments WHERE department_id BETWEEN 5 AND 10; -- worked also

-- ex 4 distinct locations on department table
SELECT DISTINCT location_id FROM departments;
-- returned 7 from 11

-- ex 5 low salary employees
SELECT first_name, last_name, salary, phone_number FROM employees WHERE salary <= 5000;
-- returned 12 rows

-- ex 6 those employees that started after begining of 1999
SELECT employee_id, first_name, last_name , hire_date FROM employees WHERE hire_date >= '1999-01-01';
-- returned 5 rows
-- alternative
SELECT employee_id, first_name, last_name , hire_date FROM employees WHERE YEAR(hire_date) >= 1999;
-- 5 rows again