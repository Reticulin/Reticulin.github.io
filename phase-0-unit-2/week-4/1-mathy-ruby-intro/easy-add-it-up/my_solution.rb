# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Kevin Aungle ].

# 1. Pseudocode
#Create a method that takes an Array with numbers and adds them up//Create a method that takes an Array of words and returns them joined in a sentence.
# What is the input? Input for first method will be numbers and for second method, input will be words
# What is the output? (i.e. What should the code return?) The first method needs to output a single number that is the sum of the array and the second needs to output a single sentence with all the words from the array in it
# What are the steps needed to solve the problem? create methods with loops to complete objective.


# 2. Initial Solution
def total(sum)
	sum.inject(0,:+)
	end

def sentence_maker(array)
 return ("#{array.join(" ")}".capitalize + ".")
end



# 3. Refactored Solution
def total(sum)
	sum.inject(0,:+)
end

def sentence_maker(array)
	return ("#{array.join(" ")}".capitalize + ".")
end


# 4. Reflection 
#Didn't have a strategy going into this assignment. We just tried to mee the test requirements. We had problems with both functions, trying to find out which syntax to use to achieve our goal. We did learn how to print out arrays as sentences and how to add objects in an array together. Pretty confident now with the learning competencies. I enjoyed the back and forth with my partner as it helps the thinking process. I found the research part tedious.