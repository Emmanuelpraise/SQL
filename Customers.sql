USE introduction;
SET SQL_SAFE_UPDATES=0;
create table Customers (
	CustomerID INT,
	CustomerName VARCHAR(50),
	ContactName VARCHAR(50),
	Address VARCHAR(50),
	City VARCHAR(50),
	PostalCode VARCHAR(50),
	Country VARCHAR(50)
);
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (1, 'Twimm', 'Portwain', '10156 Lillian Circle', 'Tokuyama', '526-0212', 'Japan');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (2, 'Pixope', 'Levings', '0550 Almo Avenue', 'Quipot', '5014', 'Philippines');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (3, 'Plambee', 'Rivelon', '06161 Fieldstone Street', 'Huanglong', null, 'China');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (4, 'Brainlounge', 'Fairbard', '798 Clyde Gallagher Hill', 'Arazane', null, 'Morocco');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (5, 'Realblab', 'Hitschke', '076 Lakeland Circle', 'Luzhang', null, 'China');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (6, 'Skinte', 'Hodgin', '88722 Elmside Drive', 'Münster', '48161', 'Germany');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (7, 'Aibox', 'Troubridge', '28 Morningstar Lane', 'Jojoima', null, 'Sierra Leone');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (8, 'Izio', 'Gawthrope', '060 Corry Way', 'Cortes', '6341', 'Philippines');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (9, 'Muxo', 'Kender', '04243 Novick Alley', 'Klek', null, 'Serbia');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (10, 'Skimia', 'Kingham', '1 Dakota Crossing', 'Lamawan', null, 'China');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (11, 'Eazzy', 'MacKomb', '967 Briar Crest Point', 'Xiaxindian', null, 'China');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (12, 'Yakidoo', 'Minor', '84 Oxford Parkway', 'Jatake', null, 'Indonesia');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (13, 'Chatterpoint', 'Beldham', '0062 Linden Road', 'Kranj', '4600', 'Slovenia');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (14, 'Skinix', 'Owen', '0501 Lighthouse Bay Pass', 'Nijmegen', '6539', 'Netherlands');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (15, 'Gabcube', 'O''Heyne', '957 Clyde Gallagher Park', 'Cintra', '2559', 'Argentina');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (16, 'Wordify', 'Stockow', '1 Boyd Alley', 'Ordzhonikidzevskaya', '386245', 'Russia');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (17, 'Ntag', 'McCaig', '29 Holmberg Way', 'Donnybrook', 'D04', 'Ireland');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (18, 'Dynabox', 'Shannon', '7547 Londonderry Pass', 'Anhai', null, 'China');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (19, 'Vipe', 'Brockie', '51644 Continental Drive', 'Quxi', null, 'China');
insert into Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values (20, 'Ailane', 'Lymer', '917 Debs Parkway', 'Cincinnati', '45296', 'United States');

SELECT * FROM introduction.Customers;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT DISTINCT Country FROM Customers;

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

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

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

CREATE TABLE Shippers(
ShipperID INT AUTO_INCREMENT KEY,
ShipperName VARCHAR(20)
);
INSERT INTO Shippers(ShipperName) VALUES('Speedy Express');
INSERT INTO Shippers(ShipperName) VALUES('United Package');
INSERT INTO Shippers(ShipperName) VALUES('Federal Shipping');
SELECT * FROM Shippers;

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

CREATE TABLE Employees(
EmployeeID INT AUTO_INCREMENT KEY,
LastName VARCHAR(20),
FirstName VARCHAR(20),
BirthDate DATE,
Photo VARCHAR(10),
Note VARCHAR(40)
);
INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Note) VALUES('Davolio','Nancy','1968-12-08','EmpID1.pic','Education includes a BA....');
INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Note) VALUES('Fuller','Andrew','1952-02-19','EmpID2.pic','Andrew received his BTS....');
INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Note) VALUES('Leverling','Janet','1963-08-30','EmpID3.pic','Janet has a BS degree....');
SELECT * FROM introduction.Employees;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';

SELECT * FROM Customers;