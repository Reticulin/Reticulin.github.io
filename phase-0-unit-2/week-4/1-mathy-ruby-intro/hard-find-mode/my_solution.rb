# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Kevin Aungle ].

# 1. Pseudocode

# What is the input? The input will be arrays
# What is the output? (i.e. What should the code return?) The code needs to return the object that has appeared the most times in the array
# What are the steps needed to solve the problem? We need a way to count each object in the array and see how many time it repeats and then print that object out


# 2. Initial Solution

def mode(mode)
  mode_return = mode.inject({}) { |k, v| k[v] = mode.count(v); k }
  mode_return.select { |k,v| v == mode_return.values.max }.keys
end



# 3. Refactored Solution
def mode(mode)
  mode_return = mode.inject({}) { |k, v| k[v] = mode.count(v); k }
  mode_return.select { |k,v| v == mode_return.values.max }.keys
end



# 4. Reflection 
#This was a very hard challenge with my partner and we did a lot of searching and reading to find something that would help us figure this out. When we found what we were looking for we had to disect the code together to igure out how each part works. I'm neutral on the enjoying/tedious part. 