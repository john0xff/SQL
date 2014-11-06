SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

/* ------------ */
select city from customers
union all
select city from suppliers
ORDER BY City asc

/* ------------ */

select address from customers
union
select address from suppliers
order by address asc
/* ------------ */

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;