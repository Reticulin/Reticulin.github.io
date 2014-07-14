# U2.W4: Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Kevin Aungle ].

# 1. Pseudocode

# What is the input? The input will be arrays given to the method.
# What is the output? (i.e. What should the code return?) Output will be the object at the middle of the array
# What are the steps needed to solve the problem? We need to sort the array and find the length, then take both of those values and divide by 2 in order to find the middle


# 2. Initial Solution
def median(array)
  sorted = array.sort
  len = sorted.length
  return (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end



# 3. Refactored Solution
def median(array)
  sorted = array.sort
  len = sorted.length
  	return (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
end


# 4. Reflection 
#We were able to get the tests down for the first set of tests, but the bonus still eludes us. It seems with what we have now, it finds the correct median but prints it twice. Still trying to figure out how to make a single method that can handle both integers and strings.