CREATE SCHEMA `department_exp4`;
USE department_exp4;

#Qa
CREATE TABLE Department(
code VARCHAR(6) PRIMARY KEY,
title CHAR(10),
Department_name VARCHAR(10) UNIQUE,
Department_id VARCHAR(10),
salary INT CHECK (salary > 2000)
);
INSERT INTO Department(code,title,Department_name,Department_id,salary)
VALUES
(10,"ABC","CS","CS101",5000),
(15,"XYZ","EEE","EE211",40000),
(20,"LMN","EC","EC110",3000);

SELECT * FROM department;

#Qb
CREATE TABLE Instructor(
name CHAR(20) NOT NULL,
code VARCHAR(6) PRIMARY KEY,
id VARCHAR(6) DEFAULT 'ABC'
);

INSERT INTO instructor(name,code)
VALUES
("Preeti Singh","CS11"),
("Jack Davis","EE12"),
("Emily John","EC14");

SELECT * FROM instructor;
