/* -------------------------------- */
ALTER TABLE `student` ADD INDEX(`zipCodeID`);
/* -------------------------------- */

SELECT `student`.`name`, `zipcodes`.`zipCode`, `zipcodes`.`city`
FROM `student`
INNER JOIN `zipcodes`
ON `student`.`zipcodeID` = `zipcodes`.`zipcodeID`

/* -------------------------------- */

SELECT `student`.`name` AS `studentName`, `zipcodes`.`zipCode`, `zipcodes`.`city`
FROM `student`
INNER JOIN `zipcodes`
ON `student`.`zipcodeID` = `zipcodes`.`zipcodeID`

/* -------------------------------- */




