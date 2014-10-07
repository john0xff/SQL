/* http://www.tutorialspoint.com/sql/sql-rdbms-concepts.htm */

/* ------------------------NOT NULL Constraint-----------------
 *  Ensures that a column cannot have NULL value.*/
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);

/* ------------------------DEFAULT Constraint ------------------
 *  Provides a default value for a column when none is specified.*/
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2) DEFAULT 5000.00,       
       PRIMARY KEY (ID)
);

/* If CUSTOMERS table has already been created, then to add a DFAULT constraint to SALARY column */
ALTER TABLE CUSTOMERS MODIFY SALARY  DECIMAL (18, 2) DEFAULT 5000.00; 

/* To drop a DEFAULT constraint, use the following SQL: */
ALTER TABLE CUSTOMERS ALTER COLUMN SALARY DROP DEFAULT; 

/* ----------------------UNIQUE Constraint---------------------
 * Ensures that all values in a column are different. */
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL UNIQUE,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);

/*If CUSTOMERS table has already been created, then to add a UNIQUE constraint to AGE column*/
ALTER TABLE CUSTOMERS MODIFY AGE INT NOT NULL UNIQUE;

/*You can also use following syntax, which supports naming the constraint in multiple columns as well:*/
ALTER TABLE CUSTOMERS ADD CONSTRAINT myUniqueConstraint UNIQUE(AGE, SALARY);

/*To drop a UNIQUE constraint*/
ALTER TABLE CUSTOMERS DROP CONSTRAINT myUniqueConstraint;

/*If you are using MySQL, then you can use the following syntax:*/
ALTER TABLE CUSTOMERS DROP INDEX myUniqueConstraint;

/* ------------------Primary Key------------------ 
 * Uniquely identified each rows/records in a database table. */
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);

/*To create a PRIMARY KEY constraint on the "ID" column when CUSTOMERS table already exists*/
ALTER TABLE CUSTOMER ADD PRIMARY KEY (ID);

/* ------------------multiple Primary Keys------------------ */
/*For defining a PRIMARY KEY constraint on multiple columns*/
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),        
       PRIMARY KEY (ID, NAME)
);

/*To create a PRIMARY KEY constraint on the "ID" and "NAMES" columns when CUSTOMERS table already exists*/
ALTER TABLE CUSTOMERS ADD CONSTRAINT PK_CUSTID PRIMARY KEY (ID, NAME);

/*Delete Primary Key - clear the primary key constraints from the table*/
ALTER TABLE CUSTOMERS DROP PRIMARY KEY ;

/* -----------------  FOREIGN Key  ------------------- */
/* Uniquely identified a rows/records in any another database table. */

/**/

/**/

/**/

/**/



