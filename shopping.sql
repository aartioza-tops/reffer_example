create database flipkart;
use flipkart;
create table customer(
	customerID int primary key auto_increment,
    customerName varchar(30),
    mobile varchar(30),
    email varchar(30),
    username varchar(30),
    pass varchar(30),
    address varchar(30)
);
-- productID	productName	productImage	productPrice	productCategory	Description
create table product(
	productID int auto_increment,
    productName varchar(30),
    productImage varchar(30),
    productPrice float4,
    catID int,
    productDescription varchar(100),
    primary key (productID),
    foreign key (catID) references category(categoryID)
);
drop table product;

create table category(
	categoryID int primary key auto_increment,
    categoryName varchar(30),
    categoryImage varchar(30)

);
drop table category;

-- orderid-pk	cutomerID-fk	ProductID-fk	OrderDate	Total
create table ordertbl(
	orderID int auto_increment,
    customerID int,
    productID int,
    orderDate dateTime,
    total int,
    primary key (orderID),
    foreign key (customerID) references customer(customerID),
    foreign key (productID) references product(productID)
);
drop table ordertbl;

-- insert command
insert into customer
(customerName,email,username,pass,address) values 
('yana','yana@gmail.com','yana01','yana@123','nikol'),
('shahnawaz','shahnawaz@gmail.com','shah01','shah@123','dholka');

insert into product
(productName,productImage,productPrice,catID,productDescription)
values('mobile','c://image2.jpg',62220.0,5,'real me.....'),
('T-shirt','c://image1.jpg',1000,2,'new arrivals...')

insert into category(categoryName,categoryImage) values
 ('Electronics','image1.jpg'),('clothes','image2.jpg'),('footware','image3.jpg'),('grocessory','image4.jpg')
















