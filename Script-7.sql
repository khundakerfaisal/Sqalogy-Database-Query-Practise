select * from studentpersonal s 
select * from courses  
select * from departments 
select * from payment

select max(payment.amount ) from payment
select min(payment.amount ) from payment

select studentid,amount,
case
	when amount<=500 then 'low'
	when amount between 600 and 700 then 'medium'
	else 'high'
end as status

from payment p 

select studentId,departmentCode,count(*) from studentacademic s 
group by departmentCode
having count(*)>1

select distinct s.departmentCode  from studentacademic s 

select * from studentacademic s 
limit 5

select * from studentpersonal s 
where s.studentId not in (select paymentid from payment p )


SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
LEFT JOIN studentAcademic sa ON sp.studentId = sa.studentId
UNION
SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
RIGHT JOIN studentAcademic sa ON sp.studentId = sa.studentId;


SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
LEFT JOIN studentAcademic sa ON sp.studentId = sa.studentId
UNION
SELECT sp.firstname, sp.lastname, sa.departmentCode, sa.semester
FROM studentPersonal sp
RIGHT JOIN studentAcademic sa ON sp.studentId = sa.studentId;


