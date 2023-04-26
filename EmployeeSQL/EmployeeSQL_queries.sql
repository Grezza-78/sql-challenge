-- -- Data Analyis

-- -- Question 1: List the employee number, last name, first name, sex, and salary of each employee.

-- SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- FROM employees e
--  INNER JOIN salaries s
--   ON(e.emp_no = s.emp_no)
--    ORDER BY s.salary DESC;

-- -- Question 2: List the first name, last name, and hire date for the employees who were hired in 1986.

-- SELECT e.first_name, e.last_name, e.hire_date
-- FROM employees e
--  WHERE e.hire_date < '1987-01-01' and e.hire_date > '1985-12-31'
--   ORDER by e.hire_date ASC;


-- -- Question 3: List the manager of each department along with their department number, department name, 
-- -- employee number, last name, and first name.

-- SELECT dm.dept_no,dp.dept_name, e.emp_no,e.last_name,e.first_name
-- FROM employees e 
--  INNER JOIN dept_manager dm ON (e.emp_no = dm.emp_no)
--   INNER JOIN departments dp ON (dm.dept_no = dp.dept_no); 


-- -- Question 4: List the department number for each employee along with that employee’s employee number, 
-- -- last name, first name, and department name.

-- SELECT dm.dept_no,e.emp_no,e.last_name,e.first_name,dp.dept_name
-- FROM employees e 
--  INNER JOIN dept_emp dm ON (e.emp_no = dm.emp_no)
--   INNER JOIN departments dp ON (dm.dept_no = dp.dept_no); 


-- -- Question 5: List the first name, last name, and sex of each employee whose first name is Hercules 
-- -- and whose last name begins with the letter B.

-- SELECT e.first_name, e.last_name,e.sex
-- FROM employees e
--  WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';


-- -- Question 6: List each employee in the Sales department, including their employee number, 
-- -- last name, and first name.

-- SELECT dp.dept_name,e.emp_no, e.last_name, e.first_name
-- FROM employees e 
--  INNER JOIN dept_emp dm ON (e.emp_no = dm.emp_no)
--   INNER JOIN departments dp ON (dm.dept_no = dp.dept_no)
--    WHERE dp.dept_name = 'Sales';


-- -- Question 7: List each employee in the Sales and Development departments, including 
-- -- their employee number, last name, first name, and department name.

-- SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
-- FROM employees e 
--  INNER JOIN dept_emp dm ON (e.emp_no = dm.emp_no)
--   INNER JOIN departments dp ON (dm.dept_no = dp.dept_no)
--    WHERE dp.dept_name = 'Sales' OR dp.dept_name = 'Development'
--     ORDER BY dp.dept_name ASC;


-- -- Question 8: List each employee in the Sales and Development departments, including 
-- -- their employee number, last name, first name, and department name.

-- SELECT e.last_name, COUNT(e.last_name) AS "Employee Last Name count"
-- FROM employees e 
--  GROUP BY e.last_name
--   ORDER BY "Employee Last Name count" DESC;
