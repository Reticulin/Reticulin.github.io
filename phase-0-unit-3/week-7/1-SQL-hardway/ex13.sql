ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number INTEGER;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;
ALTER TABLE pet ADD COLUMN parent INTEGER;
ALTER TABLE pet ADD COLUMN dob DATETIME;

UPDATE person
SET dead = 0, phone_number = 1111111, salary = 20000, dob = 1812-01-01
WHERE first_name = "Zed";

UPDATE pet
SET dob = 1998-03-04
WHERE name = "Fluffy";

UPDATE pet
SET dob = 2004-05-05, parent = 0
WHERE name = "Gigantor";

UPDATE person_pet
SET purchased_on = 2012-04-06
WHERE person_id = 0;

INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
	VALUES (1, 'Joey', 'Sabato', 26, 0, 1111112, 100000, 1988-01-24),
	(2, 'Sarah', 'Sabato', 25, 0, 1111113, 80000, 1989-05-05),
	(3, 'Martin', 'Wai', 25, 0, 1111114, 50000, 1988-08-07),
	(4, 'Ellen', 'Sabato', 65, 1, 1111115, 200000, 1950-05-10);

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
	VALUES (2, 'Sparky', 'Golden Retriever', 5, 0, 2008-06-04, NULL),
	(3, 'Floppy', 'Doberman', 1, 0, 2013-09-13, 2),
	(4, 'Choco', 'Black Labrador', 1, 0, 2013-09-13, 2),
	(5, 'Muffin', 'Tabby Cat', 1, 0, 2013-09-13, 2),
	(6, 'Nala', 'Bengal Cat', 1, 0, 2013-09-13, 2);

SELECT * FROM person_pet
WHERE purchased_on >= 2003-12-31;

SELECT * FROM pet
WHERE parent = 2;