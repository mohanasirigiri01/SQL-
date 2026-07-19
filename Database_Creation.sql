DROP DATABASE IF EXISTS Company_Analytics;
CREATE DATABASE Company_Analytics;
USE Company_Analytics;

-- Employee Details
CREATE TABLE employee_details (
    employee_id INT NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    birth_date DATE,
    PRIMARY KEY (employee_id)
);

-- Employee Salary
CREATE TABLE employee_salary (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    occupation VARCHAR(60),
    salary INT,
    dept_id INT
);

INSERT INTO employee_details
(employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(1,'Aarav','Sharma',29,'Male','1997-02-18'),
(2,'Priya','Reddy',31,'Female','1995-08-11'),
(3,'Rahul','Patel',35,'Male','1991-04-07'),
(4,'Sneha','Verma',27,'Female','1999-10-12'),
(5,'Kiran','Kumar',40,'Male','1986-06-15'),
(6,'Anjali','Singh',33,'Female','1993-01-23'),
(7,'Vikram','Nair',37,'Male','1989-05-09'),
(8,'Meera','Joshi',30,'Female','1996-11-21'),
(9,'Rohan','Gupta',34,'Male','1992-09-16'),
(10,'Divya','Rao',28,'Female','1998-07-04'),
(11,'Arjun','Mishra',38,'Male','1988-12-30'),
(12,'Neha','Kapoor',32,'Female','1994-03-27'),
(13,'Aditya','Menon',24,'Male','2001-02-15');

INSERT INTO employee_salary
(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(1,'Aarav','Sharma','Data Analyst',62000,1),
(2,'Priya','Reddy','Business Analyst',68000,2),
(3,'Rahul','Patel','Senior Data Analyst',85000,1),
(4,'Sneha','Verma','HR Executive',45000,3),
(5,'Kiran','Kumar','Finance Manager',92000,4),
(6,'Anjali','Singh','Marketing Specialist',58000,5),
(7,'Vikram','Nair','Project Manager',98000,2),
(8,'Meera','Joshi','Software Engineer',76000,6),
(9,'Rohan','Gupta','Database Administrator',81000,1),
(10,'Divya','Rao','Quality Analyst',54000,3),
(11,'Arjun','Mishra','Operations Manager',90000,5),
(12,'Neha','Kapoor','Data Scientist',110000,1),
(13,'Aditya','Menon','Intern',25000,NULL);

-- Departments
CREATE TABLE company_departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (department_id)
);

INSERT INTO company_departments (department_name)
VALUES
('Analytics'),
('Project Management'),
('Human Resources'),
('Finance'),
('Marketing'),
('Technology');
