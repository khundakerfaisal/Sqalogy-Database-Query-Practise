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


