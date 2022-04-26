USE w3schools;

select * FROM Customers limit 3; -- 조회결과 중 첫번째 3개 레코드만
select * FROM Customers limit 10; -- 조회결과 중 첫번째 3개 레코드만

select * from Employees;
select * FROM Employees limit 3;
select * from Employess order by BirthDate limit 2;
select * FROM Employees order by BirthDate desc limit 2;

-- 테이블 조회해서 가장 가격이 비싼 상품 3개 조회

select * from Products order by Price desc limit 3;
select * from Products order by Price desc limit 0, 3;

-- limit 부터 몇개 
-- 프로덕트 테이블 조홰해서 두번째로 가격이 비싼 샘플부 터 내번째 가격이 비싼 상품 조회
select * from Products order by Price desc limit 1, 3;


-- 직원 중 두 번째로 나이가 많은 사람 조회
select * from Employees order by BirthDate LIMIT 1, 1;
SELECT * FROM Employees order by BirthDate desc Limit 1,1;
-- 직원 중 두 번째로 나이가 어린 사람 조회


select COUNT(*) FROM Customers;
DESC Customers;
insert INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
(SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country);
