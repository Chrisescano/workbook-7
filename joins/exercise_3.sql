use northwind;

-- query 1
select ProductID, ProductName, UnitPrice, CategoryName from products
inner join categories 
on products.CategoryID = categories.CategoryID
order by CategoryName asc, ProductName asc;

-- query 2
select ProductID, ProductName, UnitPrice, CompanyName from products
inner join suppliers
on products.SupplierID = suppliers.SupplierID
where UnitPrice > 75
order by ProductName;

-- query 3
select ProductID, ProductName, UnitPrice, CategoryName, CompanyName from products
inner join suppliers
on products.SupplierID = suppliers.SupplierID
inner join categories
on products.CategoryID = categories.CategoryID
order by ProductName;

-- query 4
select ProductName, CategoryName from products
inner join categories
on products.CategoryID = categories.CategoryID
where UnitPrice = (select max(UnitPrice) from products);

-- query 5
select OrderID, ShipName, ShipAddress, CompanyName from orders
inner join shippers
on orders.ShipVia = shippers.ShipperID
where ShipCountry = 'Germany';

-- query 6
select orders.OrderID, OrderDate, ShipName, ShipAddress from orders
inner join `order details`
on orders.OrderID = `order details`.OrderID
inner join products
on `order details`.ProductID = products.ProductID
where ProductName = 'Sasquatch Ale';