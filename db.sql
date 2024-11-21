--Create database
CREATE DATABASE testdb;

--Delete database
DROP DATABASE testdb;

--Create table with column name
CREATE TABLE COMPANY(
    ID INT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR(50),
    SALARY REAL
);

CREATE TABLE DEPARTMENT(
    ID INT PRIMARY KEY NOT NULL,
    DEPT CHAR(50) NOT NULL,
    EMP_ID INT NOT NULL
);

--Drop table
DROP TABLE COMPANY,
DEPARTMENT;

--Create schema
CREATE SCHEMA myschema;

--Create table in schema
CREATE TABLE myschema.company(
    ID INT NOT NULL,
    NAME VARCHAR (20) NOT NULL,
    AGE INT NOT NULL,
    ADDRESS CHAR (25),
    SALARY DECIMAL (18, 2),
    PRIMARY KEY (ID)
);

--Drop schema
DROP SCHEMA myschema;

--Drop schema with all contained objects
DROP SCHEMA myschema CASCADE;

--Insert value in columns of table
INSERT INTO
    COMPANY (ID, NAME, AGE, ADDRESS, SALARY)
VALUES
    (1, 'Paul', 32, 'California', 20000.00);

--Insert multiple values
INSERT INTO
    COMPANY (ID, NAME, AGE, ADDRESS, SALARY, JOIN_DATE)
VALUES
    (4, 'Mark', 25, 'Rich-Mond', 65000.00),
    (5, 'David', 27, 'Texas', 85000.00);

--Fetch certain columns
SELECT
    ID,
    NAME,
    SALARY
FROM
    COMPANY;

--Fetch whole table
SELECT
    *
FROM
    COMPANY;

--Boolean expression
SELECT
    *
FROM
    COMPANY
WHERE
    SALARY = 10000;

--Numeric expression
SELECT
    (15 + 6) AS ADDITION;

--Date expressions
SELECT
    CURRENT_TIMESTAMP;
