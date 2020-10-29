USE employees;

# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name
from employees
ORDER BY last_name DESC
LIMIT 10;

# employees born on Christmas and hired in the 90s LIMIT 5
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5;

# Update the query to find the tenth page of results
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;

# let LIMIT = # results per page
# let pageNumber = GIVEN
# let OFFSET = (pageNumber - 1) * LIMIT