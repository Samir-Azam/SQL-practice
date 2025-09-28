# Case Statement 

SELECT first_name, last_name, age,
CASE
	WHEN age<30 THEN 'YOUNG'
    WHEN age BETWEEN 30 and 50 THEN 'Old'
    WHEN age>50  THEN 'Super Old'
    ELSE 'Lay him/her off'
END as label
FROM employee_demographics;



-- Suppose our company is deciding for salary hike and giving some bonus to our employees
-- if salary<50000 then 5% hike
-- if salary>=50000 then 8% hike
-- if employee_department is finance 10% bonus should be given


SELECT first_name, last_name, salary, department_name,
CASE 
	WHEN department_name = 'Finance' THEN (salary*0.10)
    ELSE 0
END as bonus,
CASE
	WHEN salary<50000 THEN (salary*1.05)
    WHEN salary>=50000 THEN (salary*1.08)
END AS new_salary
FROM employee_salary as sal
LEFT JOIN parks_departments as dept
	ON sal.dept_id = dept.department_id