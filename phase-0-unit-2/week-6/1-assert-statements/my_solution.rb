# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
  	if yield
  		puts true
  	end
end
=begin
name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end
# 2. Pseudocode what happens when the code above runs
#First its setting a name, in this case "bettysue". It will then check to see if the name matches. If the name doesn't match, it will then raise an error. Yield will be whatever argument is within the brackets.


# 3. Copy your selected challenge here
class Die
  def initialize(labels)
  	  	@labels = labels
    	unless (labels.length >= 1)
    	raise ArgumentError
    end
  end

  def sides
	@labels.length
  end

  def roll
 	@labels.sample
  end
end



# 4. Convert your driver test code from that challenge into Assert Statements
assert { (Die.instance_method(:initialize).arity) == 1 }

assert { (Die.instance_method(:sides).arity) == 0 }

assert { (Die.instance_method(:roll).arity) == 0 }




# 5. Reflection
#I had totally forgot about yield and now I see that it can be very useful for creating driver test code. That was definitely my new learned trick for this assignment. 