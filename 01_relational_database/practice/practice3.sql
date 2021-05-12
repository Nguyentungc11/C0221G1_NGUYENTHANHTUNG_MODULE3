drop database if exists student_management;
create database if not exists student_management;
use student_management;
create table student(
id int not null auto_increment primary key,
`name` varchar(40) null,
age int null,
country varchar(40)
);