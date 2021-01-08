CREATE SCHEMA `employee_exp9`;
USE employee_exp9;

#Q1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('BB44','Tina Mathew','1999-06-02','Manager',200000.78),
('YY55','Meena S','1997-01-12','Clerk',45000.78),
('RT56','Anil Kumar','1996-08-02','CEO',350000.78),
('IY78','Jeena Kumari','1988-04-17','Auditor',59000.18);

#Q2
SELECT * FROM Employee ORDER BY name DESC;

#Q3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(2390001,'Kottayam',300000.25),
(2390002,'Kottayam',291233.22),
(2390003,'Ernakulam',323570.1),
(2390004,'Kottayam',4239083.78),
(2390005,'alapuzha',500090.90);

#Q4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;
