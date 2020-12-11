CREATE SCHEMA `tablestore_exp6`;
USE tablestore_exp6;

#Q1
CREATE TABLE store(
orderno INT PRIMARY KEY AUTO_INCREMENT,
CODE VARCHAR(20) NOT NULL,
item VARCHAR(20),
quantity INT NOT NULL,
price FLOAT NOT NULL,
discount FLOAT,
mrp FLOAT NOT NULL
);

#Q2
INSERT INTO store(orderno,code,item,quantity,price,discount,mrp)
VALUES
(1,"ALBRKF2","Apple iPhone 11",2,51999,3000,53000),
(2,"PFR2K89A","Apple iPhone XR",1,40999,2000,42000),
(3,"SLKBR512","OnePlus 8T",4,45999,1000,4600000),
(4,"ARJ89712","MacBook Pro",4,780000,50000,1000000);

#Q3
SELECT * FROM store;

#Q4 
CREATE VIEW details AS
SELECT item,quantity
FROM store
WITH CHECK OPTION;
SELECT * FROM details;
INSERT INTO store(orderno,code,item,quantity,price,discount,mrp)
VALUES
(5,"XlpAFH","Apple iPhone 12",2,75500,2000,77000);
SELECT * FROM details ;

#Q5
DROP VIEW details;