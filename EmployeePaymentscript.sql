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