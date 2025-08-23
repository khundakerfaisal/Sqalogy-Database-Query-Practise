-- create database employee
-------------------------  Start Create table ---------------
/*create table employeeInfo(
employee_id INT auto_increment  primary key not null,
employee_name varchar(100),
joining_date DATE not null
)
*/
---------------------------  End Create table ---------------

-------------------------  Start Create Salary ---------------
/*create table salary(
salary_id int auto_increment primary key,
employee_id int not null,
salary decimal(10,2),
foreign key(employee_id) references employeeInfo(employee_id))
alter table employeeinfo add
department_name varchar(100)
*/

-------------------------  End  Create table ---------------

------------------------- start alter new row ---------------

/*alter table  department add departmentcode varchar(100);*/
------------------------- End alter new row ---------------

---------------------- [Start Adding foreing key relation ship] ------------------
-- alter table  department add employee_id int; 
-- alter table  department add constraint fk_employee  foreign key (employee_id) references employeeInfo(employee_id);
--------------------- [End Adding foreing key relation ship] -----------------------

--------------------- start rename table name --------------------------
-- rename table department to departmentinfo
---------------------- end rename table name ----------------------------

------------------------------ insert bulk table value --------------------
/*
insert into department(department_name,departmentcode)values
('Admin','A101'),
('Electrical Engineering', 'EE101'),
('Mechanical', 'ME101'),
('Civil', 'CE101');
*/
------------------------------ end bulk table value ------------------------

--------------------------  start table all data erase ---------------------------
-- truncate table departmentinfo
--------------------------  End table all data erase -----------------------------

----------------------------- start drop table data ----------------------------
-- drop table departmentinfo 
----------------------------- End drop table data ----------------------------

------ start employee payment having filter---------------

/*select e.employee_id,salary  from employeepayments e 
group by e.employee_id 
having count(*)>1
*/
------ End employee payment having filter---------------

---------- start using distinct for unique row ---------------------------
/*
SELECT DISTINCT e.employee_id, e.salary
FROM employeepayments e;
*/
---------- End using distinct for unique row ---------------------------

------------- start case statement for condition category-------------
/*
select employee_id,salary,
case
	when salary<=55000 then'low'
	when salary between 58000 and 70000 then 'medium'
	else 'high'
end as category
from employeepayments 
*/
------------- End case statement for condition category-------------

---------------------------- start left and right join example -----------------
/*select e.employee_id,e.employee_name,e.joining_date,d.departmentcode ,d.department_name,salary 
from employeeinfo e 
left join department d on d.employee_id =e.employee_id 
right join employeepayments p  on p.employee_id =e.employee_id 
*/
---------------------------- End left and right join example -----------------





