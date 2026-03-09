create table salary_info(
id int not null auto_increment primary key,
amount decimal(10,2)
)

alter table salary_info
add column employee_name varchar(100)

insert into salary_info (employee_name,amount)values('halim',5000),
('shamim',6000),
('rahim',7000)

update salary_info
set amount=8000
where id=2
delete from salary_info
where id=3
drop table salary_info

select * from departments where departmentname='Civil Engineering'

select * from studentpersonal
order by studentid asc

select * from studentacademic
group by departmentcode









