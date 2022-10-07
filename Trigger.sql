CREATE TABLE trigger_test(
message VARCHAR(100)
);

DELIMITER $$
CREATE
	TRIGGER my_trigger BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN 
		INSERT INTO trigger_test VALUES('added new employee');
	END$$
	DELIMITER ;

INSERT INTO employee
VALUES( 111,'Pam', 'Beesly', '1988-02-19', 'F', 69000, 106,3);

DELIMITER $$
CREATE
	TRIGGER my_trigger1 BEFORE UPDATE
    ON employee
    FOR EACH ROW BEGIN 
		INSERT INTO trigger_test VALUES(NEW.first_name);
	END$$
	DELIMITER ;
    
DROP TRIGGER my_trigger1;
UPDATE employee
SET first_name = 'Peter', last_name = 'Barry'
WHERE emp_id = 103;

SELECT* from employee;
    
    DELIMITER $$
    CREATE
	TRIGGER my_trigger2 BEFORE INSERT
    ON employee
    FOR EACH ROW BEGIN 
		IF NEW.sex = 'M' THEN
			INSERT INTO trigger_test VALUES('Added Male employee');
        ELSEIF NEW.sex = 'F' THEN
			INSERT INTO trigger_test VALUES('Added Female employee');
		ELSE
			INSERT INTO trigger_test VALUES('Added other employee');
		END IF;
	END$$
    DELIMITER ;
    
INSERT INTO employee
VALUES( 112,'Henry', 'Beesly', '1984-12-09', 'F', 88000, 105,2);
    
    SELECT * FROM trigger_test;