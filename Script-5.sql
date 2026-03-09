select * from studentdb.studentpersonal s 


CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);
ALTER TABLE employees ADD department VARCHAR(50);

RENAME TABLE employees TO staff;

TRUNCATE TABLE staff;

DROP TABLE employees;



SELECT religion,COUNT(*) FROM studentpersonal 
GROUP BY studentpersonal.religion 
having count(*)>1

SELECT DISTINCT religion FROM studentpersonal;

SELECT * FROM studentpersonal
LIMIT 5;



SELECT * FROM studentacademic s  
where totalSemesterFees between 1500 and 1600 


SELECT * FROM studentpersonal
WHERE studentpersonal.firstname  LIKE '%a';

select MAX(totalSemesterFees) from studentacademic s2  

select * from studentpersonal s 
where s.studentId not in (select studentid from payment p )


SELECT studentid,totalSemesterFees, 
CASE
	WHEN totalSemesterFees <1500 THEN 'low'
	WHEN totalSemesterFees BETWEEN 1700 AND 1800 THEN 'medium'
	ELSE 'hign'
END AS fees

from studentacademic sa 

Example :
SELECT sp.firstname, sp.lastname,
CONCAT(sp.firstname ,'',sp.lastname )as full_name,
sa.departmentCode, sa.semester
FROM studentPersonal sp
INNER JOIN studentAcademic sa ON sp.studentId = sa.studentId;

Example :
SELECT sp.firstname, sp.lastname,
CONCAT(sp.firstname ,'',sp.lastname )as full_name,
sp.religion,sp.Gender,
-- p.amount
sa.semester
FROM studentPersonal sp
-- RIGHT JOIN payment p on sp.studentId=p.studentId;
-- Left JOIN studentAcademic sa ON sp.studentId = sa.studentId;


Example :
SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
RIGHT JOIN studentAcademic sa ON sp.studentId = sa.studentId;

Example :

SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
LEFT JOIN studentAcademic sa ON sp.studentId = sa.studentId
UNION
SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
RIGHT JOIN studentAcademic sa ON sp.studentId = sa.studentId;





