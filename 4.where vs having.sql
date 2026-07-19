/*
=========================================================
File: 04_Beginner_Having_vs_Where.sql
Database: Company_Analytics
Topic: HAVING vs WHERE
Level: Beginner
Author: Mohana Priyanka Sirigiri

Description:
This file explains the difference between WHERE and
HAVING with practical examples.
=========================================================
*/

USE Company_Analytics;

-- WHERE Clause
-- Filters rows BEFORE grouping.

-- 1. Employees with salary greater than 70000

SELECT *
FROM employee_salary
WHERE salary > 70000;

-- 2. Female employees only

SELECT *
FROM employee_details
WHERE gender = 'Female';

-- 3. Employees in Department 1

SELECT *
FROM employee_salary
WHERE dept_id = 1;

-- 4. Employees whose age is above 30

SELECT *
FROM employee_details
WHERE age > 30;

-- 5. Employees earning between 60000 and 90000

SELECT *
FROM employee_salary
WHERE salary BETWEEN 60000 AND 90000;

-- HAVING Clause
-- Filters groups AFTER GROUP BY

-- 6. Departments having more than 2 employees

SELECT dept_id,
       COUNT(*) AS Total_Employees
FROM employee_salary
GROUP BY dept_id
HAVING COUNT(*) > 2;

-- 7. Departments with average salary above 75000

SELECT dept_id,
       AVG(salary) AS Average_Salary
FROM employee_salary
GROUP BY dept_id
HAVING AVG(salary) > 75000;

-- 8. Departments with total salary above 150000

SELECT dept_id,
       SUM(salary) AS Total_Salary
FROM employee_salary
GROUP BY dept_id
HAVING SUM(salary) > 150000;

-- 9. Departments where maximum salary exceeds 90000

SELECT dept_id,
       MAX(salary) AS Highest_Salary
FROM employee_salary
GROUP BY dept_id
HAVING MAX(salary) > 90000;

-- 10. Departments where minimum salary is below 50000

SELECT dept_id,
       MIN(salary) AS Lowest_Salary
FROM employee_salary
GROUP BY dept_id
HAVING MIN(salary) < 50000;

-- WHERE + GROUP BY + HAVING

-- 11. Employees earning above 50000,
-- grouped by department

SELECT dept_id,
       COUNT(*) AS Employee_Count
FROM employee_salary
WHERE salary > 50000
GROUP BY dept_id;

-- 12. Employees earning above 50000,
-- departments having more than one employee
---------------------------------------------------------

SELECT dept_id,
       COUNT(*) AS Employee_Count
FROM employee_salary
WHERE salary > 50000
GROUP BY dept_id
HAVING COUNT(*) > 1;

-- 13. Average salary by department
-- only for salaries above 60000

SELECT dept_id,
       AVG(salary) AS Average_Salary
FROM employee_salary
WHERE salary > 60000
GROUP BY dept_id
HAVING AVG(salary) > 70000;

-- 14. Total salary by department

SELECT dept_id,
       SUM(salary) AS Total_Salary
FROM employee_salary
WHERE salary >= 50000
GROUP BY dept_id
HAVING Total_Salary > 100000;

-- 15. Employee count by department

SELECT dept_id,
       COUNT(*) AS Employee_Count
FROM employee_salary
WHERE dept_id IS NOT NULL
GROUP BY dept_id
HAVING COUNT(*) >= 1;

-- WHERE vs HAVING

/*
WHERE
------
1. Filters individual rows.
2. Executed before GROUP BY.
3. Cannot use aggregate functions directly.
4. Faster because fewer rows are grouped.

HAVING
-------
1. Filters grouped results.
2. Executed after GROUP BY.
3. Uses aggregate functions.
4. Used only with GROUP BY in most cases.
*/

-- SQL Execution Order

/*
1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY
7. LIMIT
*/





