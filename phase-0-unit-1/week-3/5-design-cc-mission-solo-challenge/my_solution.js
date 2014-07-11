// This is a solo challenge

// Your mission description:
// Make it through the labyrinth
// 
// 

// Pseudocode
// Create adventurer variable. Have adventurer choose whether or not to grab a weapon and then have the adventurer choose which door to go through to continue through the labyrinth.
// 
// 
// 
// 

// Initial Code
var adventurer = {
  health: 100,
  weapon: undefined,
}


 var greeting = prompt("You're an adventurer that has gotten lost in a labyrinth, you must make it out alive! Are you ready?(yes or no)").toLowerCase();

 switch(greeting) {
  case 'yes':
    confirm ("Lets go!");
  break;
 
  case 'no':
    confirm ("Too bad, you're trapped in here and have to escape!");
  break;
 }

function weaponfind(){
var weaponfind = prompt("You come across a previous adventurer and see that he had a sword, do you TAKE it or LEAVE it?").toUpperCase();

    if (weaponfind === 'TAKE'){
        confirm ("Now you're armed and dangerous!");
        adventurer.weapon = "Excalibur";
    }
    else if (weaponfind === 'LEAVE') {
        confirm ("You left the weapon behind");
        adventurer.weapon = "Fists";
    }
    else {
        confirm ("I didn't understand that, try again.");
        
    }
}
weaponfind();
while (adventurer.weapon === undefined){
weaponfind();
}
function doors(){
var doors = prompt ("While walking through the labyrinth, you come across 3 doors; on the LEFT, one on the RIGHT and one in the MIDDLE. Which do you choose?").toUpperCase();
  if (doors === 'LEFT') {
    confirm ("You opened the left door and ran into a troll!");
    adventurer.door = "troll";
  }
  else if (doors === 'RIGHT') {
    confirm ("You opened the right door and ran into some goblins!");
    adventurer.door = "goblins";
  }
  else if (doors === 'MIDDLE'){
    confirm ("You opened the middle door and ran into a minotaur!");
    adventurer.door = "minotaur"
  }
  else {
    confirm ("I didn't understand that, please try again.");
  }
  }
  doors();
  while (adventurer.door === undefined){
    doors();
  }




  


// Refactored Code
var adventurer = {
  health: 100,
  weapon: undefined,
}


var greeting = prompt("You're an adventurer that has gotten lost in a labyrinth, you must make it out alive! Are you ready?(yes or no)").toLowerCase();

	switch(greeting) {
  		case 'yes':
    		confirm ("Lets go!");
  		break;
 
  		case 'no':
    		confirm ("Too bad, you're trapped in here and have to escape!");
  		break;
 	}

function weaponfind(){
	var weaponfind = prompt("You come across a previous adventurer and see that he had a sword, do you TAKE it or LEAVE it?").toUpperCase();

    	if (weaponfind === 'TAKE'){
        	confirm ("Now you're armed and dangerous!");
        	adventurer.weapon = "Excalibur";
    	}
    	else if (weaponfind === 'LEAVE') {
        	confirm ("You left the weapon behind");
        	adventurer.weapon = "Fists";
    	}
    	else {
        	confirm ("I didn't understand that, try again.");
        
    	}
	}

weaponfind();

while (adventurer.weapon === undefined){
	weaponfind();
}

function doors(){
	var doors = prompt ("While walking through the labyrinth, you come across 3 doors; on the LEFT, one on the RIGHT and one in the MIDDLE. Which do you choose?").toUpperCase();
  		if (doors === 'LEFT') {
    		confirm ("You opened the left door and ran into a troll!");
    		adventurer.door = "troll";
  		}
  		else if (doors === 'RIGHT') {
    		confirm ("You opened the right door and ran into some goblins!");
    		adventurer.door = "goblins";
  		}
  		else if (doors === 'MIDDLE'){
    		confirm ("You opened the middle door and ran into a minotaur!");
    		adventurer.door = "minotaur"
  		}
  		else {
    		confirm ("I didn't understand that, please try again.");
  		}
  	}
doors();

while (adventurer.door === undefined){
    doors();
  	}









// Reflection
// I really researched how to create a game with moving characters, but I couldnt really figure out how to do it without any instruction and the time frame given to me. I faced the problem of having each character move and have different health pools and having them hurt each other. I had questions about how to get my idea to work, but the codes I saw from others were just too complicated for me to understand at my level. Having trouble making moving characters on a game screen and have those characters interact with each other. Learned more about functions through this challenge. I feel competent that I have the learning competncies down. I enjoyed the coding part (especially when it started to work). Reasearching what I wanted to do was tedious because there were examples, but I just couldnt assimilate the knowledge required to do the same.
// 
// 
// 
// 
// 
// 
// 