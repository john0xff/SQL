/* -------------------------------- */
SELECT `role`.`roleName`, `user`.`userName`
FROM `connector`
INNER JOIN `role` ON `connector`.`roleId` = `role`.`roleId`
INNER JOIN `user` ON `connector`.`userId` =	`user`.`userId`;

/* -------------------------------- */
SELECT `role`.`roleName`, `user`.`userName`
FROM `connector`
INNER JOIN `role` ON `connector`.`roleId` = `role`.`roleId`
INNER JOIN `user` ON `connector`.`userId` =	`user`.`userId`
ORDER BY `role`.`roleName` ASC
