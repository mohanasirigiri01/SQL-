/*
=========================================================
File: 01_Beginner_Select_Statement.sql
Database: Company_Analytics
Topic: SELECT Statement
Level: Beginner
Author: Mohana Priyanka Sirigiri

Description:
This file covers the basics of the SELECT statement,
including selecting all columns, specific columns,
DISTINCT, aliases, and simple expressions.
=========================================================
*/

USE Company_Analytics;

-- 1. Display all records from employee_details

SELECT *
FROM employee_details;

-- 2. Display all records from employee_salary

SELECT *
FROM employee_salary;


-- 3. Display specific columns

SELECT first_name,
       last_name
FROM employee_details;

-- 4. Display employee names and age

SELECT first_name,
       last_name,
       age
FROM employee_details;

-- 5. Display occupation and salary

SELECT occupation,
       salary
FROM employee_salary;

-- 6. Rename columns using AS

SELECT first_name AS First_Name,
       last_name AS Last_Name
FROM employee_details;

-- 7. Rename salary column

SELECT salary AS Annual_Salary
FROM employee_salary;

-- 8. Display full employee name

SELECT first_name,
last_name,
CONCAT(first_name,' ',last_name) AS Full_Name
FROM employee_details;

-- 9. Display unique occupations

SELECT DISTINCT occupation
FROM employee_salary;

-- 10. Display unique department IDs

SELECT DISTINCT dept_id
FROM employee_salary;

-- 11. Display unique genders

SELECT DISTINCT gender
FROM employee_details;

-- 12. Arithmetic operation
-- Increase salary by 5000

SELECT first_name,
       salary,
       salary + 5000 AS Updated_Salary
FROM employee_salary;

-- 13. Calculate monthly salary

SELECT first_name,
       salary,
       salary / 12 AS Monthly_Salary
FROM employee_salary;

-- 14. Display age after 5 years

SELECT first_name,
       age,
       age + 5 AS Age_After_5_Years
FROM employee_details;

-- 15. Display birth year

SELECT first_name,
       YEAR(birth_date) AS Birth_Year
FROM employee_details;

-- 16. Display current date

SELECT CURDATE();

-- 17. Display current time

SELECT CURTIME();

-- 18. Display current timestamp

SELECT NOW();

