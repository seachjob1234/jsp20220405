use w3schools;

SELECT * from Customers ORDER BY CustomerID DESC;

INSERT INTO Customers (CustomerID, CustomerName,ConTactName, Address, City, PostalCode, Country)
VALUES(92,'Donald','President','New York','Seattle','000000','USA');

INSERT INTO Customers (CustomerID, CustomerName,ConTactName,  Address, City, PostalCode, Country)
VALUES(93,'Son','Heung-min','Tottem','London','1111','uk');

INSERT into Customers
VALUES (94,'CHA','bum','bundesliga','koln','22222','Germany');

-- DESC 테이블 SCHEM 조회(DESCRIBE)
DESCRIBE Customers;
DESC Customers;

-- auto_increment 컬럼은 insert 할 때 생략 가능
INSERT INTO Customers (CustomerName,ConTactName,  Address, City, PostalCode, Country)
VALUES(95,'Oscar','Isaac','london','b-999','uk');

SELECT * from Customers;

select * from Employees ORDER BY EmployeeID DESC;

INSERT INTO Employees(LastName,FirstName,BirthDate,Photo,Notes)
VALUES('Jisung','Park','1991-01-01','pic1','Manchester United');

SELECT * from Employees;

INSERT INTO Employees(LastName,FirstName,BirthDate,Notes)
VALUES('LEE','hongshin','1901-01-01','genaral');

-- null은 값이 없다는 의미
-- INSERT시 NULL 명시 가능
INSERT INTO Employees(LastName,FirstName,BirthDate,photo,Notes)
VALUES('Herry','kane','2000-01-01',NULL,'soccer');