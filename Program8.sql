CREATE SCHEMA `emp_exp8`;
USE emp_exp8;

#Q1 
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

#Q2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('NN231','John Thomas','1994-12-15','Clerk',30000.25),
('NM234','Jay Shetty','1980-10-15','Product Manager',45000.50),
('BB339','Anil Kumar','1999-07-09','Clerk',32000),
('BN322','Anika Jane','1985-06-03','General Manager',40000.75);

#Q3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#Q4
SELECT MAX(salary) FROM Employee;

#Q5
SELECT AVG(salary) FROM Employee;

#Q6
SELECT MIN(salary) FROM Employee;

#Q7
SELECT COUNT(*) FROM Employee;
