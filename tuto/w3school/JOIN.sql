SELECT Customers.CustomerName, Orders.OrderID
FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName
LIMIT 0 , 30

/*----------------------------------------------------------------*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName
LIMIT 0 , 30

/*----------------------------------------------------------------*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName
LIMIT 0 , 30

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/