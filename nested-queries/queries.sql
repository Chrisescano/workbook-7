use northwind;

/*
What is the product name of the most expensive products?
HINT: find the max price in a subquery and then use that value to find products whose price equals that values
*/
select ProductName from products
where UnitPrice = (select max(UnitPrice) from products);

/*
What is the order id, shipping name and shipping address of all orders shipped via "Federal Shipping"
HINT: find the shipper id of "Federal Shipping" in a subquery and then use that value to find the orders that used that shipper
*/ -- 3 is federal shipping
select OrderId, ShipName, ShipAddress from orders
where ShipVia = (select ShipperID from shippers where CompanyName = 'Federal Shipping');

/*
What are the order ids of the orders that ordered "Sasquatch ale"?
HINT: find the product id of "Sasquatch ale" in a subquery and then use that value to find the matching orders form the 
"order details" table. because the order details table has a space in its name, you will need to surround it with back ticks in
the from clause
*/
select OrderID from `order details`
where ProductID = (select ProductID from products where ProductName = 'Sasquatch Ale');

/*
What is the name of the employee that sold order 10266?
*/
select FirstName, LastName from employees
where EmployeeID = (select EmployeeID from orders where OrderID = 10266);

/*
What is the name of the customer that bought order 10266?
*/
select CompanyName from customers
where CustomerID = (select CustomerID from orders where OrderID = 10266);