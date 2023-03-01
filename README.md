# sql-challenge

### This project involves designing tables to hold data from six CSV files and importing them into a SQL database. The project is divided into three parts: data modeling, data engineering, and data analysis.

## Data Modeling
The first step is to inspect the CSV files and create an Entity Relationship Diagram (ERD) of the tables. A tool like QuickDBD can be used for this purpose.

## Data Engineering
The second step is to create a table schema for each of the six CSV files. The following requirements should be followed:

- Specify the data types, primary keys, foreign keys, and other constraints
- Verify that the primary key column is unique. If not, create a composite key
- Create the tables in the correct order to handle foreign keys
- Import each CSV file into its corresponding SQL table


## Data Analysis

- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for the employees who were hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Requirements

- Data Modeling (10 points)

- Entity Relationship Diagram is included or table schemas provided for all tables (10 points)
- Data Engineeing (70 points)

- All required columns are defined for each table (10 points)
- Columns are set to the correct data type (10 points)
- Primary Keys set for each table (10 points)
- Correctly references related tables (10 points)
- Tables are correctly related using Foreign Keys (10 points)
- Correctly uses NOT NULL condition on necessary columns (10 points)
- Accurately defines value length for columns (10 points)
- Data Analysis (20 points)

- List the employee number, last name, first name, sex, and salary of each employee (2 points)
- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
- List each employee in the Sales department, including their employee number, last name, and first name (2 points)
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
