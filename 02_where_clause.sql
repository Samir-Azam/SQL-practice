-- Where clause

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE age >= 29; 


SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Male' AND age > 30; 

-- LIKE is used as an operator if you want to filter out records that looks like some sample they are not exact match of them 
-- Used with _  - exact number of underscore is required to match the value and % - every value can be considered

-- first_name should start with a and must have 4 characters including a and three underscores.
SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'a___';

-- first_name should have a a in it. 
SELECT first_name, salary 
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE '%a%';

-- first character of first_name should be a 
SELECT first_name, salary 
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'a%';

-- last character of first_name should be a 
SELECT first_name, salary 
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE '%a';