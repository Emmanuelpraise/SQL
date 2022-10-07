USE sakila;
SELECT actor.actor_id, first_name, last_name, title, language.language_id, name  FROM actor, film_actor, film, language
WHERE actor.actor_id = film_actor.actor_id
AND film_actor.film_id = film.film_id
AND film.language_id = language.language_id
ORDER BY actor.actor_id;

-- SYNTAX OF STORED PROCEDURE
-- 			DELIMITER $$
-- 	CREATE PROCEDURE stored_procedure_ name()
-- 			 BEGIN
-- 		statements
-- 			END $$
-- 			DELIMITER;


CALL Show_Country_Names(500000,'Europe');
