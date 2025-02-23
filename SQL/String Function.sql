-- string function 
-- length

select first_name, length(first_name)
from employee_demographics
order by 2
;

-- upper
select first_name, upper(first_name)
from employee_demographics
;

-- trim

select first_name,
left(first_name,3),
right(last_name, 2),
substring(first_name,3,2)
from employee_demographics
;

-- replace
select first_name, 
replace(first_name,'a','e')
from employee_demographics
;

-- locate
select first_name,
locate('an', first_name)
from employee_demographics
;

-- concatination
select first_name,last_name,
concat(first_name, last_name)
from employee_demographics
;


