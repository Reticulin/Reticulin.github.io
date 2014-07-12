// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1.Joe Sabato
//  2.Devon Bradley


// 0. "YOU SIGNED... WHO?!"
var dBradley = {
    name: "Devon Bradley",
    age: 22,
    quote: "Winning is everything."
    };
    
    
var jSabato = {
    name: "Joe Sabato",
    age: 26,
    quote: "Pizza is delicious."
    };


// 1. "Here they Come!"


var aSandler = {
    name: "Adam Sandler",
    age: 47,
    quote: "That's your home! Are you too good for your home?!"
};

var kBell = {
    name: "Kristen Bell",
    age: 33,
    quote: "Do you wanna build a snowman?"
};

var jCarrey ={
    name: "Jim Carrey",
    age: 52,
    quote: "...So you're telling me there's a chance? YEAH!"
    };
    
var clients = [aSandler,kBell,jCarrey];



// 2. "TIME IS MONEY!"

//YOUR CODE HERE!

function Client(name, age, quote) {
    this.name = name;
    this.age = age;
    this.quote = quote;
    };
    

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";





// 3. "SHOW 'EM OFF!"

function showClients(clients){
    for (var i = 0; i < clients.length; i++) {
        console.log("Name: " + clients[i].name +  '\n' + "Age: " + clients[i].age +  '\n'  + "Quote: " + clients[i].quote +  '\n')
    };
};



// 4. "But wait, there's more!"

aSandler.showQuote = console.log("Quote: "+ aSandler.quote);

aSandler.showQuote;

// 5.  ** BONUS **


//  6.  Your Reflection:

/*For this assignment, we tried making a strategy, but in the end, we were just figuring things out as we went along. Definitely had trouble with constructor functions and we used mozilla's developer site to help us through that. Just had trouble with the constructor functions, but i think I have the idea of it now. I learned how to do constructor functions during this assignment. Honestly I enjoyed solving the problem with my partner. The research was tedious because we were researching different things in order to find the type of syntax that would work for the specific problem we were on.