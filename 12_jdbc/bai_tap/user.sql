drop database if exists user_database;
create database user_database;
use user_database;
create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 `name` varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(`name`,email,country)
values ("tùng","tung@gmail.com","Việt Nam"),
("toàn","toan@gmail.com","Mỹ"),
("Đức","duc@gmail.com","Trung Quốc"),
("Sang","sang@gmail.com","Lào"),
("Hậu","hau@gmail.com","Việt Nam"),
("Công","cong@gmail.com","Việt Nam");
