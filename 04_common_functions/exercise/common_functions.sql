use management_study;

select * 
from subjects s 
where s.credit >= all (select s.credit
				from subjects s);
                
select *
from subjects s join mark m 
on s.sub_id = m.sub_id
where m.mark >= all(select mark.mark from mark);

select s.student_id,s.student_name,s.address,s.phone,avg(m.mark) as dtb
from student s inner join mark m 
on s.student_id = m.student_id
group by m.student_id
order by dtb desc;