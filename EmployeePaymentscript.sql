create table teacherPayment(
Tnxid int not null auto_increment primary key,
name varchar(100),
amount decimal(10,2))

alter table teacherpayment 
add teacherId int not null

ALTER TABLE teacherpayment
ADD CONSTRAINT fk_teacherpayment_teacherId
FOREIGN KEY (teacherId)
REFERENCES teacheracademic (teacherId);

select * from teacherpayment t 
insert into teacherpayment (name,amount,teacherId)values('hamim',500.00,1),
('tamim',700.00,2),
('rahim',800.00,3),
('naim',600.00,1)


select t2.teacherId ,t2.name,t3.Tnxid ,t3.amount  from teacherpayment t3  
left join teacherinfo t2 on t2.teacherId =t3.teacherId 