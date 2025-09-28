-- Window Function 


--  Basic Join Statement with group by
SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

-- Join with window function
-- IF we don't pass any parameter in OVER() then by default it is everything
SELECT gender, AVG(salary) OVER()
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender) as avg_salary
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;


SELECT dem.first_name, dem.last_name, gender, salary, SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) as rolling_total
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

SELECT dem.first_name,
dem.last_name, gender, 
salary, 
ROW_NUMBER() OVER() as 'sr.no'
FROM employee_demographics dem 
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

-- Suppose you want to rank the employees on the basis of their salary

SELECT dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender order by salary DESC) as row_num,
RANK() OVER(PARTITION BY gender order by salary DESC) as rank_num,
DENSE_RANK() OVER(PARTITION BY gender order by salary DESC) as dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;