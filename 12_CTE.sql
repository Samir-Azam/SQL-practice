-- CTE - common table expression 

WITH CTE_EXAMPLE(Gender, Avg_age, Max_age, Min_age, Total_count) AS
(
SELECT gender,
AVG(age) as avg_age, 
MAX(age) as max_age, 
MIN(age) as min_age, 
COUNT(age) as total_count
FROM employee_demographics
GROUP BY gender
)
select *
FROM CTE_EXAMPLE;
SELECT * 
FROM employee_demographics
;

-- WE can write multiple CTE

WITH CTE_EXAMPLE1 AS 
(
SELECT employee_id, first_name,gender , age 
FROM employee_demographics
WHERE age<50
),
CTE_EXAMPLE2 AS
(
SELECT employee_id,salary 
FROM employee_salary
WHERE salary>50000
)
SELECT first_name, gender, age, salary 
FROM CTE_EXAMPLE1 as num1
JOIN CTE_EXAMPLE2 as num2
	ON num1.employee_id = num2.employee_id

