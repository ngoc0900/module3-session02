create database btvn_bai2;
drop database btvn_bai2;
create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int primary key,
cName varchar(50) not null,
cAge int not null
);
create table Orders(
oID int primary key,
PersonID int not null,
foreign key(PersonID) references Customer(cID),
oDate date,
oToalPrice double
);
create table Product(
pID int primary key,
pName varchar(50) not null,
pPrice double
);
create table Orderdetail(
o_id int ,
foreign key(o_id) references Orders(oID),
p_id int ,
foreign key(p_id) references Product(pID),
odQTY int,
primary key(o_id,p_id)
);
insert into Customer(cID,cName,cAge) values
(1,'Minh Quan',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);
insert into Orders(oID,PersonID,oDate,oToalPrice) values
(1,1,'2006-3-21',null),
(2,2,'2006-3-23',null),
(3,1,'2006-3-16',null);
insert into Product(pID,pName,pPrice) values
(1,	'May Giat',3),
(2,	'Tu Lanh', 5),
(3,	'Dieu Hoa',7),
(4,	'Quat',	1),
(5,	'Bep Dien',2);
insert into Orderdetail(o_id,p_id,odQTY) values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);
