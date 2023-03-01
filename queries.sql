-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.emp_no,emp.last_name,emp.first_name,emp.sex, sal.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE date_part('year',hire_date) = '1986';
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT e.first_name, m.dept_no, m.dept_name,e.emp_no, e.last_name
FROM employees e
LEFT JOIN managers m
ON e.emp_no = m.emp_no;
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dep.dept_no,emp.emp_no,emp.last_name,emp.first_name,d.dept_name
FROM employees emp
LEFT JOIN department_employees dep
ON e.emp_no = s.emp_no
LEFT JOIN departments d
ON dep.dept_no = d.dept_no;
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name == "Hercules" AND last_name LIKE "B%"; 
-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT emp_no, last_name, first_name
FROM employees 
LEFT JOIN department_employees as d
ON emp_no = d.emp_no
WHERE d.dept_no == "d007";
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.name
FROM employees emp 
LEFT JOIN departments_employees as dep
ON emp.emp_no = dep.emp_no
LEFT JOIN departments d
ON dep.dept_no = d.dept_no
WHERE d.dept_no == "d007" OR d.dept_no == "d005"  
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


