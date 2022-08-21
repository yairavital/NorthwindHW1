--Ex1
SELECT p.ProductName,p.QuantityPerUnit
FROM Products p
--Ex2
SELECT p.ProductID,p.ProductName
FROM Products p
where Discontinued = 0
order by ProductName

--Ex3
SELECT p.ProductID,p.ProductName
FROM Products p
where Discontinued = 1
order by ProductName
--EX4
SELECT p.ProductName,p.UnitPrice
FROM Products p
order by UnitPrice desc
--EX5
SELECT p.ProductID,p.ProductName,p.UnitPrice
FROM Products p
WHERE p.Discontinued=0 AND p.UnitPrice<20
--EX6
SELECT p.ProductID,p.ProductName,p.UnitPrice
FROM Products p
WHERE p.UnitPrice BETWEEN 15 AND 25
--EX7
SELECT p.ProductName,p.UnitPrice
FROM Products p
WHERE p.UnitPrice>(
SELECT AVG(p.UnitPrice)
FROM Products p)
--EX8
SELECT TOP 10 p.ProductName,p.UnitPrice
FROM Products p
ORDER BY p.UnitPrice DESC
--EX9
SELECT COUNT(p.Discontinued) discountinued,(SELECT COUNT(p.ProductID)
FROM Products p )-(SELECT COUNT(p.Discontinued)FROM Products p
WHERE p.Discontinued=0) currentt
FROM Products p
WHERE p.Discontinued=0 

--EX10
SELECT p.ProductName,p.UnitsInStock,p.UnitsOnOrder
FROM Products p
WHERE p.UnitsInStock<p.UnitsOnOrder




