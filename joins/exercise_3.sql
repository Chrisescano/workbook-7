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

-- query 4 : ProductName, CategoryName 
select products.ProductName, categories.CategoryName, products.UnitPrice AS MaxUnitPrice
from products
inner join ( -- finds max price of each category and joins with products table
	select CategoryID, max(UnitPrice) as MaxUnitPrice from products
    group by CategoryID
) as MaxPrices
on products.CategoryID = MaxPrices.CategoryID and products.UnitPrice = MaxPrices.MaxUnitPrice
inner join categories -- gets the category name of each products by category id
on products.CategoryID = categories.CategoryID;

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