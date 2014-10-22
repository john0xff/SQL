ALTER TABLE `connector` ADD INDEX(`roleID`);
ALTER TABLE `role` ADD UNIQUE(`roleName`);

ALTER TABLE table_name RENAME TO new_table_name;
ALTER TABLE table_name RENAME COLUMN old_name to new_name;

ALTER TABLE table_name ADD column_name datatype
ALTER TABLE table_name DROP COLUMN column_name

ALTER TABLE table_name MODIFY column_name column_type;

ALTER TABLE `user_role` DROP FOREIGN KEY `role_ibfk_1`;

/*----------------------------------------*/

ALTER TABLE `orders` 
ADD CONSTRAINT `orders_ibfk_1` 
FOREIGN KEY (`CustomerID`) 
REFERENCES `w3schools2`.`customers`(`CustomerID`) 
ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE `orders` 
ADD CONSTRAINT `orders_ibfk_2` 
FOREIGN KEY (`EmployeeID`) 
REFERENCES `w3schools2`.`employees`(`EmployeeID`) 
ON DELETE RESTRICT ON UPDATE RESTRICT; 

ALTER TABLE `orders` 
ADD CONSTRAINT `orders_ibfk_3` 
FOREIGN KEY (`ShipperID`) 
REFERENCES `w3schools2`.`shippers`(`ShipperID`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;

/*----------------------------------------*/

ALTER TABLE `user_role` RENAME COLUMN `userName` to `userID`;
ALTER TABLE `user_role` CHANGE `userName` `userID` INT 





