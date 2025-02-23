select *
from employee_demographics;

-- Group by
SELECT gender
from employee_demographics
group by gender
;

-- aggregate function
select gender, avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender;

-- order by
SELECT *
from employee_demographics
order by first_name
;

select *
from employee_demographics
order by gender,age DESC 
;

select *
from employee_demographics
order by 5 ,4 
;