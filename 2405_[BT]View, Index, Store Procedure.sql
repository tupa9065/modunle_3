create database demo;
use demo;

create table Products(
Id int not null auto_increment primary key ,
productCode varchar(5) not null,
productName varchar(50) not null,
productPrice int default 0,
productAmount int default 0,
productDescription varchar(100),
productStatus bit default 1
);

insert into products
value(1,11111,1,1,1,1,1);
insert into products
value
(2,2222,2,2,2,2,1),
(3,3333,3,3,3,3,1),
(4,4444,4,4,4,4,1),
(5,5555,5,5,5,5,1)
;

create unique index productCode_index
on products(productCode);

create index product_code_price_index
on products(productCode,productPrice);

create view productInfo_view as
select productCode,productName,productPrice,productStatus
from products;

explain select * from products 
where productCode = 11111;

 create or replace view  productInpfo_view as
 select productCode,productName,productPrice,productStatus,productDescription
from products;

drop view IF EXISTS productInpfo_view;

DELIMITER //
CREATE PROCEDURE showInfoProducts()
BEGIN
   select * from products;
END; //
DELIMITER ;

call showInfoProducts();
set @id =6;
 
delimiter //
DROP PROCEDURE IF EXISTS `addItem`//

create procedure addItem(INOUT id INT)
begin
set id = id +1;
insert into products(id,productCode,ProductName)
value (id,id,'new item');
end//
delimiter ;

call addItem(@id);

delimiter //
create procedure deleteItem(in delete_id int)
begin
	delete from products
    where id = delete_id;
end//
delimiter ;

call deleteItem(0);

delimiter //
create procedure changeName(in change_id int, in change_name varchar(255))
begin
	update products
    set productName = change_name
    where id = change_id;
end//
delimiter ;

call changeName(1,'San Pham 1');
