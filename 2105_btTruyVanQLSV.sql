use quanlysinhvien;
select * FROM 
student
where StudentName like'h%';

select * from
class
where month(class.startDate) = 12;

select * from
subject_
where subject_.credit>=3 and subject_.credit<=5;

UPDATE student
SET ClassID = 2
WHERE StudentName = 'Hung';

select student.StudentName, subject_.SubName, mark.Mark
from
student join mark on student.studentid = mark .studentid 
join subject_ on
mark.subid = subject_.subid
ORDER BY student.StudentName ASC, mark.Mark desc;