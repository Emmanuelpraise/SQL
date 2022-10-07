USE introduction;
CREATE TABLE Products(
ProductID INT AUTO_INCREMENT KEY,
ProductName VARCHAR(30),
SupplierID INT,
CategoryID INT,
Unit VARCHAR(30),
Price INT
);

INSERT INTO Products(ProductName, SupplierID, CategoryID, Unit, Price) VALUES('Chais','1','1','10 boxes * 20 bags','18');
INSERT INTO Products(ProductName, SupplierID, CategoryID, Unit, Price) VALUES('Chang','1','1','24 - 12 oz bottles','19');
INSERT INTO Products(ProductName, SupplierID, CategoryID, Unit, Price) VALUES('Aniseed Syrup','1','2','12 - 550 ml bottles','10');
INSERT INTO Products(ProductName, SupplierID, CategoryID, Unit, Price) VALUES("Chef Anto's Cajun Seasoning",'2','2','48 - 6 oz jars','22');
INSERT INTO Products(ProductName, SupplierID, CategoryID, Unit, Price) VALUES("Chef Anto's Gumbo Mix",'2','2','36 boxes','21.35');

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MAX(Price) AS largestPrice
FROM Products;

SELECT COUNT(ProductID)
FROM Products;

SELECT AVG(Price)
FROM Products;

SELECT* FROM introduction.Products;

CREATE TABLE OrderDetails(
OrderDetailID INT AUTO_INCREMENT KEY,
OrderID INT,
ProductID INT,
Quantity INT
);

INSERT INTO OrderDetails(OrderID, ProductID, Quantity) VALUES(10248,11,12);
INSERT INTO OrderDetails(OrderID, ProductID, Quantity) VALUES(10248,42,10);
INSERT INTO OrderDetails(OrderID, ProductID, Quantity) VALUES(10248,72,5);
INSERT INTO OrderDetails(OrderID, ProductID, Quantity) VALUES(10249,14,9);
INSERT INTO OrderDetails(OrderID, ProductID, Quantity) VALUES(10249,51,40);

SELECT* FROM introduction.OrderDetails; 

DROP TABLE OrderDetails;

SELECT SUM(Quantity)
FROM OrderDetails;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT * FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;

SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

CREATE TABLE Orders(
OrderID INT,
CustomerID INT,
EmployeeID INT,
OrderDate DATE,
ShipperID INT
);
INSERT INTO Orders(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES(1024, 90,5, '1996-7-4',3);
INSERT INTO Orders(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES(10249,81,6, '1996-7-5',1);
INSERT INTO Orders(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES(10250,34,4, '1996-7-8',2);
INSERT INTO Orders(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES(10251,84,3, '1996-7-9',1);
INSERT INTO Orders(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) VALUES(10252,76,4, '1996-7-10',2);
SELECT * FROM Orders;

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName='Around the Horn' AND Customers.CustomerID=Orders.CustomerID;

SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

CREATE TABLE Suppliers(
SupplierID INT AUTO_INCREMENT KEY,
SupplierName VARCHAR(30),
ContactName VARCHAR(30),
Address VARCHAR(40),
City VARCHAR(20),
PostalCode VARCHAR(10),
Country VARCHAR(20)
);
INSERT INTO Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country) VALUES('Exotic Liquid','Charlotte Cooper','49 Gilbert St.','London','EC1 4SD','UK');
INSERT INTO Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country) VALUES('New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934','New Orleans','70117','USA');
INSERT INTO Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country) VALUES("Grandma Kelly's Homestead",'Regina Murphy','707 Oxford Rd.','Ann Arbor','48104','USA');
SELECT * FROM Suppliers;

SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

CREATE TABLE Shippers(
ShipperID INT AUTO_INCREMENT KEY,
ShipperName VARCHAR(20)
);
INSERT INTO Shippers(ShipperName) VALUES('Speedy Express');
INSERT INTO Shippers(ShipperName) VALUES('United Package');
INSERT INTO Shippers(ShipperName) VALUES('Federal Shipping');
SELECT * FROM Shippers;

CREATE TABLE Employees(
EmployeeID INT AUTO_INCREMENT KEY,
LastName VARCHAR(20),
FirstName VARCHAR(20),
BirthDate DATE,
Photo BLOB,
Note VARCHAR(40)
);
INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Note) VALUES('Davolio','Nancy','1968-12-08','EmpID1.pic','Education includes a BA....');
INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Note) VALUES('Fuller','Andrew','1952-02-19','EmpID2.pic','Andrew received his BTS....');
INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Note) VALUES('Leverling','Janet','1963-08-30','EmpID3.pic','Janet has a BS degree....');
SELECT * FROM introduction.Employees;
