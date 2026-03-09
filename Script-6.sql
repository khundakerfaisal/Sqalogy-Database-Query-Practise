create table EmployeeInfo(
employeeid int not null,
name varchar(100)not null,
primary key(employeeid))
alter table EmployeeInfo
add mobile varchar(100) not null

create table department(
departmentid int  not null,
departmentname varchar(100),
primary key(departmentid))

alter table department 
add departmentcode varchar(100)

ALTER TABLE department
ADD CONSTRAINT fk_employee
FOREIGN KEY (departmentid) REFERENCES EmployeeInfo(employeeid);

CREATE TABLE salary (
    paymentId INT PRIMARY KEY AUTO_INCREMENT,
    paymentRef VARCHAR(50),
    employeeid INT,
    salary DECIMAL(10,2),
    CONSTRAINT fk_payment_employee
        FOREIGN KEY (employeeid) REFERENCES EmployeeInfo(employeeid)
);

alter table salary 
change salary payments decimal(10,2)


insert into employeeinfo(employeeid,name,mobile)values (0001,'mustakim','0001555112')

update employeeinfo
set name='Raju'
where employeeinfo.employeeid =1

TRUNCATE TABLE employeeinfo;

delete from employeeinfo 
where employeeid =1

