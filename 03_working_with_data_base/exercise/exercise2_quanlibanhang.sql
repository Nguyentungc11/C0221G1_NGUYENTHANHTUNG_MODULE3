use quan_li_ban_hang;
insert into customer(name_customer,age)
values  ("Hoàng",20),
		("Dũng",25),
		("Nga",30),
		("Hồng",21),
		("Sang",26);
        
        
insert into `order`(id_customer,order_date)
values  (1,'2021-12-10'),
		(3,'2020-08-12'),
        (2,'2016-11-15'),
        (4,'2019-01-24'),
        (2,'2021-04-27');
        
        
insert into product
values  (1,"Điều hòa",3),
		(2,"Tủ lạnh",5),
		(3,"Máy Giặt",6),
		(4,"Quạt điện",2),
		(5,"Bếp",7);
insert into order_detail
values  (1,1,3),
		(1,4,6),
        (3,4,7),
		(4,5,2),
		(2,3,8);
        
select `order`.id_order,`order`.order_date,`order`.total_price
from `order`;

select c.name_customer,pro.name_product
from customer c inner join `order` o
on c.id_customer = o.id_customer
inner join order_detail od
on o.id_order = od.id_order
inner join product pro
on od.id_product = pro.id_product;
