
/*
 * src to test queries
 * 
 *  http://www.w3schools.com/sql/trysql.asp?filename=trysql_select_join_inner
 */

delete from employees where employeeid = 3
SELECT * FROM Employees WHERE EmployeeID	= 105 or 1=1
select top 20 * from orders
SELECT * FROM z_company2.office where officeid between 2 and 6 Limit 3
select employeeID as emp, lastname as ll from employees where firstname like '[a-z]%'


select employees.firstname, employees.lastname, shippers.shippername, customers.contactname
from orders
inner join employees on orders.EmployeeID = employees.EmployeeID
inner join shippers on orders.ShipperID = shippers.ShipperID
inner join customers on orders.CustomerID = customers.CustomerID