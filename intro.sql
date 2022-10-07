use introduction;
SET SQL_SAFE_UPDATES=0;

-- <-----DATA_TYPES----->
-- INT  --> Wholenumbers 
-- DECIMAL(M,N)  --> Decimal Numbers - exact value
-- VARCHAR(1)  --> String of text of length 1
-- BLOB  --> Binary Large Object, Stores large data 
-- DATE  --> 'YYYY-MM-DD'
-- TIMESTAMP  --> 'YYYY-MM-DD HH:MM:SS' - Used for recording

-- <-----OPERATORS----->
-- <, >, <=, >=, =, <>, AND, OR 

CREATE TABLE student (
	Student_id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    -- Major VARCHAR(20) UNIQUE
    Major VARCHAR(20) DEFAULT 'Undecided'
	-- PRIMARY KEY(student_id)
);

drop table student;
SELECT * FROM student;

INSERT INTO student(Name, Major) VALUES('Praise', 'Biology');
INSERT INTO student(Name, Major) VALUES('Kate', 'Physics');
INSERT INTO student(Name) VALUES('Jake');
INSERT INTO student(Name, Major) VALUES('Jack', 'Sociology');
INSERT INTO student(Name, Major) VALUES('Mark', 'Computer-Science');
INSERT INTO student(Name, Major) VALUES('Mary', 'Chemistry');

UPDATE student
SET Major = 'Bio'
WHERE Major = 'Biology';

UPDATE student
SET Name = 'Emmanuel', Major = 'Geography'
WHERE Student_id = 3;

UPDATE student
SET Major = 'Biochemistry'
WHERE Major = 'Bio' OR Major = 'Chemistry';

UPDATE student
SET Major = 'Undecided';  -- This affects all on the Major Column 

DELETE FROM student;  -- This delete all on the table

DELETE FROM student
WHERE Student_id = 6;

DELETE FROM student
WHERE Name = 'Jack' AND Major = 'Sociology';

SELECT Name FROM student;
SELECT Name, Major FROM student;
SELECT student.Name, student.Major FROM student ORDER BY Name;
SELECT student.Name, student.Major FROM student ORDER BY Name DESC;
SELECT * FROM student ORDER BY Student_id DESC;
SELECT * FROM student ORDER BY Student_id ASC;
SELECT * FROM student ORDER BY Major, Student_id;
SELECT * FROM student ORDER BY Major, Student_id DESC;
SELECT * FROM student LIMIT 2;
SELECT * FROM student ORDER BY Student_id DESC LIMIT 2;
SELECT * FROM student WHERE Major = 'Biology';
SELECT * FROM student WHERE Major = 'Chemistry';
SELECT Name, Major FROM student WHERE Major = 'Chemistry' OR Major = 'Biology';
SELECT Name, Major FROM student WHERE Major = 'Chemistry' OR Major = 'Mary';
SELECT Name, Major FROM student WHERE Major = 'Chemistry' <> Major = 'Mary';
SELECT * FROM student WHERE Student_id < 3;
SELECT * FROM student WHERE Student_id <= 3;
SELECT * FROM student WHERE Student_id <= 3 AND Name <> 'Praise';
SELECT * FROM introduction.student WHERE Name IN ('Jack','Praise','Mary');
SELECT * FROM student WHERE Major IN ('Sociology','Computer-Science','Biology');
SELECT * FROM student WHERE Major IN ('Sociology','Computer-Science','Biology') AND Student_id > 2;

SELECT * FROM student;

DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3,2);

ALTER TABLE student DROP COLUMN gpa;