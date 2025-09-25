# Having clause -Before moving to having clause lets recall where clause
--  where clause is used to filter records before grouping as it filters line by line
--  whereas having is used to filter the record after grouping

SELECT gender, avg(age)
FROM employee_demographics
GROUP BY gender;

-- So if we want to filter out the group having avg age greater than 40 then we have to use having here instead of where since we are 
-- filtering after grouping

SELECT gender, avg(age)
FROM employee_demographics
GROUP BY gender
HAVING avg(age)>40;

-- Using where and having clause together
-- where - row level filtering 
-- having = filtering on the basis of aggregate funtions

SELECT occupation, avg(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING avg(salary)>80000
;

