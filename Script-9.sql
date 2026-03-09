create table teacherinfo(
id int primary key,
name varchar(100)
)
alter table teacherinfo add department varchar(100)
 rename table teacherinfo to teaacherinformation
 
 insert into teaacherinformation(id,name,department)value(001,'shamim','cse')
 
 truncate table teaacherinformation