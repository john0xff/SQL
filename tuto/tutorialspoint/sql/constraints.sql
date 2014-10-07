/* ------------------------NOT NULL Constraint-------------------------------------------- Ensures that a column cannot have NULL value.*/
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);

/* ------------------------DEFAULT Constraint -------------------------------------------- Provides a default value for a column when none is specified.*/
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2) DEFAULT 5000.00,       
       PRIMARY KEY (ID)
);

ALTER TABLE CUSTOMERS MODIFY SALARY  DECIMAL (18, 2) DEFAULT 5000.00; /* If CUSTOMERS table has already been created, then to add a DFAULT constraint to SALARY column */

ALTER TABLE CUSTOMERS ALTER COLUMN SALARY DROP DEFAULT; /* To drop a DEFAULT constraint, use the following SQL: */

/* ----------------------UNIQUE Constraint---------------------------------------------- Ensures that all values in a column are different. */
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL UNIQUE,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);


