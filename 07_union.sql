-- UNION is used to combine rows returned by two SELECT statements.
-- The tables can be same or different, but:
-- 1) The number of columns must match
-- 2) The data types of corresponding columns must be compatible

-- By default, UNION removes duplicates (DISTINCT behavior)

SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name 
FROM employee_salary
;
-- Use UNION ALL to see the duplicates aslo

SELECT first_name, last_name, employee_id
FROM employee_demographics
UNION ALL
SELECT first_name, last_name, employee_id
FROM employee_salary
;

-- Real-life example:
-- A company wants to identify employees to lay off due to budget cuts:
-- 1) Older employees (age > 45)
-- 2) Highly paid employees (salary > 60000)



SELECT first_name,last_name, 'Old' as Label
FROM employee_demographics 
WHERE age>45
UNION
SELECT first_name, last_name, 'Highly Paid Employee' as Label
FROM employee_salary
WHERE salary>60000
ORDER BY label DESC, first_name
;