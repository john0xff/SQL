/* Aggregate functions often need an added GROUP BY statement. */
/* The GROUP BY statement is used in conjunction with the aggregate functions to group the result-set by one or more columns. */
/* ORDER BY alters the order in which items are returned.
GROUP BY will aggregate records by the specified columns which allows you to 
perform aggregation functions on non-grouped columns (such as SUM, COUNT, AVG, etc). */

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