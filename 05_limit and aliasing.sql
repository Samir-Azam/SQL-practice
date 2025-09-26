# limit and aliasing

--  We can limit output entries
SELECT * 
FROM employee_demographics
LIMIT 5;

-- We can also select an entry using limit

SELECT * 
FROM employee_demographics
LIMIT 3,2;


--  aliasing means changing the name of column this can be done using as

SELECT gender, avg(age) as avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
