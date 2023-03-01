--1)List the employee number, last name, first name, sex, and salary of each employee.
 SELECT emp.emp_no,
 	emp.last_name,
	emp.first_name,
	emp.sex,
	s.salary
 
 FROM employees AS emp
 	LEFT JOIN salaries AS s
	ON (emp.emp_no = s.emp_no)
ORDER BY emp.emp_no;

--2)List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT emp.first_name, emp.last_name, emp.hire_date

FROM employees AS emp

WHERE EXTRACT(YEAR FROM emp.hire_date) = 1986;

--3)List the manager of each department along with their department number, department name, employee number, last name, and first name.

--PostgreSQL INNER JOIN
--First, specify columns from both tables that you want to select data in the SELECT clause.
--Second, specify the main table i.e., table A in the FROM clause.
--Third, specify the second table (table B ) in the INNER JOIN clause and provide a join condition after the ON keyword.

SELECT dept.dept_no,
       dept.dept_name,
       dept_mgr.emp_no,
       emp.last_name,
       emp.first_name
FROM departments AS dept
LEFT JOIN dept_manager AS dept_mgr
  ON dept.dept_no = dept_mgr.dept_no
INNER JOIN employees AS emp
  ON dept_mgr.emp_no = emp.emp_no;


--4)List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT dept_emp.dept_no,
       emp.emp_no,
       emp.last_name,
       emp.first_name,
       dept.dept_name
FROM dept_emp
INNER JOIN employees AS emp
  ON dept_emp.emp_no = emp.emp_no
INNER JOIN departments AS dept
  ON dept_emp.dept_no = dept.dept_no;
  
--5)List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT emp.first_name,
       emp.last_name,
       emp.sex
FROM employees AS emp
WHERE emp.first_name = 'Hercules' AND emp.last_name = 'B';

--6 List each employee in the Sales department, including their employee number, last name, and first name. "d007","Sales"

SELECT dept_emp.dept_no, 
		emp.emp_no, 
		emp.last_name, 
		emp.first_name
FROM dept_emp 
LEFT JOIN employees AS emp 
  ON dept_emp.emp_no = emp.emp_no
WHERE dept_emp.dept_no = 'd007';


--7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
--"d005","Development" "d007","Sales"

SELECT dept_emp.dept_no, 
		emp.emp_no, 
		emp.last_name, 
		emp.first_name
FROM dept_emp 
LEFT JOIN employees AS emp 
  ON dept_emp.emp_no = emp.emp_no
WHERE dept_emp.dept_no = 'd007, d005';


--8)List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name)AS Frequency

FROM employees AS emp

GROUP BY last_name

ORDER BY

COUNT(last_name) DESC;
		