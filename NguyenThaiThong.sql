create database Quanlisinhvien
go
use Quanlisinhvien
go
CREATE TABLE Khoa (
     id int Identity,
	 Makhoa  INT  PRIMARY KEY ,
	Tenkhoa  NVARCHAR(30) NOT NULL
);
CREATE TABLE Sinhvien (
		 id int Identity,
		Masv  char(20)   PRIMARY KEY,
	   Hoten  NVARCHAR(40) NOT NULL,
	   Namsinh int NULL,
);
create table monhoc(
		id int Identity,
		mamonhoc char(10)PRIMARY KEY ,
		tenmonhoc nvarchar(20),
		sotinchi int
);
go
create table ketqua(
		id int Identity,
		maketqua char(20)PRIMARY KEY ,
		mamonhoc char(10),
		Masv char(20),
		diem float,
 constraint fk_monhoc foreign key(mamonhoc) references monhoc(mamonhoc),
 constraint fk_masinhvien foreign key(masv) references sinhvien(masv)
);
select * from Sinhvien