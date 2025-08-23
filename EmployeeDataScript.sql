create database employee

create table employeeInfo(
employee_id INT auto_increment  primary key not null,
employee_name varchar(100),
joining_date DATE not null
)

create table salary(
salary_id int auto_increment primary key,
employee_id int not null,
salary decimal(10,2),
foreign key(employee_id) references employeeInfo(employee_id))
alter table employeeinfo add
department_name varchar(100)

rename table salary to employeePayments

create table department(
id int auto_increment primary key,
department_name varchar(100))

alter table  department add departmentcode varchar(100);

---------------------- [Start Adding foreing key relation ship] ------------------
-- alter table  department add employee_id int; 
-- alter table  department add constraint fk_employee  foreign key (employee_id) references employeeInfo(employee_id);
--------------------- [End Adding foreing key relation ship] -----------------------

--------------------- start rename table name --------------------------
-- rename table department to departmentinfo
---------------------- end rename table name ----------------------------

------------------------------ insert bulk table value --------------------
/*
insert into departmentinfo(department_name,departmentcode)values
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

