ALTER TABLE `register`
ADD CONSTRAINT `ibfk_register_1`
FOREIGN KEY (`personID`)
REFERENCES `person` (`personID`)
/*-----------------------------------*/
ALTER TABLE `register`
ADD CONSTRAINT `ibfk_register_2`
FOREIGN KEY (`petitionID`)
REFERENCES `petition` (`petitionID`)
/*-----------------------------------*/
SELECT `person`.`firstname`, `person`.`lastname`, `person`.`email`, `petition`.`type`, `petition`.`content`, `register`.`date`
FROM `register`
INNER JOIN `person` ON `register`.`personID` = `person`.`personID`
INNER JOIN `petition` ON `register`.`petitionID` = `petition`.`petitionID`
/*-----------------------------------*/


/*-----------------------------------*/


/*-----------------------------------*/