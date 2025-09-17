-- Create database

	/*create database NtechstudentDb*/

-- Inner join

		/* SELECT sp.firstname, sp.lastname,
		CONCAT(sp.firstname ,' ',sp.lastname )as full_name,
		sa.departmentCode, sa.semester
		FROM studentPersonal sp
		INNER JOIN studentAcademic sa ON sp.studentId = sa.studentId; */

-- left join

/* SELECT sp.firstname, sp.lastname,
	CONCAT(sp.firstname ,'',sp.lastname )as full_name,
	sp.religion,sp.Gender,
	sa.semester
	FROM studentPersonal sp
	LEFT JOIN studentAcademic sa ON sp.studentId = sa.studentId;*/

-- right join

	/*SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
	FROM studentPersonal sp
	RIGHT JOIN studentAcademic sa ON 
	sp.studentId = sa.studentId;*/

-- full join

	/*SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
	FROM studentPersonal sp
	LEFT JOIN studentAcademic sa ON sp.studentId = sa.studentId
	UNION
	SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
	FROM studentPersonal sp
	RIGHT JOIN studentAcademic sa ON sp.studentId = sa.studentId;*/

-- cross join

	/*SELECT sp.firstname, sp.lastname, sa.departmentCode
	FROM studentPersonal sp
	CROSS JOIN studentAcademic sa;*/

-- Case Statement

	/*SELECT studentid,totalSemesterFees, 
	CASE
	WHEN totalSemesterFees <=1400 THEN 'low'
	WHEN totalSemesterFees BETWEEN 1500 AND 1800 THEN 'medium'
	ELSE 'hign'
	END AS fees
	from studentacademic ;*/


-- Subqueries

	/*select * from studentpersonal s 
	where s.studentId in (select studentid from payment p )*/

-- Agregate Function

	/*select count(*) from studentpersonal s 
	
	select sum(totalSemesterFees) from studentacademic 
	
	select AVG(totalSemesterFees) from studentacademic
	
	select MAX(totalSemesterFees) from studentacademic  
	
	select MIN(totalSemesterFees) from studentacademic */

-- IN operation

	/*SELECT * FROM departments 
	where departmentName in ('Biotechnology')*/

-- Between operation

	/*SELECT * FROM studentacademic s 
	where totalSemesterFees between 1400 and 1600 */

-- like Operation

	/*SELECT * FROM studentpersonal
	WHERE firstname LIKE '%y%';*/

-- Limit Queries

	/*select * from studentpersonal s 
	limit 5*/

-- Distinct query Find (unique data)

	/*SELECT DISTINCT religion FROM studentpersonal;*/

-- Having Query (Find Duplicate All data)

	/*SELECT religion,COUNT(*) FROM studentpersonal 
	GROUP BY studentpersonal.religion 
	having count(*)>1*/

-- Group by 
	/*SELECT s.departmentCode , sum(totalSemesterFees) FROM studentacademic s 
	GROUP BY departmentcode */

-- order by descending
	/*select *  from studentpersonal 
	order by firstname  desc*/

-- Where Queries
	/*select * from departments 
	where departmentName ='Civil Engineering';*/


-- Insert Queries (DML)
	/*insert into teacherinfonew (name,address,phone)values ('Murad vai','Mohammadpur','0015103030'),
	('sani vai','ctg','0015103030'),
	('mashrur vai','dhaka','0015103030'),
	('masud vai','Mohammadpur','0015103030')*/
-- update Queries (DML)
	/*update teacherinfonew 
	set phone ='01812212'
	where teacherId =2*/

-- Delete Queries
	/*delete from teacherinfonew where teacherid=5*/

-- Create Table (DDL)

	/*create table teacherInfoNew(
	teacherId int not null auto_increment primary key,
	name varchar(100),
	address varchar(100))*/

-- Update Table(DDL)

	/*alter table teacherinfonew 
	add phone varchar(50)*/

-- Rename Table(DDL)

	/*rename table teacherInfo to teacherInformation*/
-- Truncate table(DDL)

	/*Truncate table teacherInformation*/
-- Drop Table (DDL)

	/*drop table teacherinformation */

-- Update Foreign Key
	/*
	ALTER TABLE teacherinfonew 
	ADD CONSTRAINT fk_teacherId
	FOREIGN KEY (teacherId)
	REFERENCES teacheracademic(teacherId);
	*/

