/*
=========================================================
File: 03_Beginner_Group_By_Order_By.sql
Database: Company_Analytics
Topic: GROUP BY, ORDER BY & Aggregate Functions
Level: Beginner
Author: Mohana Priyanka Sirigiri

Description:
This file covers:
1. ORDER BY
2. ASC & DESC
3. Aggregate Functions
   - COUNT()
   - SUM()
   - AVG()
   - MIN()
   - MAX()
4. GROUP BY
=========================================================
*/

USE Company_Analytics;

-- ORDER BY
-- 1. Display all employees
SELECT *
FROM employee_salary;

-- 2. Sort salary in ascending order

SELECT *
FROM employee_salary
ORDER BY salary;

-- 3. Sort salary in descending order

SELECT *
FROM employee_salary
ORDER BY salary DESC;

-- 4. Sort employees by first name

SELECT *
FROM employee_details
ORDER BY first_name;

-- 5. Sort employees by age

SELECT *
FROM employee_details
ORDER BY age;

-- 6. Sort employees by age (highest first)

SELECT *
FROM employee_details
ORDER BY age DESC;

-- 7. Sort by department then salary

SELECT *
FROM employee_salary
ORDER BY dept_id, salary DESC;

-- 8. Sort by gender then age

SELECT *
FROM employee_details
ORDER BY gender, age DESC;

-- Aggregate Functions
-- 9. Total number of employees

SELECT COUNT(*) AS Total_Employees
FROM employee_details;

-- 10. Count employees with department

SELECT COUNT(dept_id) AS Employees_With_Department
FROM employee_salary;

-- 11. Total salary payout

SELECT SUM(salary) AS Total_Salary
FROM employee_salary;

-- 12. Average salary

SELECT AVG(salary) AS Average_Salary
FROM employee_salary;

-- 13. Highest salary

SELECT MAX(salary) AS Highest_Salary
FROM employee_salary;

-- 14. Lowest salary

SELECT MIN(salary) AS Lowest_Salary
FROM employee_salary;

-- 15. Highest age

SELECT MAX(age) AS Oldest_Employee
FROM employee_details;

-- 16. Youngest age

SELECT MIN(age) AS Youngest_Employee
FROM employee_details;

-- GROUP BY
-- 17. Count employees by gender

SELECT gender,
       COUNT(*) AS Total
FROM employee_details
GROUP BY gender;

-- 18. Average age by gender

SELECT gender,
       AVG(age) AS Average_Age
FROM employee_details
GROUP BY gender;

-- 19. Number of employees in each department

SELECT dept_id,
       COUNT(*) AS Employee_Count
FROM employee_salary
GROUP BY dept_id;

-- 20. Average salary by department

SELECT dept_id,
       AVG(salary) AS Average_Salary
FROM employee_salary
GROUP BY dept_id;

-- 21. Highest salary by department

SELECT dept_id,
       MAX(salary) AS Highest_Salary
FROM employee_salary
GROUP BY dept_id;

-- 22. Lowest salary by department

SELECT dept_id,
       MIN(salary) AS Lowest_Salary
FROM employee_salary
GROUP BY dept_id;

-- 23. Total salary by department

SELECT dept_id,
       SUM(salary) AS Total_Salary
FROM employee_salary
GROUP BY dept_id;

-- 24. Employee count and average salary

SELECT dept_id,
       COUNT(*) AS Total_Employees,
       AVG(salary) AS Average_Salary
FROM employee_salary
GROUP BY dept_id;

-- 25. Group by gender and age

SELECT gender,
       age,
       COUNT(*) AS Total
FROM employee_details
GROUP BY gender, age
ORDER BY gender, age;


