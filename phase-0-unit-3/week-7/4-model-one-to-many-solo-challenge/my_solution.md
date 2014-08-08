# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
Full name, email, profile picture and description

## Release 1: Tweet Fields
regular text, pictures and links

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: tables
You need to have a user table with the user's info and also a tweet table which identifies the user sending the tweet so other users can distinguish.

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->

## Release 4: SQL Statements
SELECT tweet FROM Users WHERE user_id = 1;

SELECT tweet FROM Users JOIN Tweet ON (id=id) WHERE timestamp = 2014-08-06;

SELECT tweet FROM Users JOIN Tweet ON (id=id) WHERE username = 'Reticulin';

SELECT username FROM Tweet JOIN Users ON (id=id) WHERE user_id = 1;


## Release 5: Reflection
I have to say that I started this assignment thinking that I had to create a full fledge databaseand spent time planning it out when in reality all I had to do was create a scheme and enter the code to access the tables in that schema. Was still a fun experience and I think I really enjoy SQL. 