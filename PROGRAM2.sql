CREATE SCHEMA `employee`;
USE employee;

CREATE TABLE Employee
(
code varchar(4) primary key,
name char(10),
designation char(30),
dob date,
salary float
);

desc Employee;

INSERT INTO Employee(code,name,designation,dob,salary)
VALUES
("e1","Ram","CEO","1970-09-12",50000),
("e2","Ramesh","CFO","1971-08-11",52000);

SELECT * FROM Employee;

UPDATE Employee
SET
salary=51000
WHERE code="e1";

DELETE FROM Employee
WHERE code="e2";
