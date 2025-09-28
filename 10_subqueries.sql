-- Subqueries is a query inside another query

SELECT *
FROM employee_demographics
WHERE employee_id IN 
(
            SELECT employee_id
            FROM employee_salary
            WHERE dept_id = 1
		
);

SELECT first_name, last_name, salary,
(SELECT AVG(salary) FROM employee_salary) as average_salary
FROM employee_salary;

SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT  AVG(`MIN(age)`)
FROM (SELECT gender, AVG(age), MIN(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS Tablu
;