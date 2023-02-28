CREATE TABLE titles(
	--title_id,title
	title_id VARCHAR  NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);


CREATE TABLE employees(
	--emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date
	 emp_no INT  NOT NULL,
	 emp_title_id VARCHAR NOT NULL,
	 birth_date Date NOT NULL,
	 first_name VARCHAR NOT NULL,
	 last_name VARCHar NOT NULL,
	 sex VARCHAR NOT NULL,
	 hire_date DATE NOT NULL,
	 PRIMARY KEY (emp_no),
	 FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);



CREATE TABLE departments(
	--"dept_no","dept_name"
	 dept_no VARCHAR NOT NULL,
	 dept_name VARCHAR NOT NULL,
	 PRIMARY KEY (dept_no)
);	
	

CREATE TABLE dept_manager(
	--dept_no,emp_no
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);	


CREATE TABLE dept_emp(
--emp_no,dept_no
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (dept_no, emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);



CREATE TABLE salaries(
	--emp_no,salary
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);