
select * from 
subject_
where credit = (select max(credit) from
subject_);

 select * from
 subject_ 
 join mark on subject_.SubId = mark.SubId
 where mark.mark = (select max(mark) from mark);
 
 select student.StudentName,student.StudentID,AVG(Mark.mark) from
 student
 join mark on student.StudentID = mark.StudentId
 group by StudentId
 order by AVG(Mark.mark) desc;