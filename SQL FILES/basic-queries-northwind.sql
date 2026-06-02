-- //1.products

--2. Write a query to list the product id, product name, and unit price of every
--product.
select productid, productname, unitprice from products;

--3. Write a query to list the product id, product name, and unit price of every
--product. Except this time, order then in ascending order by price
SELECT ProductID, ProductName, UnitPrice FROM Products ORDER BY UnitPrice ASC;


--4. What are the products that we carry where the unit price is $7.50 or less?
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50;

--5.What are the products that we carry where we have at least 100 units on hand?
--Order them in descending order by price.
----Konbu-Guaran Fantstica-Geitost-Filo Mix-Tourtire
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;


--6. What are the products that we carry where we have at least 100 units on hand?
--Order them in descending order by price. If two or more have the same price, list
--those in ascending order by product name
--Sirop d'rable Grandma's, Boysenberry Spread, Pt chinois, Gustaf's Knckebrd, Inlagd Sill, Boston Crab Meat, Rd Kaviar, Sasquatch Ale, Rhnbru Klosterbier, Geitost
SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;

--7. What are the products that we carry where we have no units on hand, but 1 or
--more units of them on backorder? Order them by product name
SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0
  AND UnitsOnOrder >= 1
ORDER BY ProductName;

--8. What is the name of the table that holds the types (categories) of the items
--Northwind sells? Categories

--9. Write a query that lists all of the columns and all the rows of the categories table?
--What is the category id of seafood? 8 is the ID
SELECT *
FROM Categories;

--10. Examine the Products table. How does it identify the type (category) of each item
--sold? Write a query to list all of the seafood items we carry? The products table indentifies the category using the
--CategoryID column.
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE CategoryID = 8;


--11. What are the first and last names of all of the Northwind employees?
--Steven Buchanan, Robert King, Nancy Davolio, Michael Suyama, Margaret	Peacock, Laura	Callahan, Janet	Leverling,
-- Anne	Dodsworth, Andrew Fuller
select FirstName, LastName from employees;

-- 12. What employees have "manager" in their titles? Steven Buchanan
select firstname, lastname, title from employees where title like '%manager%'

-- 13.  List the distinct job titles in employees.
--Sales Representative,Vice President Sales,Sales Manager, Inside Sales Coordinator
select distinct title from employees;

--14. What employees have a salary that is between $2000 and $2500?
--Andrew Fuller, Michael Suyama, Laura Callahan, Anne Dodsworth
SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500;


--15.  List all the information about all of Northwind's suppliers.
select * From suppliers;

--Examine the Products table. How do you know what supplier supplies each product?
-- The Products table uses SupplierID to show which supplier supplies each product.
-- Write a query to list all the items that "Tokyo Traders" supplies to Northwind
SELECT p.ProductID, p.ProductName, p.UnitPrice FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID WHERE s.CompanyName = 'Tokyo Traders';