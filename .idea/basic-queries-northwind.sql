select productid, productname, unitprice from products;


SELECT ProductID, ProductName, UnitPrice FROM Products ORDER BY UnitPrice ASC;

SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC;


SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50;


SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;


SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;


SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0
  AND UnitsOnOrder >= 1
ORDER BY ProductName;