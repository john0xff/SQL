/* delete dataase */
DROP database emp;

CREATE database if not exists `EMP`;
USE `EMP`;

DROP TABLE IF EXISTS Employees;

create table Employees
(
	id int not null,
	age int not null,
	first varchar (255),
	last varchar (255)
);

INSERT INTO Employees VALUES (100, 18, 'Zara', 'Ali');
INSERT INTO Employees VALUES (101, 25, 'Mahnaz', 'Fatma');
INSERT INTO Employees VALUES (102, 30, 'Zaid', 'Khan');
INSERT INTO Employees VALUES (103, 28, 'Sumit', 'Mittal');

INSERT INTO Employees(id, age, first, last) VALUES (104, 28, 'Sumit', 'Mittal');
DELETE FROM Employees WHERE id = 104;

UPDATE employees SET age = 30 WHERE id in (100, 101);
UPDATE employees SET age = 18 WHERE id in (100);
UPDATE employees SET age = 25 WHERE id in (101);

SELECT id, first, last, age FROM Employees;
SELECT id, first, last, age FROM Employees WHERE id >= 102;
SELECT id FROM employees;
SELECT id FROM employees WHERE id <= 102;
SELECT id FROM employees WHERE id <=102 LIMIT 2;
SELECT id, first, last, age FROM employees WHERE first LIKE '%za%';
SELECT id, first, last, age FROM employees ORDER BY first ASC;  /* asc and desc clauses to sort data in ascending and descending orders. */
SELECT id, first, last, age FROM employees ORDER BY age DESC;
SELECT age FROM employees ORDER BY age DESC LIMIT 2;
