SELECT `company`.`name` AS `CompanyName`, `office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `companyoffices`
INNER JOIN `company`
ON `companyoffices`.`companyID` = `company`.`companyID`
INNER JOIN `office`
ON `companyoffices`.`officeID` = `office`.`officeID`

/*-------------GROUP BY works like the DISTINCT ----------------------------------*/

SELECT `company`.`name` AS `CompanyName`, `office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `companyoffices`
INNER JOIN `company`
ON `companyoffices`.`companyID` = `company`.`companyID`
INNER JOIN `office`
ON `companyoffices`.`officeID` = `office`.`officeID`
GROUP BY `office`.`city`

/*------------------------------------------------------------*/

SELECT `company`.`name` AS `CompanyName`, `office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `companyoffices`
INNER JOIN `company`
ON `companyoffices`.`companyID` = `company`.`companyID`
INNER JOIN `office`
ON `companyoffices`.`officeID` = `office`.`officeID`
ORDER BY `office`.`city`

/*------------------------------------------------------------*/
SELECT status, count(*)
FROM orders
GROUP BY status
/*------------------------------------------------------------*/

SELECT `company`.`name` AS `CompanyName`, COUNT(*),`office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `companyoffices`
INNER JOIN `company`
ON `companyoffices`.`companyID` = `company`.`companyID`
INNER JOIN `office`
ON `companyoffices`.`officeID` = `office`.`officeID`
GROUP BY `office`.`city`
/*------------------------------------------------------------*/

SELECT `company`.`name` AS `CompanyName`, COUNT(*), `office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `companyoffices`
INNER JOIN `company`
ON `companyoffices`.`companyID` = `company`.`companyID`
INNER JOIN `office`
ON `companyoffices`.`officeID` = `office`.`officeID`
ORDER BY `office`.`city`

/*------------------------------------------------------------*/

SELECT `company`.`name` AS `CompanyName`, `office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `companyoffices`
INNER JOIN `company`
ON `companyoffices`.`companyID` = `company`.`companyID`
INNER JOIN `office`
ON `companyoffices`.`officeID` = `office`.`officeID`
WHERE `office`.`city` LIKE 'L%'

/*------------------------------------------------------------*/

SELECT `company`.`name` AS `CompanyName`, `office`.`city`, `office`.`zipCode`, `office`.`street`
FROM `companyoffices`
INNER JOIN `company`
ON `companyoffices`.`companyID` = `company`.`companyID`
INNER JOIN `office`
ON `companyoffices`.`officeID` = `office`.`officeID`
WHERE `office`.`city` LIKE 'L%'
ORDER BY `office`.`city`

/*------------------------------------------------------------*/

















/*------------------------------------------------------------*/
