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