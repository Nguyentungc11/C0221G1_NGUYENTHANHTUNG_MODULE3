drop database if exists quan_li_ban_hang;
create database quan_li_ban_hang;
use quan_li_ban_hang;

 
create table customer(
id_customer int not null primary key auto_increment,
name_customer varchar(40),
age int
);


create table `order` (
id_order int not null primary key auto_increment,
id_customer int,
order_date date,
total_price float,
foreign key (id_customer) references customer(id_customer)
);


create table product(
id_product int not null primary key,
name_product varchar(30),
price float
);


create table order_detail(
id_order int,
id_product  int,
primary key(id_order,id_product),
foreign key (id_order) references `order`(id_order),
foreign key (id_product) references product(id_product)
);
