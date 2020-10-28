# We can check for a value in a column
SELECT column_name, column2
FROM table_name
WHERE column_name = 'value';

# We can check for a range of values in a column
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

# We can check for a string appearing within a column
SELECT column_name
FROM table_name
WHERE column_name LIKE '%value%';
# WHERE column_name LIKE '%value'; -- ends with
# WHERE column_name LIKE 'value%'; -- starts with

# We can use other comparisons
SELECT column_name
FROM table_name
WHERE column_name > value1;
# WHERE column_name < value1;
# WHERE column_name >= value1;
# WHERE column_name <= value1;
# WHERE column_name != value1;

# We can check for NULL values
SELECT column_name
FROM table_name
WHERE column_name IS NULL;
# WHERE column_name IS NOT NULL;

# We can check for a set of values
SELECT column_name
FROM table_name
WHERE column_name IN ('value1','value2','value3');

# We can chain criteria w/ AND and OR
SELECT column_name
FROM table_name
WHERE column_name1 = 'value1'
AND column_name2 > value2;
# OR col3 != val3;
