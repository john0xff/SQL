/*----------------------------------------------------------------*/
/*-------------MAIN TYPES OF JOINS = 7 x (see gfx in this repo) --*/
/* INNER, 
 * LEFT, 
 * RIGHT, 
 * FULL OUTER, 
 * LEFT with exclusion, 
 * RIGHT with exclusion
 * FULL OUTER with exclusion */

/*----------------------------------------------------------------*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName
LIMIT 0 , 30

/*----------------------------------------------------------------*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName
LIMIT 0 , 30

/*----------------------------------------------------------------*/
/* NOT supported by web browsers sql databases */
SELECT Customers.CustomerName, Orders.OrderID
FROM Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName
LIMIT 0 , 30

/*----------------------------------------------------------------*/
/*-----------------------EXAMPLES OF USAGE------------------------*/
/*----------------------------------------------------------------*/

SELECT Orders.OrderID, Employees.FirstName
FROM Orders
INNER JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID;

/*----------------------------------------------------------------*/
/* JOIN the same result as INNER JOIN */
SELECT Orders.OrderID, Employees.LastName 
FROM Orders 
JOIN Employees 
ON Orders.EmployeeID=Employees.EmployeeID


/*----------------------------------------------------------------*/
/* working with mysql and init.sql database - resulat the same as RIGHT JOIN */
SELECT Orders.OrderID, Employees.LastName 
FROM Orders 
RIGHT OUTER JOIN Employees 
ON Orders.EmployeeID=Employees.EmployeeID

/*----------------------------------------------------------------*/





/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/

/*----------------------------------------------------------------*/






