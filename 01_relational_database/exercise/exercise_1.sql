create database if not exists my_database_1;
use my_database_1;
create table class(
	id int not null,
    `name` varchar(40)
);
create table teachers (
id int not null,
`name` varchar(40),
age int,
country varchar(40)
);
