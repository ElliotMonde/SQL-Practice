CREATE TABLE productTable (
  id int not NULL,
  orderId varchar(255),
  primary key (id),
  foreign key (id) REFERENCES Test_table(productid)
  )
CREATE TABLE Test_table (
  productID int NOT NULL,
  productName varchar(255),
  quantity INT, Price Int,
  primary KEY (productID)
  )
INSERT into Test_table 
VALUES (1, "The OOZ 12-in vinyl",200)
SELECT * FROM Test_table WHERE quantity=200
insert into Test_table (productid, productname) 
VALUES (2, "Man Alive")
INSERT into Test_table (productid,productid,quantity) values (4, 5, 200)
ALTER TABLE Test_table add Price Int
update Test_table set price=25.00 where productid=1
insert into productTable (id, orderid) values (4,"loremipsum")
select Test_table.productID, productTable.orderid, Test_table.quantity, Test_table.productname
from productTable
inner join Test_table on productTable.id=Test_table.productid