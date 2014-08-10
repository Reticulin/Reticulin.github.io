# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

Josephs-MacBook-Air:~ Reticulin$ sqlite3 dummy.db
-- Loading resources from /Users/Reticulin/.sqliterc

## Release 1: Insert Data 
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-08-10 21:22:26  2014-08-10 21:22:26
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Joey', 'Sabato', 'pollenachoo@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-08-10 21:22:26  2014-08-10 21:22:26
2           Joey        Sabato      pollenachoo@gmail.com  2014-08-10 21:25:09  2014-08-10 21:25:09

## Release 2: Multi-line commands
email was not unique and the first_name was different

## Release 3: Add a column
sqlite> ALTER TABLE users
   ...> ADD nickname VARCHAR(64);
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nickname VARCHAR(64));
sqlite> UPDATE users
   ...> SET nickname = 'Kimchee'
   ...> WHERE first_name = 'Kimmey';
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-08-10 21:22:26  2014-08-10 21:22:26  Kimchee   
2           Joey        Sabato      pollenachoo@gmail.com  2014-08-10 21:25:09  2014-08-10 21:25:09 

## Release 4: Change a value
sqlite> UPDATE users
   ...> SET first_name = 'Kimmy', nickname = 'Ninja Coder', updated_at = DATETIME('now')
   ...> WHERE id = 1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-08-10 21:22:26  2014-08-10 21:34:56  Ninja Coder
2           Joey        Sabato      pollenachoo@gmail.com  2014-08-10 21:25:09  2014-08-10 21:25:09 
## Release 5: Reflect
This was a cool review for sql and I had fun with it. Simple, yet a worthwhile review. I look forward to using SQL more in the future.