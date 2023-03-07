-- ex 1 employees name begins P and salary below 8000
SELECT first_name, last_name, salary FROM employees WHERE (first_name LIKE 'p%' OR last_name LIKE 'P%') AND salary < 8000;
-- returned 4 rows

-- ex 2 start date in 1997 1998
SELECT first_name, last_name, hire_date, department_id FROM employees WHERE YEAR(hire_date) IN (1997, 1998) AND department_id = 5;
-- returned 4 rows
-- alternative
SELECT first_name, last_name, hire_date, department_id FROM employees WHERE YEAR(hire_date) BETWEEN 1997 AND 1998 AND department_id = 5;
-- same result

-- ex 3  Identify employees that are employed in 1998, 1999, 2000. Display their first name, last name, salary, email, hire_date (alias ‘Year of Hire’) and order by last name in ascending order.
SELECT first_name, last_name, salary, email, YEAR(hire_date) AS 'Year of hire' FROM employees WHERE YEAR(hire_date) BETWEEN 1998 AND 2000 ORDER BY last_name ASC;
-- returned 11 rows

-- ex 4 
SELECT * FROM employees WHERE salary >= 5000 AND salary <= 10000;
-- returned 19 rows

-- ex 5 
SELECT first_name, last_name FROM employees WHERE salary BETWEEN 4000 AND 12000 ORDER BY first_name ASC;
-- returned 27 rows

-- ex 6
SELECT * FROM employees WHERE department_id NOT IN (1, 4, 8, 10) ORDER BY salary ASC;
-- returned 26 rows

-- ex 7 employees first name ending s
SELECT * FROM employees WHERE first_name LIKE '%s' ORDER BY first_name;
-- returned 2 rows

-- ex 8 name with 4th letter a 'g'
SELECT * FROM employees WHERE last_name LIKE '___g%';
-- returned 2 rows 

