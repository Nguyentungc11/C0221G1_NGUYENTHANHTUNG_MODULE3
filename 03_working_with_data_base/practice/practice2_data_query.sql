use management_study;

select * 
from student;

select * 
from student
where `status` = true;

select* 
from subjects 
where credit < 4;

select *
from student join class
on student.class_id = class.class_id
where class.class_name = "B";

select s.student_id,s.student_name,c.class_name 
from student s join class c 
on s.class_id = c.class_id
where c.class_name = "B";

select s.student_id,s.student_name,sub.sub_name,m.mark
from student s join mark m
on s.student_id = m.student_id
join subjects sub
on sub.sub_id = m.sub_id
where sub.sub_name = "toán";