CREATE SCHEMA `Table_exp12`;
USE `Table_exp12`;

CREATE TABLE Sailors
(sid int primary key,
 sname varchar(25),
 rating float,
 age int);
 CREATE TABLE Boats
 (bid int primary key,
  bname varchar(20),
  color char(10));
  CREATE TABLE Reserves
  (sid int,
   bid int,
   day date,
   foreign key (sid) references Sailors(sid), 
   foreign key (bid) references Boats(bid), 
   primary key (sid, bid));
INSERT INTO Sailors values
(22,'Siji',37,45),
(31,'Lewis',38,55.5),
(58,'Bob',39,35);
INSERT INTO Boats VALUES
(101,'glory','yellow'),
(103,'rose','red'),
(102,'giant','blue');
INSERT INTO Reserves VALUES
(22,101,'1989/03/10'),
(58,103,'1985/12/11'),
(22,102,'1988/05/29'); 

#Q1
SELECT a.sid, a.sname, a.rating, a.age FROM Sailors AS a
INNER JOIN Reserves AS c ON a.sid=c.sid AND c.bid=101;

#Q2
SELECT b.bname FROM Reserves AS c
INNER JOIN Sailors AS a ON a.sid AND a.sname="Bob"
INNER JOIN Boats AS b ON b.bid=c.sid;

#Q3
SELECT a.sname FROM Sailors AS a
INNER JOIN Reserves AS c ON a.sid=c.sid
INNER JOIN Boats AS b ON b.bid=c.bid AND b.color="red"
ORDER BY a.age;

#Q4
SELECT DISTINCT a.sname FROM Sailors AS a
INNER JOIN Reserves AS c ON a.sid IN (c.sid);

#Q5
SELECT a.sid ,a.sname FROM Reserves AS c
INNER JOIN Reserves AS d ON c.sid <> d.sid AND c.day=c.day
INNER JOIN Sailors AS a ON d.sid=a.sid;
