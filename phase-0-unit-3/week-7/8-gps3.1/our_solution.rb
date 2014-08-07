# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1.Joseph Sabato
# 2.Rafael Rocha
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to be able to add to my list.
# As a user, I want to be able to update items on my list.
# As a user, I want to be able to delete items from my list.
# As a user, I want to be able to read values from my list.
# As a user, I want to
 
# Pseudocode
# First we need to create an initialize method to take the list. We then have to create methods for 'add', 'update', 'read' and 'delete'
# 
# 
# 
# 
# 
 
 
# Your fabulous code goes here....

class List
    def initialize(list)
        @mylist = list
    end
    def add(item, value)
       @mylist[item] = value
    end   
    def read(item)
    	if @mylist.key?(item)
    		return @mylist[item]
    	else
    		return "We can't find #{item}"
    	end
    end    
    def update(item, value)
    	if @mylist.key?(item)
    		return @mylist[item]= value
    	else
    		return "We can't find #{item}"
    	end
    end    
    def delete(item)
    	if @mylist.key?(item)
    		@mylist.delete(item)
    		return "#{item} has been deleted."
    	else
    		return "We can't find #{item}"
    	end

    end
    
  end  	
    
    
    
    





# DRIVER CODE GOES HERE. 
 
grocerylist = List.new('rice'=>10, 'potato'=>5)
p grocerylist.add('sugar', 10)
p grocerylist.read('rice') == 10
p grocerylist.update('rice', 7) == 7
p grocerylist.delete('rice') == "rice has been deleted."
 