select * from studentpersonal
SELECT * FROM studentpersonal
LIMIT 5;
SELECT DISTINCT religion FROM studentpersonal;

create table teacherInfo(
id int not null primary key,
name varchar(100))

alter table teacherinfo 
modify id INT NOT NULL auto_increment;

alter table teacherinfo 
add address varchar(50)

update teacherinfo t 
set name='Rahim'
where id=2

--Bulk Upload
INSERT INTO teacherinfo (id, name, address) VALUES (1, 'naim', 'Dhaka');
 (2, 'shamim', 'Dhaka');
 (3, 'tamim', 'Dhaka');
 (4, 'mahim', 'Dhaka');