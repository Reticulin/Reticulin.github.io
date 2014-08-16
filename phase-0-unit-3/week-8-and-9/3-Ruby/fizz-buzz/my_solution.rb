# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
#Need to write a method that determines the parameters needed to change numbers to words and then if/else statements to be more specific
#method
#syntax to iterate through the array
#if/else statements

# 3. Initial Solution

def super_fizzbuzz(array)
num = array.map
num.each do |n|
	if (n%15==0)
		n='FizzBuzz'
	elsif (n%3==0)
		n='Fizz'
	elsif (n%5==0)
		n='Buzz'

	else
		n
	end
end
end



# 4. Refactored Solution
def super_fizzbuzz(array)
num = array.map
num.each do |n|
	if (n%15==0)
		n='FizzBuzz'
	elsif (n%3==0)
		n='Fizz'
	elsif (n%5==0)
		n='Buzz'

	else
		n
	end
end
end





# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

super_fizzbuzz(random_input_array(3,100)) == ["Fizz"]*100
super_fizzbuzz(random_input_array(5,100)) == ["Buzz"]*100
super_fizzbuzz(random_input_array(15, 100)) == ["FizzBuzz"]*100
super_fizzbuzz([1,2,3]) == [1,2,'Fizz']
super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]




# 5. Reflection 
#My strategy was all over the place on this assignment. What took me time was wondering if I should convert to a string and then use gsub or replace, but then modulus wouldn't work. I was just overthinking it and a simple ".map" syntax was all I really needed to complete this excercise.