-- inner join
	-- select s.studentId,s.firstname,s.lastname,
	-- concat(firstname,'',lastname)as full_name,
	-- s2.departmentCode,s2.semester,s2.totalSemesterFees 
	-- from studentpersonal s 
	-- inner join studentacademic  s2 on s.studentId =s2.studentId

-- Left Join
	-- select s.studentId,s.firstname,s.lastname,
	-- concat(firstname,'',lastname)as full_name,
	-- s2.departmentCode,s2.semester,s2.totalSemesterFees 
	-- from studentpersonal s 
	-- left join studentacademic  s2 on s.studentId =s2.studentId

-- Right Join
	-- select s.studentId,s.firstname,s.lastname,
	-- concat(firstname,'',lastname)as full_name,
	-- s2.departmentCode,s2.semester,s2.totalSemesterFees 
	-- from studentpersonal s 
	-- right join studentacademic  s2 on s.studentId =s2.studentId



select s.studentId,s.firstname,s.lastname,
concat(firstname,'',lastname)as full_name,
s2.departmentCode 
from studentpersonal s 
cross join studentacademic  s2 

select *from studentpersonal sp  
select *from studentacademic sa 







create table teacher_info(
id INT NOT NULL AUTO_INCREMENT PRIMARY key,
department_code varchar(100)
)

alter table teacher_info
add column university_id int,
add constraint fk_university
foreign key(university_id)
references university_name(university_id)


create table university_Dept(
id INT NOT NULL AUTO_INCREMENT PRIMARY key,
department_code varchar(100),
university_id INT,
FOREIGN KEY(university_id) references university_Name(university_id))





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

select sum(totalSemesterFees) from studentacademic
group by departmentCode 
having sum(totalSemesterFees)>2000


SELECT * FROM studentacademic s 
where totalSemesterFees between 1500 and 1600 


SELECT * FROM studentpersonal
WHERE studentpersonal.firstname LIKE '%a%';

select * from studentpersonal s 
where s.studentId  in (select s.studentId  from payment)

select * from studentacademic s 

select studentid,totalSemesterFees,
case
	when totalSemesterFees<1500 then 'low'
	when totalSemesterFees between 1600 and 1700 then 'medium'
	else 'high'
end as fees

from studentacademic 
select* from studentacademic

select * from studentpersonal s 






