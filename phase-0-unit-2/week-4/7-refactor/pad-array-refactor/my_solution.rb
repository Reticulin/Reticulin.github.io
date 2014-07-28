# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge [by myself, with: ].



# 1. First Person's solution I liked
#    What I learned from this solution: This solution was very clean and just looked good
# Copy solution here:
#class Array

#	def pad (new_length, new_input = nil)
#		new_array = self.clone 
#
#		while new_length > self.length
#			new_input == nil ? new_array << nil : new_array << new_input
#			new_length -= 1
#		end
#
#		return new_array
#	end
#
#	def pad! (new_length, new_input = nil)
#
#		while new_length >= self.length
#			new_input == nil ? self << nil : self << new_input
#			new_length -= 1
#		end
#
#		return self
#	end
#end





# 2. Second Person's solution I liked
#    What I learned from this solution:This one looked more complicated but the fact that there are comments explaining the process was very helpful
# Copy solution here:
#class Array
# def pad!(number,padding = nil)
#    while number > self.length
#        self.push(padding)
#      end
#      return self
#  end
#  
#  def pad(number,padding = nil)
#  #Creating a placeholder array with same elements of self array.
#    placeholder = Array.new
#    element_counter = 0
#    while placeholder.length != self.length
#      placeholder.push(self[element_counter])
#      element_counter += 1
#    end
   #if placeholder array doesn't have same number of elements as defined by number, add padding 
#      while number > placeholder.length
#        placeholder.push(padding)
#      end
#      return placeholder
#  end
#end



# 3. My original solution:
#class Array
#  def pad!(min, value = nil)
#    x = min - self.count 
#    x.times do
#     self << value
#    end
#    self
#  end
  
#  def pad(min, value = nil)
#  self.clone.pad!(min, value)
#  end
#end


# 4. My refactored solution:
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




# 5. Reflection
#I felt that what I had was pretty clean and efficient. Seeing what others have done is very interesting, but I don't see what I can really add to my code.