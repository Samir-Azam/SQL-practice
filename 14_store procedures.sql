-- Store Procedures

CREATE PROCEDURE senior_employee() 
SELECT *
FROM employee_salary 
WHERE salary >= 50000;

CALL senior_employee();

-- If you want to write multiple queries inside a procedure then you can do it by changing the delimeter 
DELIMITER $$
CREATE PROCEDURE senior_employee2()
BEGIN 
	SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE occupation LIKE '%Director%';
END $$


DELIMITER $$
CREATE PROCEDURE senior_employee3()
BEGIN 
	SELECT *
    FROM employee_salary
    WHERE salary >= 50000;
    SELECT *
    FROM employee_salary
    WHERE salary >= 10000;
END $$

DELIMITER ;

CALL senior_employee2();
CALL senior_employee3();



-- We can aslo pass parameters to procedures

CREATE PROCEDURE get_employees(_id INT)
SELECT *
FROM employee_salary
WHERE employee_id = _id;

CALL get_employees(1);

