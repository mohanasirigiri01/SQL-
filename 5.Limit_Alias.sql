/*
=========================================================
File: 05_Beginner_Limit_and_Aliasing.sql
Database: Company_Analytics
Topic: LIMIT, OFFSET & Aliasing
Level: Beginner
Author: Mohana Priyanka Sirigiri

Description:
This file covers:
1. LIMIT
2. OFFSET
3. Column Aliases
4. Table Aliases
=========================================================
*/

USE Company_Analytics;

-- =====================================================
-- LIMIT
-- Used to return a specified number of rows.
-- =====================================================

-- 1. Display first 5 employees

SELECT *
FROM employee_details
LIMIT 5;


-- 2. Display first 3 employees

SELECT *
FROM employee_salary
LIMIT 3;

-- 3. Display top 5 highest paid employees

SELECT *
FROM employee_salary
ORDER BY salary DESC
LIMIT 5;

-- 4. Display 3 lowest paid employees

SELECT *
FROM employee_salary
ORDER BY salary
LIMIT 3;

-- 5. Display 2 youngest employees

SELECT *
FROM employee_details
ORDER BY age
LIMIT 2;

-- 6. Display 4 oldest employees

SELECT *
FROM employee_details
ORDER BY age DESC
LIMIT 4;

-- OFFSET


-- 7. Skip first 3 employees

SELECT *
FROM employee_details
LIMIT 3 OFFSET 3;

-- 8. Display next 4 highest salaries
-- (Skip top 2)

SELECT *
FROM employee_salary
ORDER BY salary DESC
LIMIT 4 OFFSET 2;

-- 9. Skip first employee

SELECT *
FROM employee_salary
LIMIT 5 OFFSET 1;

-- COLUMN ALIAS

-- 10. Rename columns

SELECT
first_name AS First_Name,
last_name AS Last_Name,
age AS Employee_Age
FROM employee_details;

-- 11. Rename salary column

SELECT
first_name,
salary AS Annual_Salary
FROM employee_salary;

-- 12. Monthly salary

SELECT
first_name,
salary,
salary/12 AS Monthly_Salary
FROM employee_salary;

-- 13. Bonus (10%)

SELECT
first_name,
salary,
salary*0.10 AS Bonus
FROM employee_salary;

-- 14. Total salary after bonus

SELECT
first_name,
salary,
salary + salary*0.10 AS Total_Salary
FROM employee_salary;

-- TABLE ALIAS

-- 15. Alias employee_details table

SELECT
e.first_name,
e.last_name,
e.age
FROM employee_details AS e;

-- 16. Alias employee_salary table

SELECT
s.first_name,
s.salary
FROM employee_salary AS s;

-- 17. Second highest salary

SELECT *
FROM employee_salary
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

