SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.parks_departments;

SELECT first_name,
age, 
gender,
age+10
# PEMDAS
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT salary
FROM parks_and_recreation.employee_salary;