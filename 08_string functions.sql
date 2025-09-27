-- String Functions 

SELECT first_name, LENGTH(first_name) as size
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT TRIM('   sky      ') as colors;
SELECT LTRIM('           sky') as colors;
SELECT RTRIM('sky            ') as colors;


SELECT first_name, LEFT(first_name, 4) as beginning,
RIGHT(first_name, 4) as ending,
birth_date,
SUBSTRING(birth_date, 6,2) as birth_month
FROM employee_demographics;


SELECT first_name,
REPLACE(first_name, 'a', 'b')
FROM employee_demographics;


SELECT LOCATE('x','Alexander');

SELECT first_name, last_name,
CONCAT(first_name,' ' ,last_name) as full_name
FROM employee_demographics;

