select * from employees limit 100

--List the employee number, last name, first name, sex, and salary of each employe.
select employees.emp_no as "Employee Number", employees.last_name as "Last Name", employees.first_name as "First Name", employees.sex as "Sex", salaries.salary as "Salary"
from employees
join salaries
on (employees.emp_no=salaries.emp_no) limit 100;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.emp_no as "Manager Employee Number", departments.dept_no as "Dept Number", departments.dept_name as "Dept Name", employees.first_name as "First Name", employees.last_name as "Last Name"
FROM dept_manager
  JOIN departments
  ON (dept_manager.dept_no = departments.dept_no)
	JOIN employees
		ON (dept_manager.emp_no=employees.emp_no);

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select employees.emp_no as "Employee Number", departments.dept_no as "Department Number", departments.dept_name as "Department Name", employees.last_name as "Last Name", employees.first_name as "First Name"
from departments
	join dept_manager
	on (departments.dept_no=dept_manager.dept_no)
		join employees
		on (dept_manager.emp_no=employees.emp_no);

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employees.first_name as "First Name", employees.last_name as "Last Name", employees.sex as "Sex"
FROM employees
WHERE first_name IN ('Hercules') AND last_name like ('B%');

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dept_emp.emp_no as "Employee Number", employees.last_name as "Last Name", employees.first_name as "First Name", departments.dept_name as "Department Name"
FROM dept_emp
	JOIN employees on employees.emp_no = dept_emp.emp_no
		JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no as "Employee Number", employees.last_name as "Last Name", employees.first_name as "First Name", departments.dept_name as "Department Name"
FROM dept_emp
	JOIN employees on employees.emp_no = dept_emp.emp_no
		JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name= 'Development'
limit 500;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT employees.last_name as "Last Name", COUNT (employees.last_name) as "Last Name Count"
FROM employees
GROUP BY employees.last_name
ORDER BY "Last Name Count" DESC;

--My own added bonues for fun: Counting employees per department
SELECT dept_emp.dept_no as "Department Number", COUNT(dept_emp.dept_no) as "Employee Count Per Department"
FROM dept_emp
GROUP BY dept_emp.dept_no
ORDER BY "Employee Count Per Department" DESC;
