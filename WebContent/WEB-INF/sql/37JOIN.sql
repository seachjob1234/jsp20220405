USE w3schools;

-- Orders : 주문
-- Customers: 고객
-- 주문한 적없는 고객 조회
select * from Orders;
select * from Customers;


select c.CustomerName
from Customers c left join Orders o On c.CustomerID = o.CustomerID
WHERE o.OrderID is NULL;

-- 고객별 주문 건수 0건도
select  c.CustomerName, COUNT(o.OrderID) 
FROM Customers c left join Orders o 
on c.CustomerID = o.CustomerID
group by c.CustomerID
order by c.CustomerID DESC;


