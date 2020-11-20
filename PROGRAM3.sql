CREATE SCHEMA `employee_exp3`;
USE employee_exp3;

#Q1 Creating two tables (employee and employeedetails) 
CREATE TABLE employee
(
empid INT,
name CHAR(40),
age INT,
sex CHAR(10),
FOREIGN KEY(empid) REFERENCES employeedetails(empid)
);
CREATE TABLE employeedetails
(
empid INT PRIMARY KEY,
dname VARCHAR(20),
place CHAR(20)

);
INSERT INTO employee
VALUES
(1,"Rahul",20,"Male"),
(2,"Ram",19,"Male"),
(1,"Jay",20,"Male"),
(1,"Renu",20,"Female"),
(1,"Raveena",20,"Female");

INSERT INTO employeedetails(empid,dname,place)
VALUES
(1,"ABC","Pune"),
(2,"DEF","Delhi"),
(3,"XYZ","Mumbai");

SELECT * FROM employeedetails;
SELECT * FROM employee;

#Q2 
SELECT * FROM employee AS e1
WHERE EXISTS
(
   SELECT * FROM employeedetails AS e2
   WHERE e2.empid = e1.empid
);
#Q3
SELECT * FROM employee AS e1
WHERE NOT EXISTS
(
   SELECT * FROM employeedetails AS e2
   WHERE e2.empid = e1.empid
);

# select * from employeedetails as e1
# where  not exists
# (
# select * from employee as e2
# where e1.empid=e2.empid
# );

