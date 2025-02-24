create procedure large_salaries2()
select *
from employee_salary
where salary >= 50000;
select *
from employee_salary
where salary >= 10000;
call large_salaries2()

delimiter $$
create procedure large_salaries3()
begin
  select*
  from employee_salary
  where salary >= 50000;
  select *
  from employee_salary
  where salary >= 10000;
end $$
delimiter ;  

call large_salaries3();

delimiter $$


create procedure large_salaries4(employee_id int)
begin
  select*
  from employee_salary
  where salary >= 50000;
end $$
delimiter ; 






