use w3schools;

SELECT *from Customers order by ContactName;
select *from Customers order by City;

-- asc : 오름차순
-- desc :내림차순 

select * from Customers ordeR by ContactName ASC;
select * from Customers ordeR by ContactName DESC;

-- 여러열 기준으로 정렬
SELECT * FROM Customers ORDER BY Country, city;
SELECT * FROM Customers ORDER BY Country asc, city asc;
SELECT * FROM Customers ORDER BY Country desc, city;

-- 연습1) 직원(Employees) 생일 내림차순,LastNAME 오름차순
SELECT * from Employees ORDER BY BirthDate desc, LastName;
SELECT Distinct* from  Customers ORDER BY City;
SELECT Distinct* from Customers ORDER BY Country;

-- 컬럼번호로 정렬 가능
SELECT * FROM Customers ORDER BY 5;
SELECT * FROM Customers ORDER BY 5;
