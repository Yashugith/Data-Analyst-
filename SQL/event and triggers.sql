-- Triggers and Events

select *
from employee_demographics;

select *
from employee_salary;

delimiter $$
create trigger employee_insert
 after insert on employee_salary
 for each row
begin
    insert into employee_demographics (employee_id, first_name, last_name)
	values (new.employee, new.first_name, new.last_name);
end $$
delimiter ;

insert into employee_salary (employee_id, first_name, last_name, occupation, salary,dept_id)
value(13,'jean-ralphio','sap','enterpriner',1000000,null);

-- events

delimiter $$
create event delete_retirees
on schedule every 30 second
do
begin
 select *
 from employee_demographics
 where age >=60;
end $$
delimiter ;

show variables like 'event%' ;
