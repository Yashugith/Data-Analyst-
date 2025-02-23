-- union 
 -- use case : identify that someone who is older who are going to want to try to push out and find people who are also highly paid
 
 select first_name, last_name, 'Old Men' as Label 
 from employee_demographics 
 where age > 40
 union
 select first_name, last_name, 'Old lady' as Label
 from employee_demographics
 where age > 50
 union 
 select first_name,last_name, 'high paid emp' as Label
 from employee_salary
 where salary > 70000
 order by first_name,last_name
 ;
