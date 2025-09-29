-- Temprary Tables - Tables that are stored in memory and lasts untill we are within the session once we close the workbench then came back and it will be lost we have create it again

-- First way of creating a temp table

CREATE TEMPORARY TABLE temp_table
(
	first_name VARCHAR(50),
    last_name VARCHAR(50),
    college_name VARCHAR(100)
);



INSERT INTO temp_table
VALUES
("John","doe","John Doe College of Engineering"),
("Jane", "Doe", "Doe College of Science");

SELECT *
FROM temp_table;


--  2nd way of creating temp tables is by using existing tables

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary>=50000
ORDER BY salary ;

SELECT *
FROM salary_over_50k;