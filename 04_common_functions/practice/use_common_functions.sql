use management_study;
select address, count(student_id) as "số lượng học viên"
from student
group by address;

select st.student_name, avg(mark) as dtb
from student st join mark m 
on st.student_id = m.student_id
group by st.student_id,st.student_name;

select st.student_name, avg(mark) as dtb
from student st join mark m 
on st.student_id = m.student_id
group by st.student_id,st.student_name
having avg(mark) > 15;

select s.student_id, s.student_name, avg(mark)
from student s join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name
having avg(mark) >= all (select avg(mark) from mark group by  mark.student_id);