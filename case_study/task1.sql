drop database if exists database_furama_resort;
create database  database_furama_resort;
use database_furama_resort;


create table vi_tri(
id_vi_tri int auto_increment primary key,
ten_vi_tri varchar(30) not null
);

create table trinh_do(
id_trinh_do int primary key auto_increment,
trinh_do varchar(30) not null
);


create table bo_phan(
id_bo_phan int primary key auto_increment,
ten_bo_phan varchar(50) not null
);


create table loai_khach(
id_loai_khach int primary key auto_increment,
ten_loai_khach varchar(40) not null
);


create table kieu_thue(
id_kieu_thue int  primary key auto_increment,
ten_kieu_thue varchar(50),
gia int not null
);


create table loai_dich_vu(
id_loai_dich_vu int primary key auto_increment,
ten_loai_dich_vu varchar(45)
);


create table dich_vu_di_kem(
id_dich_vu_di_kem int primary key auto_increment,
ten_dich_vu_di_kem varchar(45),
gia int not null,
don_vi varchar(45) not null,
trang_thai_kha_dung varchar(45)
);


create table nhan_vien(
id_nhan_vien int primary key auto_increment,
ho_ten varchar(255) not null,
id_vi_tri int,
foreign key(id_vi_tri) references vi_tri(id_vi_tri),
id_trinh_do int,
foreign key(id_trinh_do) references trinh_do(id_trinh_do),
id_bo_phan int,
foreign key(id_bo_phan) references bo_phan(id_bo_phan),
ngay_sinh date not null,
so_cmnd varchar(45) not null,
luong varchar(45) not null,
sdt varchar(45),
email varchar(45),
dia_chi varchar(45) not null
);


create table khach_hang(
id_khach_hang int  primary key auto_increment,
id_loai_khach int,
foreign key(id_loai_khach) references loai_khach(id_loai_khach),
ho_ten varchar(45) not null,
ngay_sinh date  not null,
so_cmnd varchar(45) not null,
sdt varchar(45),
email varchar(45),
dia_chi varchar(45) not null
);


create table dich_vu(
id_dich_vu int not null primary key auto_increment,
ten_dich_vu varchar(45) not null,
dien_tich int not null,
so_tang int not null,
so_nguoi_toi_da varchar(45) not null,
chi_phi_thue varchar(45) not null,
id_kieu_thue int,
	foreign key(id_kieu_thue) references kieu_thue(id_kieu_thue),
id_loai_dich_vu int,
	foreign key(id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu),
trang_thai varchar(45)
);


create table hop_dong
(id_hop_dong int primary key auto_increment,
id_nhan_vien int,
	foreign key(id_nhan_vien) references nhan_vien(id_nhan_vien),
id_khach_hang int,
	foreign key(id_khach_hang) references khach_hang(id_khach_hang),
id_dich_vu int,
	foreign key(id_dich_vu) references dich_vu(id_dich_vu),
ngay_lam_hop_dong date not null,
ngay_ket_thuc date,
tien_dat_coc int,
tong_tien int not null
);


create table hop_dong_chi_tiet
(id_hop_dong_chi_tiet int primary key auto_increment,
id_hop_dong int,
	foreign key(id_hop_dong) references hop_dong(id_hop_dong),
id_dich_vu_di_kem int,
	foreign key(id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem),
so_luong int not null
);

insert into vi_tri(ten_vi_tri)
values ("L??? t??n"),("Ph???c v???"),("Chuy??n vi??n"),("Gi??m s??t"),("Qu???n l??"),("Gi??m ?????c");

insert into trinh_do(trinh_do)
values ("Trung c???p"),("Cao ?????ng"),("?????i h???c"),("Sau ?????i h???c");

insert into bo_phan(ten_bo_phan)
values ("Sale_Marketing"),("H??nh ch??nh"),("Ph???c v???"),("Qu???n l??");

insert into loai_khach(ten_loai_khach)
	values ("Diamond"),("Platinum"),("Gold"),("Silver"),("Member");

insert into loai_dich_vu(ten_loai_dich_vu)
	values ("Villa"),("House"),("Ph??ng"), ("D???ch v??? ??i k??m");

insert into dich_vu_di_kem(ten_dich_vu_di_kem,gia,don_vi,trang_thai_kha_dung)
	values 	("Massage",20,"l???n","c??"),
			("Karaoke",15,"gi???","kh??ng"),
			("Th???c ??n",3,"d??a","c??"),
			("N?????c u???ng",1,"chai","c??"),
			("Thu?? xe",10,"l???n","c??");
        
