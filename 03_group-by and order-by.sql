-- While you are using group by the column that you are selecting should be either in group be or it should be wrapped within a aggregate function like sum , count , etc
 

SELECT  gender, AVG(age), count(first_name) AS total_employees
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT occupation, salary, count(*) as employees_count
FROM parks_and_recreation.employee_salary
GROUP BY occupation, salary;

-- Some common aggregate functions count, avg, min, max.

SELECT gender, MIN(age), MAX(age), AVG(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


-- Order By 
--  It will kind of sort the records on the basis of specified column name by default it orders in ASC 
SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age;

-- But we can order the records in descending order too using DESC
SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC;

-- using multiple columns for ordering
-- Note that with each column we can specify the order either ASC(by default) or DESC
SELECT * 
FROM parks_and_recreation.employee_demographics
ORDER BY gender, age DESC;