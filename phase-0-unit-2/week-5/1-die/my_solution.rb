# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: sides of the die
# Output: sides and random number from rolling the die
# Steps: Have a class with attributes and methods. Create a statement that gives an error when the sides of the die are less than 1. define the sides method and define the roll method to give a random number.


# 3. Initial Solution

class Die
  def initialize(sides)
  	@sides = sides
    unless (sides >= 1)
    	raise ArgumentError
    end
  end
  def sides
  	return @sides
  end
  def roll
    rand(1..sides)
  end
end




# 4. Refactored Solution
class Die
  def initialize(sides)
  	@sides = sides
    unless (sides >= 1)
    	raise ArgumentError
    end
  end
  
  def sides
  	return @sides
  end
  
  def roll
    rand(1..sides)
  end
end





# 1. DRIVER TESTS GO BELOW THIS LINE
sides = rand(800)
die = Die.new(sides)
die.sides == sides

(Die.instance_method(:sides).arity) == 0

(Die.instance_method(:roll).arity) == 0





# 5. Reflection 
#My strategy here was to break up what I needed to do in order to focus on one part at a time. After breaking up each part, I test them separately to see if they work before moving onto the next part. It was a fun assignment, but one part got frustrating due to me trying to find something that I was missing. Once I found it (simple issue), everything worked like it should.