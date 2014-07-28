# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

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



# 4. Refactored Solution
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





# 1. DRIVER TESTS GO BELOW THIS LINE
(Die.instance_method(:initialize).arity) == 1

(Die.instance_method(:sides).arity) == 0

(Die.instance_method(:roll).arity) == 0





# 5. Reflection 

#Since this was just like the first one, I only had to make some minro changes to my previous code in order for it to work in this scenario. By doing this, it took me a much shorter time to complete this assignment. Didn't find this tedious, but didn't find this enjoyable either except for the fact that I feel like I'm getting a better handle on ruby.
