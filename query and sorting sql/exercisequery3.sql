-- 3a make full name from first and last name columns
SELECT employee_id, CONCAT_WS(" " ,first_name, last_name) AS 'full name' FROM employees;

-- returned 40 rows
