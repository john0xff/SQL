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
create table user(id int(11) unsigned auto_increment primary key not null, username varchar(25) not null, passwd varchar(25) not null, email varchar(40) not null);

/* list all tables again */
show tables;

/* show all columns of user talbe which is inside zcmdtest database */
describe user;


