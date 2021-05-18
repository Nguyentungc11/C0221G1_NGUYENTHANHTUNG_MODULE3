drop database if exists demo;
create database demo;
use demo;
create table products(
id_product int auto_increment primary key,
product_code varchar(40),
product_name varchar(40),
product_price float,
product_amount float,
product_description varchar(50),
product_status varchar(50)
);

insert into products(product_code,product_name,product_price,product_amount,product_description,product_status)
values  ("A","Cam",20,3,"chín","còn"),
		("B","Chuối",25,6,"xanh","còn"),
		("C","Xoài",34,5,"ngon","hết"),
		("D","Ổi",100,9,"cứng","còn"),
		("E","Táo",300,12,"chưa chín","hết");
        
create unique index index_code
on products (product_code);

create unique index index_name_price
on products (product_name,product_price);

explain select * from products where product_code = "c";

explain select * from products where product_name = "Xoài";


create view get_product as
 select product_code,product_name,product_price,product_status
 from products;
 
 
update get_product
set product_status = "Còn nhiều lắm"
where product_name = "Táo";

drop view get_product;


delimiter //
create procedure get_product()
begin
select * from products;
end; //
delimiter ;
call get_product();


delimiter //
create procedure add_product(p_code varchar(20),p_name varchar(20),p_price float,
p_amount float,p_description varchar(45),p_status varchar(20))
begin
insert into products(product_code,product_name,product_price,product_amount,
product_description,product_status)
values (p_code,p_name,p_price,p_amount,p_description,p_status);
end; //
delimiter ;
call add_product("Y","Dưa leo",12,34,"dài","gần hết");

select * from products;

delimiter //
create procedure update_product(p_id int,p_name varchar(45))
BEGIN
update products
set product_name = p_name
where id_product = p_id;
END; //
delimiter ;

call update_product(1,"sầu riêng");
select * from  products;


delimiter //
create procedure delete_product(p_id int)
BEGIN
delete from products 
where id_product = p_id;
END; //
delimiter ;
call delete_product(2);
select * from products;