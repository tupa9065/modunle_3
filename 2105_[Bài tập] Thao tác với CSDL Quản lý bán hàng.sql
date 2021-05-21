use quanlybanhang;

insert into customer
value
(1,'Minh Quan',10),
(2,'Ngoc Hoa',20),
(3,'Hong Ha',50);

insert into order_(oid,cid,odate)
value
(1,1,'2006-03-21'),
(2,2,'2006-03-23'),
(3,1,'2006-03-16');

insert into product
value
(1,'may giat',3),
(2,'tu lanh',5),
(3,'dieu hoa',7),
(4,'quat',1),
(5,'bep dien',2);

delete from orderdetail;
insert into orderdetail(oID,pid,odqty)
value
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);


select oid,odate,ototalprice 
from order_;

select customer.cname,product.pname
from
customer
join order_ on customer.cid = order_.cid
join orderdetail on order_.oid = orderdetail.oid
join product on orderdetail.pid = product.pid
 ;
 
 SELECT customer.cname, product.pname
FROM orderdetail
JOIN product ON orderdetail.pid = product.pid
JOIN order_ ON orderdetail.oid = order_.oid
JOIN customer ON order_.cid = customer.cid;

select * 
from 
customer
left join order_ on customer.cid = order_.cid
where order_.oid is null;

select order_.oid,order_.odate,sum(orderdetail.odqty*product.pprice)
from orderdetail
join order_ on orderdetail.oid = order_.oid
join product on orderdetail.pid=product.pid
group by order_.oid;