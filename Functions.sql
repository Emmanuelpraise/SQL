USE introduction;
SELECT CustomerName FROM customers;
SELECT UPPER(CustomerName) FROM customers;
SELECT LOWER(CustomerName) FROM customers;
SELECT LENGTH(CustomerName) FROM customers;
-- print the name of customers whose name has 4 character
SELECT CustomerName FROM customers WHERE LENGTH(CustomerName) = 4;
SELECT TRIM('    VICTOR     ');
SELECT TRIM('z' FROM 'zzzzoraclezzzz');
SELECT INSTR('ORACLE','E'); -- This is used to check for position of "E" in "ORACLE"

-- SUBSTR IS SAME AS SUBSTRING
SELECT SUBSTR('ORACLE', 2, 3); -- RAC SUBSTR("PARAMETER", STARTING VALUE, ENDING VALUE)
SELECT SUBSTR('ORACLE', 3, 3); -- ACL
SELECT SUBSTR('ORACLE', 4, 3); -- CLE

SELECT SUBSTRING('ORACLE', 2, 3); -- RAC SUBSTRING("PARAMETER", STARTING VALUE, ENDING VALUE)
SELECT SUBSTRING('ORACLE', 2, 3); -- ACL
SELECT SUBSTRING('ORACLE', 2, 3); -- CLE

-- print first three characters of customers in the customer table
SELECT SUBSTRING(CustomerName, 2, 3) FROM customers ;
SELECT CONCAT('ORACLE ', 'TRAINING') TRAINING;
SELECT CONCAT(CustomerName,' ', ContactName) FULLNAME FROM customers ;

-- ALTER USER 'root'@'localhost' IDENTIFIED BY 'password'; this is to change temporary password
