SELECT `company`.`name`, `office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `company`
INNER JOIN `office`
ON `company`.`officeID` = `office`.`officeID`
ORDER BY `company`.`name`