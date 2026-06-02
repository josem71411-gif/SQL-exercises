select productid, productname, unitprice from products;


SELECT ProductID, ProductName, UnitPrice FROM Products ORDER BY UnitPrice ASC;

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

SELECT *
FROM Categories;

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE CategoryID = 8;

select FirstName, LastName from employees;

select firstname, lastname, title from employees where title like '%manager%'

select distinct title from employees;

SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500;

select * From suppliers;

SELECT p.ProductID, p.ProductName, p.UnitPrice FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE s.CompanyName = 'Tokyo Traders';