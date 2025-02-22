-- where clause
SELECT value
FROM sys.sys_config
where value ='OFF';

-- operators
USE parks_and_recreation;
SELECT *
FROM employee_salary
WHERE salary >= '50000'
;

SELECT *
FROM parks_and_recreation.employee_demographics
where gender !='female'
;

-- logical operator
 SELECT gender,
 birth_date
 from parks_and_recreation.employee_demographics
 where birth_date >= '1980-11-11'
 or gender ='Female'
 ;
 
 -- pemdas
 SELECT *
 from parks_and_recreation.employee_demographics
 where (birth_date >= '1980-11-11' and age = 43) or age >=50
 ;
 
 -- like 
 -- % ,_
 select *
 from parks_and_recreation.employee_demographics
 where first_name like '%er%';
 
select *
from parks_and_recreation.employee_demographics
where first_name like 'a%';

 select *
 from parks_and_recreation.employee_demographics
 where first_name like '%er%';
 
  select *
 from parks_and_recreation.employee_demographics
 where first_name like 'A__%';
 
select *
from parks_and_recreation.employee_demographics
where last_name like '%er%';
 