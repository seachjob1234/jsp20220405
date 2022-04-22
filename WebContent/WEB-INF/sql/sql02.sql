USE w3schools;

select * from Employees;
select FirstName from Employees;

-- where : 어떤 row(record)를 선택할 지 결정하는 키워드alter
-- 나라가 멕시코인 고객들 조회

select * from Customers

where Country  = 'Mexico';
-- 예제2> 나라가 독일인 고객들 조회
select * from Customers
where Country = 'germany';

-- 작은따옴표 : 문자열값
-- 예제3) 고객ㄱid가 1번인 고객 조회
select * from Customers where CustomerId = 1; -- 수형식은 작은 다옴표 안씀 근데 서도됨 
select * from Customers where CustomerId = '90';
select * from Customers where CustomerId = '1';
select * from Customers where Country = germany; -- 문자형식은 작은 따옴표 꼭 써야함.

-- 예제4> 1번 고객의 이름 조회
select  CustomerName  from Customers where CustomerId = '1';
                                                                            
select CustomerName, Address, City, Postalcode, Country from Customers where  CustomerId ='1';