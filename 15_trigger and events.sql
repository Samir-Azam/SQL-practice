-- Trigger and events

SELECT *
FROM employee_demographics;

-- WE are creating an trigger so that if any entry is being added on employee_salary table then it should also affect employee_demographics table

DELIMITER $$
CREATE TRIGGER inserting_entry
	AFTER INSERT ON employee_salary
    FOR EACH ROW 
    BEGIN 
    INSERT INTO employee_demographics(employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
    END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, "John", "Doe", "Ai Engineer",80000, NULL );


-- EVENT 
DELIMITER $$
CREATE EVENT remove_retired
ON SCHEDULE EVERY 100 SECOND
DO
	BEGIN
	DELETE
	FROM employee_demographics
	WHERE age>60;
	END $$


INSERT INTO employee_demographics
VALUES(14, "Jane", "Doe",65, "Female","1977-07-24")
