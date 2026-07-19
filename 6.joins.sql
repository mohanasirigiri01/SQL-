/*
=========================================================
File: 06_Intermediate_Joins.sql
Database: Company_Analytics
Topic: SQL JOINS
Level: Intermediate
Author: Mohana Priyanka Sirigiri

Topics Covered
---------------
1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL OUTER JOIN
5. SELF JOIN
6. CROSS JOIN
=========================================================
*/

USE Company_Analytics;
-- INNER JOIN
-- Returns only matching rows

SELECT *
FROM employee_details ed
INNER JOIN employee_salary es
ON ed.employee_id = es.employee_id;

-- Employee Name and Salary

SELECT
ed.employee_id,
ed.first_name,
ed.last_name,
es.occupation,
es.salary
FROM employee_details ed
INNER JOIN employee_salary es
ON ed.employee_id = es.employee_id;

-- Employee with Department Name

SELECT
ed.first_name,
es.occupation,
es.salary,
cd.department_name
FROM employee_details ed
INNER JOIN employee_salary es
ON ed.employee_id = es.employee_id
INNER JOIN company_departments cd
ON es.dept_id = cd.department_id;

-- LEFT JOIN

SELECT *
FROM employee_details ed
LEFT JOIN employee_salary es
ON ed.employee_id = es.employee_id;

SELECT
ed.first_name,
es.salary
FROM employee_details ed
LEFT JOIN employee_salary es
ON ed.employee_id = es.employee_id;

SELECT
ed.first_name,
cd.department_name,
es.salary
FROM employee_details ed
LEFT JOIN employee_salary es
ON ed.employee_id = es.employee_id
LEFT JOIN company_departments cd
ON es.dept_id = cd.department_id;
-- RIGHT JOIN

SELECT *
FROM employee_details ed
RIGHT JOIN employee_salary es
ON ed.employee_id = es.employee_id;

SELECT
es.first_name,
es.salary,
cd.department_name
FROM company_departments cd
RIGHT JOIN employee_salary es
ON cd.department_id = es.dept_id;

-- FULL OUTER JOIN

/*
MySQL doesn't support FULL OUTER JOIN directly.

Use UNION.
*/

SELECT *
FROM employee_details ed
LEFT JOIN employee_salary es
ON ed.employee_id = es.employee_id

UNION

SELECT *
FROM employee_details ed
RIGHT JOIN employee_salary es
ON ed.employee_id = es.employee_id;

-- SELF JOIN

/*
Example:
Employee mentors another employee
*/

SELECT
e1.employee_id,
e1.first_name,
e2.first_name AS Mentor
FROM employee_details e1
JOIN employee_details e2
ON e1.employee_id + 1 = e2.employee_id;

-- CROSS JOIN

SELECT *
FROM employee_details
CROSS JOIN company_departments;


SELECT COUNT(*)
FROM employee_details
CROSS JOIN company_departments;


-- Q3 Find employees without department

SELECT
ed.first_name,
cd.department_name
FROM employee_details ed
LEFT JOIN employee_salary es
ON ed.employee_id = es.employee_id
LEFT JOIN company_departments cd
ON es.dept_id = cd.department_id
WHERE cd.department_name IS NULL;

---------------------------------------------------

-- Q4 Find departments having employees

SELECT DISTINCT
cd.department_name
FROM company_departments cd
JOIN employee_salary es
ON cd.department_id = es.dept_id;

---------------------------------------------------

-- Q5 Count employees in every department

SELECT
cd.department_name,
COUNT(es.employee_id) AS Total_Employees
FROM company_departments cd
LEFT JOIN employee_salary es
ON cd.department_id = es.dept_id
GROUP BY cd.department_name;


/*

INNER JOIN
------------
Matching rows only

LEFT JOIN
-----------
All rows from Left table
+
Matching rows from Right

RIGHT JOIN
------------
All rows from Right table
+
Matching rows from Left

FULL OUTER JOIN
----------------
All rows from both tables

SELF JOIN
-----------
Table joins itself

CROSS JOIN
------------
Every row joins with every row

*/
