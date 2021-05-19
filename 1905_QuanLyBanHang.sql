create database QuanLyBanHang;
use QuanLyBanHang;
create table customer(
cid int not null auto_increment primary key,
cname varchar(30) default'name',
cage int check(0<cage<100)
);
create table order_(
oid int not null auto_increment primary key,
cid int not null,
odate date,
ototalprice int check(ototalprice > 0)
);
alter table order_
add constraint cid_fk foreign key (cid) references customer(cid);

create table product(
pid int not null auto_increment primary key,
pname varchar(30) ,
pprice int check(0<pprice<100)
);
create table orderdetail(
pid int not null ,
oid int not null ,
primary key(pid,oid),
constraint pid_fk foreign key (pid) references product(pid),
constraint oid_fk foreign key (oid) references order_(oid)
);
alter table orderdetail
add column odqty varchar(10);