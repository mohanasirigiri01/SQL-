/*
=========================================================
File: 02_Beginner_Where_Clause.sql
Database: Company_Analytics
Topic: WHERE Clause
Level: Beginner
Author: Mohana Priyanka Sirigiri

Description:
This file demonstrates how to filter data using the
WHERE clause with different operators and conditions.
=========================================================
*/

USE Company_Analytics;

-- 1. Display all employees

SELECT *
FROM employee_details;

-- 2. Employees older than 30

SELECT *
FROM employee_details
WHERE age > 30;


-- 3. Employees younger than 30

SELECT *
FROM employee_details
WHERE age < 30;

-- 4. Employees aged 30 or above

SELECT *
FROM employee_details
WHERE age >= 30;

-- 5. Employees aged 30 or below

SELECT *
FROM employee_details
WHERE age <= 30;

-- 6. Female employees

SELECT *
FROM employee_details
WHERE gender = 'Female';

-- 7. Male employees

SELECT *
FROM employee_details
WHERE gender = 'Male';

-- 8. Employees with salary greater than 70000

SELECT *
FROM employee_salary
WHERE salary > 70000;

-- 9. Employees with salary less than 60000

SELECT *
FROM employee_salary
WHERE salary < 60000;

-- 10. Employees earning exactly 62000

SELECT *
FROM employee_salary
WHERE salary = 62000;


-- 11. Employees NOT earning 62000

SELECT *
FROM employee_salary
WHERE salary <> 62000;

-- 12. Employees aged between 30 and 35
SELECT *
FROM employee_details
WHERE age BETWEEN 30 AND 35;

-- 13. Employees in Department 1

SELECT *
FROM employee_salary
WHERE dept_id = 1;

-- 14. Employees in Department 1 or 2

SELECT *
FROM employee_salary
WHERE dept_id IN (1,2);

-- 15. Employees whose first name starts with 'A'

SELECT *
FROM employee_details
WHERE first_name LIKE 'A%';

-- 16. Employees whose first name ends with 'a'

SELECT *
FROM employee_details
WHERE first_name LIKE '%a';

-- 17. Employees whose first name contains 'ra'

SELECT *
FROM employee_details
WHERE first_name LIKE '%ra%';

-- 18. Employees born after 1995

SELECT *
FROM employee_details
WHERE birth_date > '1995-01-01';

-- 19. Male employees older than 30

SELECT *
FROM employee_details
WHERE gender = 'Male'
AND age > 30;

-- 20. Female employees younger than 30

SELECT *
FROM employee_details
WHERE gender = 'Female'
AND age < 30;

-- 21. Employees earning above 80000
-- OR in Department 3

SELECT *
FROM employee_salary
WHERE salary > 80000
OR dept_id = 3;

-- 22. Employees NOT in Department 1

SELECT *
FROM employee_salary
WHERE dept_id <> 1;

-- 23. Employees with salary between
-- 60000 and 90000

SELECT *
FROM employee_salary
WHERE salary BETWEEN 60000 AND 90000;

-- 24. Employees with NULL department

SELECT *
FROM employee_salary
WHERE dept_id IS NULL;


-- 25. Employees with assigned department

SELECT *
FROM employee_salary
WHERE dept_id IS NOT NULL;

