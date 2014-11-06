/* Aggregate functions often need an added GROUP BY statement. */
/* The GROUP BY statement is used in conjunction with the aggregate functions to group the result-set by one or more columns. */

/* --------------------------------------------------- */
SELECT Shippers.ShipperName,COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID
GROUP BY ShipperName;

/* --------------------------------------------------- */
SELECT Shippers.ShipperName, Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM ((Orders
INNER JOIN Shippers
ON Orders.ShipperID=Shippers.ShipperID)
INNER JOIN Employees
ON Orders.EmployeeID=Employees.EmployeeID)
GROUP BY ShipperName,LastName;
/* --------------------------------------------------- */