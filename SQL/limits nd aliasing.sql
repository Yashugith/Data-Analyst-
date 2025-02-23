-- limit 

select *
from employee_salary
order by first_name 
limit 2 , 1
;

-- aliasing

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having (avg_age) > 40

;
