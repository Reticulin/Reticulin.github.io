# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? The input will be numbers
# What is the output? (i.e. What should the code return?) the output needs to be the numbers with appropriate commas in them if need be
# What are the steps needed to solve the problem? In order to solve the probelm, we need to convert the number intop string format to make it easier. From there we want to reverse the order so we start at the first number which is in the ones place. We set it so that it selects every third spot in the string from that number. We then have the method to add a comma at every 3 spot intervals and then afterwards reverse it again to return it to it's original state.


# 2. Initial Solution
def separate_comma(num)
  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end



# 3. Refactored Solution
def separate_comma(num)
  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end


# 4. Reflection 

#This was a diffcult assignment. It's funny how something that's so easy and simple to us, becomes complicated when we try and help the computer interpret it. My strategy was to figure out what steps I needed to go research those steps. Learning how to add commas was a pretty cool trick, while being tedious as well. 