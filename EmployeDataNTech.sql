-- left Join
		-- select * from studentpersonal s
		-- left join payment p on p.studentId =s.studentId 
		-- where p.amount  is null

-- Case statement (Added teacher and student Inner join)
		SELECT studentId,
			t.teacherId,
			CONCAT(tp.firstname,' ' ,tp.lastname)as TeacherName,
			t.Designation,
			studentacademic.departmentCode,totalSemesterFees,
			CASE
				WHEN totalSemesterFees < 1500 then 'Low'
				WHEN totalSemesterFees Between 1500 and 1700 then 'Medium'
				Else 'High'
			END AS Fees
		from studentacademic 
inner join teacheracademic t on studentacademic.departmentCode = t.departmentCode 
inner join teacherpersonal tp  on t.teacherId = tp.teacherId



select * from studentacademic s  
select * from studentpersonal s 
where s.studentId  in (select studentid from payment p )

alter table teacherinfo add
teacherId int not null;
SELECT * FROM teacherinfo WHERE teacherId IS NULL OR teacherId = 0;

-- foreign key
ALTER TABLE teacherinfo 
ADD CONSTRAINT fk_teacherId
FOREIGN KEY (teacherId)
REFERENCES teacheracademic(teacherId);

-- ALTER TABLE teacherinfo
-- MODIFY teacherId INT;
-- ALTER TABLE teacheracademic
-- MODIFY teacherId INT;




SELECT * FROM studentpersonal
WHERE studentpersonal.firstname LIKE '%a';

select * from studentacademic s 
where s.totalSemesterFees between  1500 and 1800

-- SELECT * FROM studentpersonal
-- LIMIT 5;
-- SELECT DISTINCT religion FROM studentpersonal;

-- create table teacherInfo(
-- id int not null primary key,
-- name varchar(100))
-- 
-- alter table teacherinfo 
-- modify id INT NOT NULL auto_increment;
-- 
-- alter table teacherinfo 
-- add address varchar(50)

-- update teacherinfo t 
-- set name='Rahim'
-- where id=2

-- Bulk Upload
-- INSERT INTO teacherinfo (id, name, address) VALUES (1, 'naim', 'Dhaka');
--  (2, 'shamim', 'Dhaka');
--  (3, 'tamim', 'Dhaka');
--  (4, 'mahim', 'Dhaka');