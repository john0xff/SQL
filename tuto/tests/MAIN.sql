
    SELECT - extracts data from a database
    UPDATE - updates data in a database
    DELETE - deletes data from a database
    INSERT INTO - inserts new data into a database
    CREATE DATABASE - creates a new database
    ALTER DATABASE - modifies a database
    CREATE TABLE - creates a new table
    ALTER TABLE - modifies a table
    DROP TABLE - deletes a table
    CREATE INDEX - creates an index (search key)
    DROP INDEX - deletes an index

    -----------------------------------------------
    SELECT column_name,column_name FROM table_name;
    SELECT * FROM table_name;
    SELECT DISTINCT City FROM Customers; 
    
    ----------------------------------------------- JOIN
    SELECT `orders`.`ordersid` , `customers`.`customerName`
	FROM `orders`
	INNER JOIN `customers` ON `orders`.`customerid` = `customers`.`customerid`
	LIMIT 0 , 30
	
SELECT `petition`.`petitionId` , `petition`.`date` , `person`.`firstname` , `person`.`city`
FROM `petition`
INNER JOIN `person` ON `petition`.`personId` = `person`.`personId`
LIMIT 0 , 30

SELECT * FROM `person` 
ORDER BY (CASE `city`
         WHEN 'Krk' THEN 2
         WHEN 'Mancherster' THEN 1
         ELSE 100 END
         );

    