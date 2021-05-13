drop database if exists quan_li_diem_thi;
create database quan_li_diem_thi;
use quan_li_diem_thi;


create table hoc_sinh(
ma_hoc_sinh varchar(20) primary key not null,
ten_hoc_sinh varchar(40),
ngay_sinh date,
lop varchar(20),
gioi_tinh varchar(10)
);


create table mon_hoc(
ma_mon_hoc varchar(20) not null primary key,
ten_mon_hoc varchar(40)
);


create table bang_diem(
ma_hoc_sinh varchar(20),
ma_mon_hoc varchar(20),
diem_thi int,
ngay_kt date,
primary key(ma_hoc_sinh,ma_mon_hoc),
foreign key(ma_hoc_sinh) references hoc_sinh(ma_hoc_sinh),
foreign key(ma_mon_hoc) references mon_hoc(ma_mon_hoc)
);


create table giao_vien(
ma_giao_vien varchar(20) not null primary key,
ten_giao_vien varchar(40),
so_dien_thoai varchar(20)
);


alter table mon_hoc
	add ma_giao_vien varchar(20),
    add constraint fk_ma_giao_vien foreign key(ma_giao_vien) references giao_vien(ma_giao_vien);