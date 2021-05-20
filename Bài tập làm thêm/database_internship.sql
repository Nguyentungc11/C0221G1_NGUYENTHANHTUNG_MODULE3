drop database if exists database_intership;
create database database_intership;
use database_intership;

create table project(
project_id int primary key auto_increment,
project_name varchar(30),
expense int,
place_of_intern varchar(40)
);

create table faculty(
faculty_id int primary key auto_increment,
faculty_name varchar(40),
phone varchar(30)
);

create table student(
student_id int primary key auto_increment,
student_name varchar(40),
faculty_id int,
foreign key (faculty_id) references faculty(faculty_id),
date_of_birth date,
place_of_birth varchar(40)
);
create table instructor(
instructor_id int primary key auto_increment,
instructor_name varchar(40),
salary double,
faculty_id int,
foreign key (faculty_id) references faculty(faculty_id)
);

create table student_instructor(
student_id int,
instructor_id int,
project_id int,
primary key (student_id,instructor_id,project_id),
foreign key (student_id) references student(student_id),
foreign key (instructor_id) references instructor(instructor_id),
foreign key (project_id) references project(project_id),
grade double
);

insert into project(project_name,expense,place_of_intern)
values ("dự án A",2,"Công ty A"),
		("dự án B",3,"Công ty B"),
		("dự án C",12,"Công ty C");
        
insert into faculty(faculty_name,phone)
values ("Xây dựng","0124532142"),
		("Cntt","0169854215"),
        ("Cơ khí","0321012415");
        
insert into student(student_name,faculty_id,date_of_birth,place_of_birth)
values  ("Tùng",1,"1995-02-08","Quảng Ngãi"), 
		("Đức",3,"1990-09-17","Nghệ An"), 
		("Chiến",2,"1997-12-19","Quảng Trị");
        
insert into instructor(instructor_name,salary,faculty_id)
        values  ("Tiến",1000,2),
				("Trung",1500,1),
				("Chánh",500,3);
insert into student_instructor(project_id,student_id,instructor_id,grade)
		values   (1,2,3,9),
                 (2,2,1,10),
                 (3,2,1,8);
                
       
