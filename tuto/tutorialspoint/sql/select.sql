
/* everything is based on the same database and tables in this package */
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

/* inserts have been made in constraint-inserts.sql file */

SELECT * FROM customers where name='test';