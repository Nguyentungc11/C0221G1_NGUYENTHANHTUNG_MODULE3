drop database if exists database_furama_resort;
create database if not exists database_furama_resort;
use database_furama_resort;
create table vi_tri(
id_vi_tri int auto_increment not null primary key,
ten_vi_tri varchar(30) not null
);