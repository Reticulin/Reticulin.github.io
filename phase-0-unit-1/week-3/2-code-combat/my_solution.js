// I worked on this challenge [by myself, with:]
 
// For each mission, write the title as a comment. (Shown here). Also include pseudocode as a comment. 
// Note: to make commenting easier, you can highlight the section you want to comment and hold 
// command + / This will comment the line. 
 
 //Rescue Mission
 Move Down
 Move Down
 Move Right
 Move Up
 Move Up
 Move Right
 Move Right
 Move Down
 Attack Nearby Enemy

this.moveDown();
this.moveDown();
this.moveRight();
this.moveUp();
this.moveUp();
this.moveRight();
this.moveRight();
this.moveDown();
this.attackNearbyEnemy();

 //Grab The Mushroom
 Move Up
 Move Right
 Move Left
 Move Up
 Attack Nearby Enemy

this.moveUp();
this.moveRight();
this.moveLeft();
this.moveUp();
this.attackNearbyEnemy();

 //Drink Me
 Move Right
 Attack Nearby Enemy
 Move Right
 Move Down
 Move Up
 Move Right
 Attack Nearby Enemy

this.moveRight();
this.attackNearbyEnemy();
this.moveRight();
this.moveDown();
this.moveUp();
this.moveRight();
this.attackNearbyEnemy();

 //Taunt the Guards
 Move Right
 Bust Down Door
 Move Right
 Say "Hey There!"
 Move Left
 Move Left
 Say "Attack!"
 Move Right
 Say "Follow Me!"
 Move Right
 Move Right
 Move Up
 Move Right
 Say "Hey There!"
 Move Down
 Move Right
 Move Up
 Move Right

this.moveRight();
this.bustDownDoor();
this.moveRight();
this.say("Hey there!");
this.moveLeft();
this.moveLeft();
this.say("Attack!");
this.moveRight();
this.say("Follow me.");
this.moveRight();
this.moveRight();
this.moveUp();
this.moveRight();
this.say("Hey there!");
this.moveDown();
this.moveRight();
this.moveUp();
this.moveRight();


 //It's A Trap!
 Move Down
 Move Down
 Say "Hey There!"
 Move Up
 Move Up

this.moveDown();
this.moveDown();
this.say("Hey there!");
this.moveUp();
this.moveUp();

 //Taunt
 Say "Hey!"
 Say "Screw You!"
 Say "Your mother was a human!"
 Say "What happened to your face?"

this.say("Hey!");
this.say("Screw you!");
this.say("Your mother was a human!");
this.say("Whate happened to your face?");


 //Cowardly Taunt
 Move XY (50, 16)
 Move XY (63, 20)
 Move XY (70, 10)
 Say "I can lure them in here."
 Move XY (49, 19)
 Say "Such WOW"
 Move XY (70, 10)

this.moveXY(50, 16);
this.moveXY(63, 20);
this.moveXY(70, 10);  // This is a safe spot.
this.say("I can lure them in here.");
this.moveXY(49, 19);
this.say("Such WOW");
this.moveXY(70, 10);

 //Commanding Followers
 Move XY (49, 66)
 Move XY (60, 63)
 Move XY (75, 63)
 Say "Hello, friends!"
 Say "Follow me!"
 Move XY (60, 40)
 Say "Attack!"

this.moveXY(49, 66);
this.moveXY(60, 63);
this.moveXY(75, 63);
this.say("Hail, friends!");
this.say("Follow me!");
this.moveXY(60, 40);
this.say("Attack!");

 //Mobile Artillery
 Move XY (30, 26)
 Attack XY (46, 5)
 Move XY(47. 37)
 Attack XY (68,56)
 Attack XY (55, 42)
 Attack XY(49, 66)
 Attack XY (49, 54)
 Move XY (42, 8)
 Attack XY (44, 21)
 
this.moveXY(30, 26);
this.attackXY(46, 5);
this.moveXY(47, 37);
this.attackXY(68, 56);
this.attackXY(55, 42);
this.attackXY(49, 66);
this.attackXY(49, 54);
this.moveXY(42, 8);
this.attackXY(44, 21);
 
 
 
 
 
 
 
// Reflection:
// Write your reflection here.

"I was very surprised to find that somebody had made a game to help learn
code, however it still is just a game. I felt it needed some parts to explain
what each syntax does and what the meaning of () and ; are for. All in all it
was a fun learning experience and I hope learning the rest of java script is
this much fun."
