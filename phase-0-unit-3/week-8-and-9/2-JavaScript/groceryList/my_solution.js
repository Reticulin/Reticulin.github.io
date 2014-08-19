// U3.W8-9: 


// I worked on this challenge with: .

// 2. Pseudocode
//create class
//create add method
//create update method
//create display method
//create delete method


// 3. Initial Solution

function groceryList() {
	this.items = [];
}

groceryList.prototype.addItem = function(item, quantity) {
	this.items.push([item, quantity]);
}
groceryList.prototype.readItem = function() {
    for (var i = 0; i < this.items.length; i++) {
      console.log(this.items[i][0].name, "-", this.items[i][1]);
    }
}
groceryList.prototype.updateItem = function(item, quantity) {
  for (var i = 0; i < this.items.length; i++) {
   if(this.items[i][0] == item){
      this.items[i][1] = quantity;
    }
    console.log(this.items[i][0].name, "-", this.items[i][1]);
  }
}

groceryList.prototype.deleteItem = function(item, quantity) {
  for (var i = 0; i < this.items.length; i++) {
    if(this.items[i][0] == item) {
    this.items.splice(i, 1);  
    }
  }
}


function item(item_name) {
	this.name = item_name;
}




// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
var list = new groceryList();
var milk = new item("milk");
var apple = new item("apple")
list.addItem(milk, 1);
list.addItem(apple, 5);
list.readItem();
list.updateItem(milk, 3);
list.deleteItem(milk);
list.readItem();





// 5. Reflection 
// Our strategy was to refer to our gps session assignment and work from there. Didn't take us long to realise that JS does not have classes like ruby and we had to make a set of cuntions to get it working the way we wanted. Eventually working step by step, we achieved our goal.