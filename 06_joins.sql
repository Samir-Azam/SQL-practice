
SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

-- Inner joins
SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id
;

SELECT sal.employee_id, gender, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;


-- Outer joins -> left join and right join

-- in right join everything on the right of the should be in result

SELECT *
FROM employee_demographics as dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- left join - all the entries in the left of the table should be there in result

SELECT *
FROM employee_demographics as dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- self join - used to join a table to itself

SELECT * 
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id+1 = emp2.employee_id
;


-- Joining multiple tables - we can join multiple tables using multiple join statement

SELECT *
FROM employee_demographics as dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments as pd
	ON sal.dept_id = pd.department_id
;
