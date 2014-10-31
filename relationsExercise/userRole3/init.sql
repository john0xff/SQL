
create database if not exists zzuserrole3;

user zzuserrole3;

create table if not exists users
(
	userID int (11) NOT NULL auto_increment primary key,
	userName varchar (20)
)

create table if not exists roles
(
	roleID int (11) NOT NULL auto_increment primary key,
	roleName varchar (20)
)

create table if not exists userRole
(
	userID int (11) ADD INDEX,
	roleID int (11) ADD INDEX
)

ALTER TABLE `userrole` ADD INDEX(`userID`);
ALTER TABLE `userrole` ADD INDEX(`roleID`);



alter table `userrole` add constraint `fk_1` foreign key (`userID`) references `users` (`userID`)
alter table `userrole` add constraint `fk_2` foreign key (`roleID`) references `roles` (`roleID`)

insert into `users` values (NULL, 'A'), (NULL, 'B'), (NULL, 'C');
insert into `roles` values (NULL, 'ADMIN'), (NULL, 'USER');

insert into `userrole` values (1, 1), (1, 2), (2, 2), (3, 1), (3, 2);

select userName, roleName from userrole 
inner join users on users.userID = userrole.userID
inner join roles on roles.roleID = userrole.roleID



select userName, roleName from userrole 
inner join users on users.userID = userrole.userID
inner join roles on roles.roleID = userrole.roleID
where rolename regexp [^'a-e'];



 alter table `userRole` add constraint `fk_1` add foreign key (`userID`) references `users` (`userID`);
 
 ALTER TABLE `userrole` ADD CONSTRAINT `fk_1` FOREIGN KEY (`userID`) REFERENCES `zzuserrole3`.`users`(`userID`) ON DELETE RESTRICT ON UPDATE RESTRICT;