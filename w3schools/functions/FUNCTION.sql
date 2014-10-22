/*----------------------------------------------------------------*/
SELECT AVG(Price) 
AS TEST 
FROM Products;
/*----------------------------------------------------------------*/
SELECT COUNT(*) 
FROM Customers
WHERE Customers.Country != 'Germany'

SELECT COUNT(DISTINCT City) FROM Customers

SELECT COUNT(DISTINCT Country) FROM Customers

SELECT COUNT(DISTINCT Country) AS NewNameTable FROM Customers 
/*----------------------------------------------------------------*/
SELECT FIRST(Shippers.ShipperName) FROM Shippers
/*----------------------------------------------------------------*/
SELECT LAST(CustomerName) AS LastCustomer FROM Customers;
/*----------------------------------------------------------------*/
SELECT MAX(Price) AS MaxPrice FROM Products
/*----------------------------------------------------------------*/
SELECT MIN(Products.Price) AS MinPirce FROM Products
/*----------------------------------------------------------------*/
SELECT SUM(Price) FROM Products 
SELECT SUM(Quantity) FROM OrderDetails
/*----------------------------------------------------------------*/
SELECT Shippers.ShipperName, Count(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID
GROUP BY Shippers.ShipperName
/*----------------------------------------------------------------*/
SELECT Shippers.ShipperName, Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM ((Orders
INNER JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID)
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID)
GROUP BY ShipperName,LastName;
/*----------------------------------------------------------------*/
/* having */


/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/
SELECT TOP 5 MID(LastName,1,4) AS EmplLastName FROM Employees;
/* the same as - tested on mysql */
SELECT SUBSTRING(LastName,1,4) AS EmplLastName FROM Employees
/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/
