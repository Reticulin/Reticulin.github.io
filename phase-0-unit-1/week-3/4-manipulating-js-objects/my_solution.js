// I worked on this challenge: [by myself, with: ]


// There is a section below where you will write your code.
// Do not alter this object here.


var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
};



// __________________________________________
// Write your code below.

var adam = {
  name: "Adam"
};
var carter = {
    name: "Carter"
    };
var carson = {
    name: "Carson"
    };
var colton = {
    name: "Colton"
    };


terah.spouse = adam;
terah.weight = 125;
terah.eyeColor = undefined;
terah.spouse.spouse = terah;
terah.children = [carter, carson, colton];
terah.children.carter = carter;
terah.children.carson = carson;
terah.children.colton = colton;




adam.children = terah.children;






// __________________________________________ Reflection: Use the reflection
// guidelines  

//    Didn't really have a strategy for this one, just kept coding as
// I went along. I had trouble with the children part and defining each of
// them, however, I was able to get it eventually. I guess the thing that I
// take away from this is getting the children part to work. I found this
// assignment semi enjoyable, but just felt moreso like a practice assignment.


// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the variable adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined,
  "The terah eyeColor property should be removed.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "The terah spouse property's value spouse property should be terah.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be an Object.",
  "7. "
)

assert(
  terah.children.carson.name === "Carson",
  "The terah children property should have a carson property with its own property name with a value of 'Carson'.",
  "8. "
)

assert(
  terah.children.carter.name === "Carter",
  "The terah children property should have a carter property with its own property name with a value of 'Carter'.",
  "9. "
)

assert(
  terah.children.colton.name === "Colton",
  "The terah children property should have a colton property with its own property name with a value of 'Colton'.",
  "10. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be the value of the terah children property",
  "11. "
)

console.log("\nHere is your final terah object:")
console.log(terah)