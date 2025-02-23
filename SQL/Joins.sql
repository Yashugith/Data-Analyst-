-- join
-- Inner join
select *
from employee_demographics;

select *
from employee_salary;

select *
from employee_demographics
join employee_salary
on  employee_demographics.employee_id=employee_salary.employee_id
;

select *
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id=sal.employee_id
;

select dem.employee_id,age ,occupation
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id=sal.employee_id
;

-- outer join
-- left outer join

select *
from employee_demographics as dem
left outer join employee_salary as sal
on dem.employee_id=sal.employee_id
;

-- right outer join
select *
from employee_demographics as dem
right outer join employee_salary as sal
on dem.employee_id=sal.employee_id
;

-- self join
select *
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id + 1 = emp2.employee_id
; 

-- multiple tables

select *
from parks_departments;

select *
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id=sal.employee_id
inner join parks_departments as pd
on sal.dept_id=pd.department_id
;