insert into kieu_thue(ten_kieu_thue,gia)
	values ("thu?? theo gi???",50),("thu?? theo ng??y",500),("thu?? theo th??ng",7000),("thu?? theo n??m",60000);
    
    
    insert into khach_hang(id_loai_khach,ho_ten,ngay_sinh,so_cmnd,sdt,email,dia_chi)
	values 	(1,"Nguy???n Thanh T??ng",'1995-10-17',"201784966","0794113544","tung@gmail.com","Qu???ng Ng??i"),
			(4,"Nguy???n Ho??ng B???o Ng???c",'1997-12-05',"207146212","0714531169","ngoc@gmail.com","Qu???ng Tr???"),
			(5,"Tr???n Quang",'1993-11-23',"204184987","0771411074","quang@gmail.com","Hu???"),
			(2,"Tr???n Ti???n",'1994-12-21',"204145135","0751237484","tien@gmail.com","Vinh"),
			(2,"????? Thi??n Trang",'1990-04-05',"200144613","0714531169","ngtrang2@gmail.com","Qu???ng Tr???"),
            (3,"Nguy???n T???n Khoa",'1992-08-05',"204014613","0714743364","khoa@gmail.com","Hu???"),
            (5,"Kh????ng Th??? Ng???c",'1999-11-30',"201444146","0145911074","ngoc@gmail.com","Qu???ng Tr???"),
            (1,"Nguy???n Minh H???nh",'1992-06-03',"200991142","0781569231","minhhanh@gmail.com","???? N???ng"),
            (3,"Cao Th??? Ph????ng",'1998-02-07',"263319012","0354569974","caophuong@gmail.com","Li??n Chi???u"),
            (4,"Nguy???n Ho??ng Sang","1997-05-15","238934756","0215142156","sangga@gmail.com","???? N???ng");
            
	insert into nhan_vien(ho_ten,id_vi_tri,id_trinh_do,id_bo_phan,ngay_sinh,so_cmnd,luong,sdt,email,dia_chi)
	values 	("Nguy???n Thu???n",4,3,4,'1997-07-09',207845112,800,0784112449,"thuan@gmail.com","???? N???ng"),
			("Nguy???n V??n Khoa",3,2,2,'1999-12-19',241005430,600,0361112911,"khoa@gmail.com","???? N???ng"),
			("Ph???m V??n Tu???n",1,4,1,'1995-04-24',203334007,400,0367415940,"tuan@gmail.com","Hu???"),
			('Tr???n Trung An', '2', '3', '1', '1992-05-06', '204111334', '500', '784221144', 'kien@gmail.com', "B??nh D????ng"),
			("Nguy???n Thanh T??ng",3,2,1,'1993-09-20',207494007,430,0122515940,"quangho@gmail.com","Vinh"),
			("H???ng S??n",3,4,4,'1985-11-04',200314007,620,0978115110,"phukhach@gmail.com","Qu???ng Tr???"),
			("Tr???n ????ng Khoa",2,4,2,'1998-02-25',203310147,500,0367411940,"togiang@gmail.com","Qu???ng Ng??i"),
			("Nguy???n Tho???i",1,4,1,'2000-09-24',203114555,540,0154222333,"thoai@gmail.com","H?? N???i"),
			("Tr???n Trung Ti???n",3,3,2,'1994-01-27',201112456,460,0897444551,"tientrung@gmail.com","C???m L???"),
			("Tr???n Qu???i",3,3,2,'1994-01-27',201112456,460,0897444551,"tranqui@gmail.com","H???i Ch??u"),
			("Nguy???n T??ng",2,3,2,'1994-01-27',201112456,460,0897444551,"abc@gmail.com","?????c Ph???");
            
            
insert into dich_vu(ten_dich_vu,dien_tich,so_tang,so_nguoi_toi_da,chi_phi_thue,id_kieu_thue,id_loai_dich_vu,trang_thai)
	values 	("Villa 1",100,6,14,500,2,1,"c??"),
			("House 1",50,4,17,300,3,2,"c??"),
			("Villa 2",150,8,30,500,3,1,"kh??ng"),
			("House 2",320,5,35,450,2,1,"c??"),
			("Villa 3",450,3,25,500,1,1,"kh??ng"),
			("Ph??ng 3",35,2,28,100,1,3,"c??"),
            ("Ph??ng 1",24,3,10,100,2,3,"c??"),
			("Ph??ng 2",60,9,40,650,4,3,"c??");
            
insert into hop_dong(id_nhan_vien,id_khach_hang,id_dich_vu,ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,tong_tien)
	values 	(2,1,5,'2017-02-11','2021-02-26',0,3500),
			(3,2,1,'2018-01-25','2021-03-22',1500,2500),
			(2,3,4,'2019-02-01','2021-02-20',3000,4500),
			(2,4,2,'2020-07-17','2021-01-18',1000,3000),
			(1,1,1,'2020-01-19','2021-01-16',500,3000),
            (4,2,1,'2019-12-12','2020-01-21',460,3500),
			(3,4,5,'2018-10-16','2018-12-06',400,2300),
            (4,6,3,'2019-12-12','2020-01-29',510,2400),
			(2,4,2,'2019-07-16','2019-10-29',240,1050),
            (8,4,3,'2019-12-12','2019-12-15',300,1200),
            (5,9,5,'2015-06-12','2015-12-06',800,2000),
			(6,3,1,'2016-05-29','2017-12-06',600,900),
			(7,5,3,'2015-01-20','2015-04-06',355,1500);
            
insert into hop_dong_chi_tiet(id_hop_dong,id_dich_vu_di_kem,so_luong)
	values 	(2,4,1),(3,1,2),(1,2,1),(4,3,1),(6,5,2),(7,4,3),(8,1,2),
			(9,2,1),(13,3,2),(10,5,4),(8,4,4),(10,1,5),(11,2,2);
			
