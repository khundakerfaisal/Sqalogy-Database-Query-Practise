select s.studentId ,
CONCAT(s.firstname ,' ',s.lastname ) as Full_Name,
CONCAT(s2.semester ,' ',"semester" ) as Semester_Name,
s2.departmentCode ,d.departmentName ,p.paymentId,p.amount , s2.session ,
s.bloodgroup ,s.Gender ,s.religion 
from studentpersonal s 
inner join studentacademic s2 on s2.studentId =s.studentId 
inner join departments d on d.departmentCode =s2.departmentCode 
left join payment p on p.studentId = s.studentId
order by s.studentId asc
DDL Example:
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);
ALTER TABLE employees ADD department VARCHAR(50);

RENAME TABLE employees TO staff;

TRUNCATE TABLE staff;

DROP TABLE employees;

DQL Example:

SELECT religion,COUNT(*) FROM studentpersonal 
GROUP BY studentpersonal.religion 
having count(*)>1

SELECT DISTINCT religion FROM studentpersonal;

SELECT * FROM studentpersonal
LIMIT 5;


Aggregate Example:
SELECT * FROM studentacademic s  
where totalSemesterFees between 1500 and 1600 

SELECT * FROM studentpersonal
WHERE studentpersonal.firstname  LIKE '%a';


select MAX(totalSemesterFees) from studentacademic s2  
Subquery Example:
select * from studentpersonal s 
where s.studentId not in (select studentid from payment p )

Case Example:
  
SELECT studentid,totalSemesterFees, 
CASE
	WHEN totalSemesterFees <1500 THEN 'low'
	WHEN totalSemesterFees BETWEEN 1700 AND 1800 THEN 'medium'
	ELSE 'hign'
END AS fees

from studentacademic sa 

inner join Example :
SELECT sp.firstname, sp.lastname,
CONCAT(sp.firstname ,'',sp.lastname )as full_name,
sa.departmentCode, sa.semester
FROM studentPersonal sp
INNER JOIN studentAcademic sa ON sp.studentId = sa.studentId;

Left join Example :
SELECT sp.firstname, sp.lastname,
CONCAT(sp.firstname ,'',sp.lastname )as full_name,
sp.religion,sp.Gender,
sa.semester
FROM studentPersonal sp
LEFT JOIN studentAcademic sa ON sp.studentId = sa.studentId;

Right join Example :
SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
RIGHT JOIN studentAcademic sa ON sp.studentId = sa.studentId;

Full join Example :

SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
LEFT JOIN studentAcademic sa ON sp.studentId = sa.studentId
UNION
SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
RIGHT JOIN studentAcademic sa ON sp.studentId = sa.studentId;

Cross join Example :
SELECT sp.firstname, sp.lastname, sa.departmentCode
FROM studentPersonal sp
CROSS JOIN studentAcademic sa;

