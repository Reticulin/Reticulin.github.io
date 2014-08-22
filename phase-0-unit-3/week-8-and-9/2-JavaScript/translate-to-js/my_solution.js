// U3.W8-9: Challenge you're converting


// I worked on this challenge [by myself, with:Kevin Aungle ].

// 2. Pseudocode
//create main function for credit card
//create functions for check, double and sum


// 3. Initial Solution
/*function CreditCard(number) {
	this.number = number;
	digits = [];
	sNumber = number.toString();
	for (var i = 0, len = sNumber.length; i < len; i += 1) {
    digits.push(+sNumber.charAt(i));
}
	if (digits.length != 16) {
		throw new Error("Invalid Number");
	}
}

CreditCard.prototype.check = function(number) {
	number = this.number;
	digits = [];
	ddigits = [];
	sNumber = number.toString();
	for (var i = 0, len = sNumber.length; i < len; i += 1) {
    digits.push(+sNumber.charAt(i));
}

	for (var i = 1; i <= digits.length; i++) {
		if (i % 2 === 0) {
			ddigits.push(i*2);
		}
		else {
			ddigits.push(i);
		}
	}
	for (var i = 0, sum = 0; i < ddigits.length; sum += ddigits[i++]);
	if (sum%10===0){
		console.log(true);
	}
	else {
		console.log(false);
	}
}
*/



// 4. Refactored Solution
function CreditCard(number){
	this.number = number;
	digits = [];
	ddigits = [];
	sNumber = number.toString();
	for (var i = 0, len = sNumber.length; i < len; i += 1) {
    digits.push(+sNumber.charAt(i));
}
	if (digits.length != 16) {
		throw new Error("Invalid Number");
	}
	for (var i = 0; i < digits.length; i++) {
		if (i % 2 === 0) {
			ddigits.push(digits[i]*2);
		}
		else {
			ddigits.push(digits[i]);
		}
	}
	together = ddigits.join('');
	intnum = together.split('');
	sdigits = [];

	for (var i = 0; i < intnum.length; i++){
    sdigits.push(+intnum[i])
}
	for (var i = 0, sum = 0; i < sdigits.length; sum += sdigits[i++]);
	if (sum%10===0){
		console.log(true);
	}
	else {
		console.log(false);
	}
}





// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
CreditCard(1234567890123456)//should be false
CreditCard(4408041234567893)//should be true




// 5. Reflection 
//Our strategy going into this assignment was to try and mimic our class on the validate credit card assignment. It was tough since JS doesn't have classes, so we made functions. We later realised we could condense into one function.