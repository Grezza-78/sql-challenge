-- -- -- Create Schemas for Challenge

-- DROP TABLE IF EXISTS salaries;
-- DROP TABLE IF EXISTS dept_emp;
-- DROP TABLE IF EXISTS dept_manager;
-- DROP TABLE IF EXISTS employees;
-- DROP TABLE IF EXISTS departments;
-- DROP TABLE IF EXISTS titles;

-- CREATE TABLE titles (
--     title_id varchar(10) PRIMARY KEY  NOT NULL,
--     title varchar(20) NOT NULL
-- 	);


-- ALTER DATABASE "EmployeeSQL" SET datestyle TO ISO, MDY;
-- CREATE TABLE employees (
--     emp_no int NOT NULL,
--     emp_title varchar(10) NOT NULL,
--     birth_date date NOT NULL,
--     first_name varchar(20) NOT NULL,
--     last_name varchar(20) NOT NULL,
-- 	sex varchar (2) NOT NULL,
-- 	hire_date date NOT NULL,
-- 	PRIMARY KEY (emp_no),
-- 	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
--     );

-- CREATE TABLE dept_manager (
--     dept_no varchar(10) NOT NULL,
-- 	emp_no int PRIMARY KEY NOT NULL,
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
--     );


-- CREATE TABLE dept_emp (
--     emp_no int NOT NULL,
--     dept_no varchar(10) NOT NULL,
-- 	PRIMARY KEY(emp_no,dept_no),
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
--     );


-- CREATE TABLE departments (
--     dept_no varchar(10) PRIMARY KEY NOT NULL,
--     dept_name varchar(40) NOT NULL
--     );


-- CREATE TABLE salaries (
--     emp_no int PRIMARY KEY NOT NULL,
--     salary int NOT NULL,
-- 	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
--     );
	



