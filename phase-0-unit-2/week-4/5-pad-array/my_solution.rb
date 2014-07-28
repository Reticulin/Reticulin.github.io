# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) The same array but with extra spaces
# What are the steps needed to solve the problem?first we have to count the amount of spaces in the array then you need to add x value of spaces to the array


# 2. Initial Solution
class Array
  def pad!(min, value = nil)
    x = min - self.count 
    x.times do
     self << value
    end
    self
  end
  
  def pad(min, value = nil)
  self.clone.pad!(min, value)
  end
end


# 3. Refactored Solution
class Array
  def pad!(min, value = nil)
    x = min - self.count 
    x.times do
     self << value
    end
    self
  end
  
  def pad(min, value = nil)
  self.clone.pad!(min, value)
  end
end



# 4. Reflection 
#Took me awhile to figure out that i should probably need to use a class for this instead of just a method. It took a good amount of time and research to figure this out. I'm starting to find this tedious due to the information needed to learn, but not having a dedicated instructor to help.