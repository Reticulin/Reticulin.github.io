# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? The input is a set of arrays
# What is the output? (i.e. What should the code return?) The output needs to be a letter grade corresponding to the average from an array
# What are the steps needed to solve the problem? First I have to go through the process of averaging by adding all the numbers in the array, I then have to divide that number by the number of objects in the array. Finally I must set parameters for each letter grade so they show up when they are supposed to.


# 2. Initial Solution
def get_grade(mean)
	len = mean.length
	sum = mean.inject(0,:+)
	mean = sum / len
	if (mean >= 90)
		return 'A'
	elsif (mean >= 80)
		return 'B'
	elsif (mean >= 70)
		return 'C'
	elsif (mean >= 60)
		return 'D'
	else
		return 'F'
	end
end

		

  

# 3. Refactored Solution
def get_grade(mean)
	
	len = mean.length
	sum = mean.inject(0,:+)
	mean = sum / len
	
	if (mean >= 90)
		return 'A'
	
	elsif (mean >= 80)
		return 'B'
	
	elsif (mean >= 70)
		return 'C'
	
	elsif (mean >= 60)
		return 'D'
	
	else
		return 'F'
	
	end
end


# 4. Reflection 
#This one was quite simple after figuring out the "easy add it up". By using what I learned there, I was able to complete this assignment with little difficulty. My strategy going into this was trying to incorporate what I learned from the previous assignment in order to achieve my objective. It was very enjoyable seeing my code work the first time around and nothing was tedious during this assignment.