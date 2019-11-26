SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees 
JOIN salaries 
ON (salaries.emp_no = employees.emp_no);


SELECT *
FROM employees 
WHERE 
	hire_date >='01/01/1986'
	AND hire_date <='12/31/1986'
	
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, Dept_manager.from_date, Dept_manager.to_date
FROM departments
RIGHT JOIN dept_manager
ON (departments.dept_no = dept_manager.dept_no)
JOIN employees
ON (dept_manager.emp_no = employees.emp_no);

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)

SELECT *
FROM employees 
WHERE
	first_name = 'Hercules'
	and last_name like 'B%'
	


SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_emp.dept_no = 'd007';


SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp
ON (employees.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)


SELECT employees.last_name, COUNT(last_name) AS "last_name count"
FROM employees
GROUP BY last_name
ORDER BY "last_name count" DESC;