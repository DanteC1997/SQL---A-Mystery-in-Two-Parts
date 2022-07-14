--Question 1

-- List the following details of each employee: employee number, last name, first name, sex, and salary.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
-- FROM salaries
-- INNER JOIN employees ON
-- employees.emp_no=salaries.emp_no;

--Question 2

-- List first name, last name, and hire date for employees who were hired in 1986.

-- SELECT employees.last_name, employees.first_name, employees.hire_date
-- FROM employees
-- where extract(year from hire_date) = 1986;


--Question 3: List the manager of each department with the following information:
--department number, department name, the manager's employee number, last name, first name.

-- SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
-- FROM departments
--   JOIN dept_manager
--   ON (departments.dept_no=dept_manager.dept_no)
--     JOIN employees
--     ON (dept_manager.emp_no = employees.emp_no);

--Question 4: List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- FROM departments
--   JOIN dept_emp
--   ON (departments.dept_no=dept_emp.dept_no)
--     JOIN employees
--     ON (dept_emp.emp_no=employees.emp_no);

-- -- Question 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- SELECT employees.last_name, employees.first_name, employees.sex
-- FROM employees
-- where(first_name='Hercules') and (last_name LIKE 'B%')



-- Question 6: List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- FROM employees
-- JOIN dept_emp
--  ON (employees.emp_no=dept_emp.emp_no)
-- JOIN departments
-- ON (departments.dept_no=dept_emp.dept_no)
-- WHERE departments.dept_name='Sales';

-- 7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

-- SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
-- FROM employees
--       JOIN dept_emp
--       ON (employees.emp_no=dept_emp.emp_no)
--        JOIN departments
--         ON (departments.dept_no=dept_emp.dept_no)
-- WHERE departments.dept_name='Sales' OR departments.dept_name='Development'

-- -- 8. In descending order, list the frequency count of employee last names, 
-- -- i.e., how many employees share each last name.

-- SELECT last_name,count(last_name) as frequency
-- from employees 
-- group by last_name
-- order by frequency  DESC;




