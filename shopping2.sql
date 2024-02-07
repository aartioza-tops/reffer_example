use flipkart;

select * from customer where customerID in (select customerID from ordertbl)

select sum(total) as Total from ordertbl
select max(total) as Total from ordertbl
select upper(customerName) from customer
select sum(total),customerID as Total from ordertbl group by customerID
select count(productID),catID from product group by catID

select count(customerID) from customer where customerName like 'm%'
group by address 

select customerID from ordertbl
	group by customerID 
    having count(customerID)>1
desc ordertbl

select customer.customerName,ordertbl.orderDate,ordertbl.total
from ordertbl inner join customer
on ordertbl.customerID = customer.customerID










