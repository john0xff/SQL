/*http://www.youtube.com/watch?v=K-xkTGz2trE&list=PLFC1903317C74C043&index=3*/

C:\cd xampp\mysql\bin

shows
C:\xampp\mysql\bin>

/* type: */
C:\xampp\mysql\bin>mysql -u root -p -h 127.0.0.1

/* type password if needed */

show databases;

create database zcmdtest;

drop database if exists zcmdtest;

/* use this database */
use zcmdtest;

/* list all tables*/
show tables;

/* will be Empty set */

/* create table with cmd */
create table users(id int(11) unsigned auto_increment primary key not null, username varchar(25) not null, passwd varchar(25) not null, email varchar(40) not null);

/* list all tables again */
show tables;

/* show all columns of user talbe which is inside zcmdtest database */
describe users;

/* insert something into this table */
insert into users (username, passwd, email) value ('testname', '12345', 'abc@gmail.com');

/* select all rows */
select * from users;

/* insert next rows */
insert into users (username, passwd, email) value ('java', '5555', 'java@hotmail.com');
insert into users (username, passwd, email) value ('.net', '33333', 'test@hotmail.com');
insert into users (username, passwd, email) value ('king', '12', 'vvvv@hotmail.com');
insert into users (username, passwd, email) value ('master', '33', 'aaaa@hotmail.com');
insert into users (username, passwd, email) value ('royal', '77', 'c@hotmail.com');

insert into users value('','royal', '77', 'c@hotmail.com');

/*-----------------SELECT----*/
select username from users;
select * from users where id=1;
select id from users order by id desc;
select id from users order by id desc limit 3;
select * from users where username='.net';
SELECT * FROM users WHERE passwd IN(980, 22);
SELECT * FROM users WHERE 1 ORDER BY rand() limit 10;
SELECT DISTINCT username, email FROM users WHERE 1;
SELECT MAX(passwd) FROM users;
SELECT * FROM users WHERE username LIKE ('king');
SELECT * FROM users WHERE username LIKE ('%k%');

SELECT * FROM users WHERE username RLIKE ('t');
SELECT * FROM users WHERE username REGEXP ('t');
SELECT COUNT(*) FROM users WHERE username REGEXP ('t');
SELECT * FROM users WHERE username REGEXP ('t') OR username REGEXP ('n');
SELECT * FROM users WHERE username REGEXP ('t') OR username REGEXP ('n');
SELECT COUNT(*) FROM users WHERE username REGEXP ('t') OR username REGEXP ('n');
SELECT * FROM users WHERE username REGEXP ('t') OR (username REGEXP ('n') and username REGEXP ('i'));
SELECT * FROM users ORDER BY RAND();


/*--------------BACKSLASH*/
/*SELECT * FROM users WHERE username = '\'mas';*/


/*-----------------UPDATE----*/
UPDATE users SET passwd = 980 WHERE id = 5;
UPDATE users SET passwd = 980;
UPDATE users SET passwd = 333 WHERE username = 'king';

/*-----------------DELETE----*/
DELETE FROM users WHERE id = 10;
DELETE FROM users WHERE username IN('java', 'king');

/*-----------------ALERT----*/
ALERT TABLE users DROP COLUMN passwd;

/*-----------------DESCRIBE----*/
DESCRIBE users;


/*-----------------*/



