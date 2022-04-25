USE w3schools;

select * from Customers;
select * from Customers where Country = 'Brazil';
select * from Customers where Country = 'Brazil' and City = 'Rio de Janeiro';

select * from Customers;
select * from Customers where Country ='Germany' or City ='London';

select * from Customers where 1 =1;

-- 나라명 'or 1 = 1

select *from Customers where Country = '' or '1' = '1';


