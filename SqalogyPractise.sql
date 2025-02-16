 /* All table inner and left join*/
 SELECT s.studentId,s.firstname,s.lastname,
 CONCAT(s.firstname,' ',s.lastname)as fullname,
 c.subjectCode ,d.departmentName,s3.subjectTitle,
 CONCAT(tp.firstname, ' ', tp.lastname) AS Teachername,
 t.Designation,t.Salary,
 concat(s2.semester,'-','semester') as Semestername,
 p2.amount
 from studentpersonal s 
 inner join studentacademic s2 on s2.studentId =s.studentId 
 inner join courses c on c.studentId =s.studentId 
 left join departments d on d.departmentCode =s2.departmentCode 
 inner join subjects s3 on s3.departmentCode =s2.departmentCode 
 left join payment p2 on p2.studentId=s.studentId 
 inner join teacheracademic t on t.departmentCode =s2.departmentCode 
 INNER JOIN teacherpersonal tp ON tp.teacherId = t.teacherId  
 where p2.amount is not null;
 -- where p2.amount is null
  /* All table inner and left join*/





/*All inner ,lefe,right join Query  part*/
select sp.firstname,sp.lastname,sa.semester,sp.city,sa.departmentcode,p.amount,
CONCAT(sp.firstname ,' ',sp.lastname )as fullname,
CONCAT(sa.semester,' ','Samester')as Samester_name
from studentpersonal sp
inner join studentacademic sa on sp.studentId =sa.studentId 
left join payment p on sp.studentId =p.studentId 
right join payment p1 on sp.studentId =p1.studentId 
WHERE sp.studentId   IN (SELECT p.studentId  FROM payment);
 /*All inner ,lefe,right join Query  part*/

 /*cross join Query  part*/

SELECT sp.firstname, sp.lastname, sa.departmentCode,count(*) as total,
CONCAT(sp.firstname ,' ',sp.lastname )as fullname
FROM studentPersonal sp
CROSS JOIN studentAcademic sa
where firstname='John'
group by departmentCode
having count(*)>1
 /*cross join Query  part*/



 /*CASE Query  part*/
SELECT studentId,totalSemesterFees,
case
	WHEN totalSemesterFees <=1500 then 'Low'
	WHEN totalSemesterFees BETWEEN 1500 and 1800 then 'Medium'
	else 'High'
end as Fees

from studentacademic;

 /*CASE Query  part*/

 /*Subquery  part*/
SELECT departmentName
FROM departments
WHERE departmentCode NOT IN (SELECT departmentCode FROM studentAcademic); 
 /*Subquery  part*/
-------------------------------
/*where payment exist using sub query*/
select firstname,lastname 
from studentpersonal 
where studentId  IN(select studentId from payment p ) 
/*where payment exist using sub query*/
---------------------------------------
/*where payment not exist using sub query*/
select firstname,lastname 
from studentpersonal 
where studentId  NOT IN(select studentId from payment p ) 
/*where payment not exist using sub query*/
 /*Subquery  part*/
-----------------------------------
 /*having part*/
select city,count(*)  
from studentpersonal
group by city 
having count(*)>1                                      
 /*having part*/
------------------------------------
/*group by part*/
select city,count(*)  from studentpersonal group by city  
/*group by part*/
------------------------------------
 /*order by part*/
select * from payment order by payment.paymentId desc      
/*order by part*/
-------------------------------------
/*grater and and operation */
select * from payment where payment.amount >700 and paymentDate >='2024-01-17' 
/*grater and and operation */
--------------------------------------
 /*only search by txn id */
select * from payment where payment.paymentId="TXN1005"     
/*only search by txn id */