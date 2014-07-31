# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
Create pez dispenser class with an initialize method that takes flavors
Create a method that counts amount of pez
Create a method to remove a pez
Create a method to add a pez
Create a method to display the pez

=end
# 3. Initial Solution

class PezDispenser
 
attr_reader :flavors

	def initialize(flavors)
		@flavors = flavors
	end

		def pez_count
			 @flavors.count
		end

		def add_pez(item)
			@flavors << item
		end

		def get_pez(item = @flavors.fetch(0))
			p item
			@flavors.delete(item)
		end

		def dump(item = @flavors)
			@flavors.delete(item)
			puts "Pez dispenser is now empty"
		end

		def see_all_pez
			puts "The dispenser contains:"
			@flavors.each do |pez|
				puts pez
			end
		end
	end






 

 


# 4. Refactored Solution
class PezDispenser
 
attr_reader :flavors

	def initialize(flavors)
		@flavors = flavors
	end

		def pez_count
			 @flavors.count
		end

		def add_pez(item)
			@flavors << item
		end

		def get_pez(item = @flavors.fetch(0))
			p item
			@flavors.delete(item)
		end

		def dump(item = @flavors)
			@flavors.delete(item)
			puts "Pez dispenser is now empty"
		end

		def see_all_pez
			puts "The dispenser contains:"
			@flavors.each do |pez|
				puts pez
			end
		end
	end





# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 
#Having the driver tests were extremely helpful. I was able to tell which methods I needed to create in order for the class to work as intended. Combine the driver tests with working with the drawer debugger challenge made this a fun challenge. It almost felt like putting a puzzle together.