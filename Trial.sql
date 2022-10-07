CREATE TABLE Users(
 SN INT AUTO_INCREMENT PRIMARY KEY,
 First_name VARCHAR(15),
 Surname VARCHAR(15),
 Username VARCHAR(15),
 Password VARCHAR(15) UNIQUE,
 Email VARCHAR(30),
 Date_Time_Created TIMESTAMP
);

INSERT INTO Users(First_name, Surname, Username, Password, Email, Date_Time_Created) 
VALUE('Praise','Ayelabola','emmanuelpraise','PASSword@2812','emmanuelpraise36@gmail.com','2022-01-23 12:32:34');
INSERT INTO Users(First_name, Surname, Username, Password, Email, Date_Time_Created) 
VALUE('Emmanuel','Shodunke','emmawuel','PASSword','emmawuel@gmail.com','2021-07-02 16:22:46');
INSERT INTO Users(First_name, Surname, Username, Password, Email, Date_Time_Created) 
VALUE('Isaiah','Ayelabola','remiton','RemiTon@2512','Remiton251210@gmail.com','2022-04-30 7:30:04');
INSERT INTO Users(First_name, Surname, Username, Password, Email, Date_Time_Created) 
VALUE('Olabisi','Ayelabola','Olabs','WORDpass','olabs230612@gmail.com','2020-11-23 14:42:59');

SELECT * FROM Users;
DROP TABLE Users;