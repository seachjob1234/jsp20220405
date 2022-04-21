-- --는 한 줄 주석
-- select : 테이블에 있는 데이터 가져오는 명령문
-- FROM 키워드가 어떤 테이블
-- ; 명령문 종료
select * from Customers;

-- data :table의 한 줄(row, record)

-- 8개의 테이블 조회 완성
select * from Categories;
select * from Employees;
select * from OrderDetails;
select * from Shippers;

-- 특성속성(attribute, colum, field)만 조회
-- select 키워드 다음에 column명 나열
-- * 모든 column
select * from Customers;
select Customername,Address from Customers;

-- Empolyess 테이블에서 firstname과 brithdate 만 조회
select FirstName, BirthDate from Employees;
-- Firstname이 왼쪽에 위치하도록 조회 쿼리 작성
select FirstName, LastName from Employees;
select LastName, FirstName from Employees;

-- 대소문자 구분 안함(데이터베이스 Vendor 마다 다름)
select FIRSTNAME, LASTNAME from Employees;

-- 작성 관습 키워드는 대문자
-- 컬럼명은 lowerCameLCase,snake_case,SNAKE_CASE