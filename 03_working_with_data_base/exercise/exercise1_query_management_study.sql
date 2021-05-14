use management_study;
select *
from student
where student_name like "H%";

select *
from class
where start_date like "%09%";

select *
from subjects
where credit between 3 and 5;

update student 
set class_id = 2 
where student_name = "Hùng";

select s.student_name,sub.sub_name,m.mark 
from student s join mark m
on s.student_id = m.student_id
join subjects sub
on sub.sub_id = m.sub_id
order by mark DESC;