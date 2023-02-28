--List the employee number, last name, first name, sex, and salary of each employee.
 SELECT emp.emp_no,
 	emp.last_name,
	emp.first_name,
	emp.sex,
	s.salary
 
 FROM employees AS emp
 	LEFT JOIN salaries AS s
	ON (emp.emp_no = s.emp_no)
ORDER BY emp.emp_no;

