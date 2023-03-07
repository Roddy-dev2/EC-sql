-- Exercise01: Determine the number of employees in the Sales department. Also create a proper header that shows the information appropriately.

SELECT COUNT(e.employee_id) as 'total employees in Sales'
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = "Sales";

-- count was 6

-- Exercise02: Determine the number of employing working in each of the respective departments.

SELECT COUNT(e.employee_id) as 'total employees in dept',
        d.department_name
FROM departments d
INNER JOIN employees e ON e.department_id = d.department_id
GROUP BY e.department_id;
-- returned 11 rows with counts 

-- Exercise03: Determine the number of employees each manager will manage from the employees table.
SELECT COUNT(e.employee_id) as 'total employees per manager',
        m.employee_id,
        m.first_name,
        m.last_name
FROM employees e 
INNER JOIN employees m ON m.employee_id = e.manager_id
GROUP BY e.manager_id; 
-- returned 10 rows with counts


-- Exercise04: Determine who (if anyone) has two children from the dependents table.
SELECT COUNT(d.employee_id) as totalDependents,
        d.dependent_id,
        e.first_name,
        e.last_name
FROM dependents AS d INNER JOIN employees AS e
ON d.employee_id = e.employee_id
GROUP BY d.dependent_id, e.first_name, e.last_name
HAVING totalDependents > 1;
-- this returns 0 rows and if you check by having totalDependents > 0 it works




-- Exercise05: Determine the amount of salary per department. Give a breakdown using only the department_id’s in the output along with the salary amounts.
SELECT SUM(e.salary) as totalSalaryPerDept,
        d.department_id,
        d.department_name
FROM departments AS d INNER JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_id;
-- returned 11 rows
 

-- Exercise06: Determine the average of the max salary inside of the jobs table. Round to two decimal places.

SELECT FORMAT(AVG(max_salary),2) as 'Avg Max Salary'
FROM jobs;
-- returns 1 row with 2 decimals places in result




