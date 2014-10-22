
/*
 * src to test queries
 * 
 *  http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join_inner
 */



INSERT INTO Employees VALUES (NULL, 'Test', 'Test', '1968-12-08', 'Test', 'Test');

SELECT Orders.OrderID, Employees.LastName, Customers.CustomerName, Shippers.ShipperName
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
ORDER BY Shippers.ShipperName;