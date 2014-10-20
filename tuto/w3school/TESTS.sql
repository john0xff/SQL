
/*
 * src to test queries
 * 
 *  http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join_inner
 */




SELECT LastName AS Alias
FROM Employees;


SELECT DISTINCT Employees.FirstName FROM Employees WHERE Employees.FirstName LIKE 'A%'

