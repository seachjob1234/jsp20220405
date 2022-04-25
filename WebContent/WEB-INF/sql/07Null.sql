use w3schools;

SELECT * FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Employees WHERE Photo = 'pic999';

-- 조회시 is NULL

SELECT *FROM Employees WHERE Photo IS NULL;
SELECT *FROM Employees WHERE Photo IS NOT NULL; -- 주로 씀
SELECT *FROM Employees WHERE NOT Photo IS NULL;

-- 그룹함수에서 보통 제외됨

SELECT COUNT(*) FROM Employees; -- 레코드 수

SELECT COUNT(LastName) FROM Employees;
SELECT COUNT(Photo) FROM Employees;