/*
=========================================================
File: 07_Intermediate_Unions.sql
Database: Company_Analytics
Topic: UNION & UNION ALL
Level: Intermediate
Author: Mohana Priyanka Sirigiri

Description:
This file covers:
1. UNION
2. UNION ALL
3. Rules of UNION
=========================================================
*/

USE Company_Analytics;

-- =====================================================
-- UNION
-- Combines results from two or more SELECT statements.
-- Removes duplicate rows.
-- =====================================================
-- 1. Employee first names from both tables
SELECT first_name
FROM employee_details
UNION
SELECT first_name
FROM employee_salary;

-- 2. Employee IDs from both tables

SELECT employee_id
FROM employee_details
UNION
SELECT employee_id
FROM employee_salary;

-- 3. Employee first and last names

SELECT first_name, last_name
FROM employee_details
UNION
SELECT first_name, last_name
FROM employee_salary;

-- UNION ALL
-- Combines all rows including duplicates.

-- 4. Employee first names

SELECT first_name
FROM employee_details
UNION ALL
SELECT first_name
FROM employee_salary;

-- 5. Employee IDs

SELECT employee_id
FROM employee_details
UNION ALL
SELECT employee_id
FROM employee_salary;

-- UNION with WHERE

-- 6. Employees older than 30
-- UNION
-- Employees earning more than 80000

SELECT first_name,'old' as label
FROM employee_details
WHERE age > 30
UNION
SELECT first_name,'high salary' as label
FROM employee_salary
WHERE salary > 80000;

-- 7. UNION ALL example

SELECT first_name,'lady' as label
FROM employee_details
WHERE gender = 'Female'
UNION ALL
SELECT first_name,'high sal' as label
FROM employee_salary
WHERE salary >= 70000;

-- UNION with ORDER BY

-- 8. Display employee names alphabetically

SELECT first_name
FROM employee_details
UNION
SELECT first_name
FROM employee_salary
ORDER BY first_name;

-- Creating Labels using UNION

-- 9. Employees and Department Labels

SELECT
first_name,
'Employee Details' AS Source
FROM employee_details
UNION
SELECT
first_name,
'Employee Salary' AS Source
FROM employee_salary;

=========================================================
-- Rules of UNION
=========================================================

/*
1. Number of columns must be the same.

2. Data types should be compatible.

3. Column names come from the first SELECT statement.

4. ORDER BY should be written only once,
   after the final SELECT statement.

5. UNION removes duplicates.

6. UNION ALL keeps duplicates.
*/

=========================================================
-- Difference Between UNION and UNION ALL
=========================================================

/*

UNION
------
Removes duplicate rows
Slower
Performs duplicate check

UNION ALL
----------
Keeps duplicate rows
Faster
No duplicate check

*/
