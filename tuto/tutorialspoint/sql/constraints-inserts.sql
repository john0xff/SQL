drop database tutorials;

create database if not exists tutorials;

use tutorials;

create table customers
(
	id int not null auto_increment,
    name varchar (255),
    age int,
    address char (25),
    primary key (id)
);

create table orders
(
	id int not null,
	date datetime,
	customer_id int,
	amount double,
	primary key (id),
	foreign key (customer_id) references customers (id)
);






/* --------------------------------------------------------------------------------------- */
/* --------------------------below olny and samples that can not work properly ----------- */
/* --------------------------------------------------------------------------------------- */
/* --------------------------------------------------------------------------------------- */

INSERT INTO customers values (2, 'testName', 22, 'Krakow', 3333);

INSERT INTO orders values (1, );

drop database tutorials;

create database if not exists tutorials;

use tutorials;

create table customers
(
	id int not null,
    name varchar (255),
    age int,
    address char (25),
    primary key (id)
);

create table orders
(
	id int not null,
	date datetime,
	customer_id int,
	amount double,
	primary key (id),
	foreign key (customer_id) references customers (id)
);

alter table orders modify customer_id int not null;

drop table if exists orders;

create table orders
(
	id int not null,
	date datetime,
	customer_id int not null,
	amount double,
	primary key (id),
	foreign key (customer_id) references customers (id)
);

drop table if exists orders;

create table if not exists orders
(
	id int not null,
	date datetime,
	customer_id int not null,
	amount double,
	primary key (id),
	foreign key (customer_id) references customers (id)
);

INSERT INTO `tutorials`.`orders` (
`id` ,
`date` ,
`customer_id` ,
`amount`
)
VALUES (
'2', '2014-10-17 10:29:31', '1', '222'
);

insert into orders value ('3', '', '', '');

insert into tutorials.customers value('4', '', '', '');

/* AUTO_INCREMENT */
alter table customers modify id int not null AUTO_INCREMENT;

SELECT * FROM customers where name='test';









