USE task;
SET SQL_SAFE_UPDATES=0;
CREATE TABLE student_details (
	id INT AUTO_INCREMENT KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	test_score INT,
	home_address VARCHAR(50)
);
INSERT INTO student_details (first_name, last_name, email, gender, test_score, home_address) VALUES
('Carlos', 'Crosland', 'ccrosland0@google.pl', 'Male', 14, '221 Weeping Birch Crossing'),
('Jaquith', 'Kinforth', 'jkinforth1@blogtalkradio.com', 'Female', 23, '19253 Merchant Alley'),
('Phyllys', 'Selkirk', 'pselkirk2@mlb.com', 'Female', 77, '184 Dennis Circle'),
('Beauregard', 'Spon', 'bspon3@hp.com', 'Male', 100, '2698 Merchant Street'),
('Junia', 'Tomes', 'jtomes4@simplemachines.org', 'Female', 64, '08 Bartillon Lane'),
('Cherida', 'March', 'cmarch5@quantcast.com', 'Female', 46, '759 Jay Point'),
('Yves', 'Heath', 'yheath6@google.com.hk', 'Male', 64, '65365 Kennedy Trail'),
('Donnamarie', 'Morson', 'dmorson7@reddit.com', 'Female', 14, '66 Clarendon Hill'),
('Beauregard', 'Mizzen', 'bmizzen8@usgs.gov', 'Male', 5, '685 Calypso Crossing'),
('Evelin', 'Cadigan', 'ecadigan9@unblog.fr', 'Male', 58, '8792 Debra Court'),
('Felice', 'Antliff', 'fantliffa@java.com', 'Male', 86, '06 Roxbury Trail'),
('Lenora', 'Poizer', 'lpoizerb@nytimes.com', 'Female', 98, '2307 Stoughton Drive'),
('Dolli', 'Gillogley', 'dgillogleyc@census.gov', 'Female', 34, '86 Colorado Point'),
('Valdemar', 'Gossage', 'vgossaged@hao123.com', 'Male', 85, '729 Graedel Trail'),
('Myrtle', 'Gabriel', 'mgabriele@sfgate.com', 'Female', 25, '812 Morrow Drive'),
('Harris', 'Scyone', 'hscyonef@jiathis.com', 'Male', 45, '7 Ludington Street'),
('Murry', 'Burtwell', 'mburtwellg@unc.edu', 'Male', 37, '21303 Clemons Trail'),
('Haywood', 'Ewell', 'hewellh@typepad.com', 'Male', 58, '3 Truax Drive'),
('Cammy', 'Tompkiss', 'ctompkissi@addthis.com', 'Female', 65, '413 Buena Vista Court'),
('Troy', 'Nerger', 'tnergerj@delicious.com', 'Male', 56, '79 Algoma Junction');

SELECT * FROM student_details;
ALTER TABLE student_details ADD grades VARCHAR(1);
-- ALTER TABLE student_details DROP grade 