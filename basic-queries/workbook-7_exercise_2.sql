use northwind;

-- query 1 - what is the name of the table that holds the items Northwind sells?
select * from products;

-- query 2 - write a query to list the product id, product name, and unit price of every product
select productID, productName, UnitPrice 
from products;

-- query 3 - from query 2 order the results in ascending order by price.
select productID, productName, UnitPrice
from products
order by unitPrice asc;

-- query 4 - what products have a unit price of $7.50 or less
select *
from products
where unitPrice <= 7.50;

-- query 5 - what products do we have at least 100 units on hand. order in descending order by price
select *
from products
where UnitsInStock >= 100
order by UnitPrice desc;

-- query 6 - using the results from query 5 - 
-- if 2 or more have the same price, list in asc order by product name
select *
from products
where UnitsInStock >= 100 
order by UnitPrice desc, ProductName asc;

-- query 7 - what products have no units on hand but 1 or more units on back order. order by product name
select *
from products
where UnitsInStock = 0 and UnitsOnOrder >= 1
order by ProductName asc;

-- query 8 - what is the name of table that holds the types of the items northwind sells
-- name = categories
select * from categories;

-- query 9 - list all of the columns all of the rows of the categories table
-- what is category id of seafood ? id = 8
select * from categories;

-- query 10 - examine products. how does it identify the category of each item sold? ans = CategoryID
-- write a query to list all of the seafood items
select * from products
where CategoryID = 8;

-- query 11 - what are the first and last names of all the northwind employees?
select FirstName, LastName from employees;

-- query 12 - what employees have manager in title?
select FirstName, LastName, Title from employees
where Title like '%manager%';

-- query 13 - list distinct job titles in employees
select distinct Title from employees;

-- query 14 - what employees have a salary between 2k and 2.5k?
select FirstName, LastName, salary from employees
where salary between 2000 and 2500;

-- query 15 - list all info about all northwinds suppliers
select * from suppliers;

-- query 16 - examine products table. how do you know what supplier supplies each product?
-- write a query to list all of the items that 'Tokyo Traders' supplies to northwind
-- ans = SupplierID for each supplier, Tokyo Traders ID is 4
select * from products
where SupplierID = 4;