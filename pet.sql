CREATE TABLE pet(
name VARCHAR(20),
owner VARCHAR(20),
species VARCHAR(15),
sex VARCHAR(1),
birth date,
death date
);

INSERT INTO pet(name, owner, species, sex, birth) VALUE('Fluffy','Harold','cat','F','1993-02-02');
INSERT INTO pet(name, owner, species, sex, birth) VALUE('Claws','Gwen','cat','M','1994-03-17');
INSERT INTO pet(name, owner, species, sex, birth) VALUE('Buffy','Harold','dog','F','1989-05-13');
INSERT INTO pet(name, owner, species, sex, birth) VALUE('Fnag','Benny','dog','M','1990-08-27');
INSERT INTO pet VALUE('Browser','Diane','dog','M','1979-08-31','1995-07-29');
INSERT INTO pet(name, owner, species, sex, birth) VALUE('Chirpy','Gwen','bird','F','1998-09-11');
INSERT INTO pet(name, owner, species, birth) VALUE('Whistler','Gwen','bird','1997-12-09');
INSERT INTO pet(name, owner, species, sex, birth) VALUE('Slim','Benny','snake','M','1996-04-29');

SELECT* FROM pet;
select datediff(death,birth)from pet where name = 'Browser';