CREATE TABLE goods(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20),
quantity INT,
price INT
);

INSERT INTO goods(name, quantity, price) VALUES('Milo', 10, 650);
INSERT INTO goods(name, quantity, price) VALUES('Bornvita', 40, 2600);
INSERT INTO goods(name, quantity, price) VALUES('Peak', 25, 1500);
INSERT INTO goods(name, quantity, price) VALUES('rice', 10, 150000);
INSERT INTO goods(name, quantity, price) VALUES('coke', 100, 50000);
INSERT INTO goods(name, quantity, price) VALUES('Peak', 22, 100);

SELECT * FROM introduction.goods;

UPDATE goods SET name = 'indomie' WHERE id = 1;
UPDATE goods SET price = 1000 WHERE id = 1;
UPDATE goods SET quantity = 25 WHERE id = 4;
UPDATE goods SET name = 'yogurt' WHERE id = 3;
UPDATE goods SET price = 3000 WHERE id = 2;
UPDATE goods SET quantity = 35 WHERE id = 5;

DELETE FROM goods WHERE id = 6;
DELETE FROM goods WHERE id = 2;

USE introduction;
SELECT id, name, price - (0.1 * price) AS decrement FROM goods 

-- DROP TABLE goods;