
/*
 * src to test queries
 * 
 *  http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join_inner
 */

DELETE FROM Emplyees
WHERE 1955-03-04 AND
1968-12-08

DELETE FROM `Employees`
WHERE `BirthDate`
BETWEEN '1955-03-04' AND '1968-12-08'

DELETE FROM `Employees`WHERE `BirthDate`='1968-12-08'

SELECT Order.OrderID, Employees.EmployeeName


SELECT Orders.OrderID, Employees.FirstName
FROM Orders
INNER JOIN Employees
ON Orders.EmployeeID= Employees.EmployeeID

SELECT LastName AS Alias
FROM Employees;