-- Add the exercise code below
/*
Exercise 0:
Josephs-MacBook-Air:~ Reticulin$ sqlite3 test.db
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
*/

--Exercise 1:
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 ex1.db < ex1.sql
Josephs-MacBook-Air:desktop Reticulin$ ls -l
total 4832
drwxr-xr-x  5 Reticulin  staff      170 Jul 29 12:44 Sites
-rw-r--r--  1 Reticulin  staff     8192 Aug  4 22:23 ex1.db
-rw-r--r--  1 Reticulin  staff      109 Aug  4 22:23 ex1.sql
-rwxr-xr-x@ 1 Reticulin  staff   691140 Jun  4 21:26 sqlite3
-rwxr-xr-x@ 1 Reticulin  staff  1766468 Jun  4 21:26 sqlite3_analyzer
*/

--Exercise 2:
/*
sqlite> .schema
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);
CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);
CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);
sqlite>
*/

--Exercise 3
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -echo ex3.db < ex3.sql
INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Zed", "Shaw", 37);
INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);
*/

--Exercise 4
/*
$ sqlite3 -echo ex3.db < ex4.sql
INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);
$
*/

--Exercise 5
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -echo ex3.db < ex5.sql
SELECT * FROM person;
0|Zed|Shaw|37
SELECT name, age FROM pet;
Fluffy|1000
Gigantor|1
SELECT name, age FROM pet WHERE dead = 0;
Fluffy|1000
SELECT * FROM person WHERE first_name != "Zed";
Josephs-MacBook-Air:desktop Reticulin$ 
*/

--Exercise 6
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -column -header ex3.db < ex6.sql
id          name        age         dead      
----------  ----------  ----------  ----------
0           Fluffy      1000        0         
1           Gigantor    1           1         
Josephs-MacBook-Air:desktop Reticulin$ 
*/

--Exercise 7
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -echo ex3.db < ex7.sql
SELECT name, age FROM pet WHERE dead = 1;
Gigantor|1
DELETE FROM pet WHERE dead = 1;
SELECT * FROM pet;
0|Fluffy|Unicorn|1000|0
INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 0);
SELECT * FROM pet;
0|Fluffy|Unicorn|1000|0
1|Gigantor|Robot|1|0
Josephs-MacBook-Air:desktop Reticulin$ 
*/

--Exercise 8
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 mydata.db < code.sql
0|Zed|Shaw|37
Fluffy|1000
Gigantor|1
Fluffy|1000
0|Fluffy|1000|0
1|Gigantor|1|1
Gigantor|1
0|Fluffy|Unicorn|1000|0
0|Fluffy|Unicorn|1000|0
1|Gigantor|Robot|1|0
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -header -column -echo mydata.db < ex8.sql
DELETE FROM pet WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
    );
SELECT * FROM pet;
SELECT * FROM person_pet;
person_id   pet_id    
----------  ----------
0           0         
0           1         
DELETE FROM person_pet
    WHERE pet_id NOT IN (
            SELECT id FROM pet
            );
SELECT * FROM person_pet;
Josephs-MacBook-Air:desktop Reticulin$ 
*/

--Exercise 9
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -header -column -echo mydata.db < ex9.sql
UPDATE person SET first_name = "Hilarious Guy"
    WHERE first_name = "Zed";
UPDATE pet SET name = "Fancy Pants"
    WHERE id=0;
SELECT * FROM person;
id          first_name     last_name   age       
----------  -------------  ----------  ----------
0           Hilarious Guy  Shaw        37        
SELECT * FROM pet;
id          name         breed       age         dead      
----------  -----------  ----------  ----------  ----------
0           Fancy Pants  Unicorn     1000        0         
1           Gigantor     Robot       1           0         
Josephs-MacBook-Air:desktop Reticulin$ 
*/

--Exercise 10
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -header -column -echo mydata.db < ex10.sql
SELECT * FROM pet;
id          name        breed       age         dead      
----------  ----------  ----------  ----------  ----------
0           Fluffy      Unicorn     1000        0         
1           Gigantor    Robot       1           0         
UPDATE pet SET name = "Zed's Pet" WHERE id IN (
    SELECT pet.id
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "Zed"
);
SELECT * FROM pet;
id          name        breed       age         dead      
----------  ----------  ----------  ----------  ----------
0           Zed's Pet   Unicorn     1000        0         
1           Zed's Pet   Robot       1           0         
Josephs-MacBook-Air:desktop Reticulin$ 
*/

--Exercise 11
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -echo mydata.db < ex11.sql
INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);
Error: near line 1: PRIMARY KEY must be unique
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Frank', 'Smith', 100);
SELECT * FROM person;
0|Frank|Smith|100
REPLACE INTO person (id, first_name, last_name, age)
    VALUES (0, 'Zed', 'Shaw', 37);
SELECT * FROM person;
0|Zed|Shaw|37
Josephs-MacBook-Air:desktop Reticulin$
*/

--Exercise 12
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -echo ex12.db < ex12.sql
DROP TABLE IF EXISTS person;
CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);
ALTER TABLE person RENAME TO peoples;
ALTER TABLE peoples ADD COLUMN hatred INTEGER;
ALTER TABLE peoples RENAME TO person;
.schema person
CREATE TABLE "person" (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
, hatred INTEGER);
DROP TABLE person;
Josephs-MacBook-Air:desktop Reticulin$ 
*/

--Excercise 13
/*
Josephs-MacBook-Air:desktop Reticulin$ sqlite3 -echo mydata.db < ex13.sql
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
WHERE purchased_on > 2003-12-31;
0|0|2002
0|1|2002
SELECT * FROM pet
WHERE parent = 2;
3|Floppy|Doberman|1|0|2|1991
4|Choco|Black Labrador|1|0|2|1991
5|Muffin|Tabby Cat|1|0|2|1991
6|Nala|Bengal Cat|1|0|2|1991
*/


-- Reflection
--This was an interesting challenge. I was always interested in learning SQL which made this pretty fun, but the guide could have been much better. I won't hold it against the author since it was mentioned in the beginning that the guide was in it's alpha stages. All in all, I felt that it was a good intro into SQL and hopefully the author improves this guide and adds more material so I could learn more. 