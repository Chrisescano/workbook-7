use northwind;

-- query 1
select count(supplierID) from suppliers;

-- query 2
select sum(salary) from employees;

-- query 3
select min(UnitPrice) from products;

-- query 4
select avg(UnitPrice) from products;

-- query 5
select max(UnitPrice) from products;

-- query 6
select SupplierID, count(ProductName) from products
group by SupplierID;

-- query 7
select CategoryID, avg(UnitPrice) from products
group by CategoryID;

-- query 8
select SupplierID, count(ProductName) from products
group by supplierID having count(ProductName) >= 5;

-- query 9
select ProductID, ProductName, UnitPrice * UnitsInStock as InventoryValue from products
order by InventoryValue desc, ProductName asc;