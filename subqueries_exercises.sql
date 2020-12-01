USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT emp_no, CONCAT(first_name, ' ', last_name) AS name
FROM employees
    WHERE hire_date = (SELECT hire_date
                        FROM employees
                        WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT title, COUNT(title)
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name = 'Aamod')
GROUP BY title;

# Find all the current department managers that are female.
SELECT emp_no, CONCAT(first_name, ' ', last_name) AS name, gender
FROM employees
WHERE emp_no IN (SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01')
 AND gender = 'F';