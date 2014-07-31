# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

		def open
			@open = true
		end

		def close
			@open = false
		end 

		def add_item(item)
			@contents << item
		end

		def remove_item(item = @contents.pop(0)) #what is `#pop` doing?:pop takes the last element in an array and removes it
			@contents.delete(item)
		end

		def dump  # what should this method return?
			puts "Your drawer is empty."
		end

		def view_contents
			puts "The drawer contains:"
			@contents.each {|silverware| puts "- " + silverware.type }
		end
	end


class Silverware
attr_reader :type

# Are there any more methods needed in this class?

		def initialize(type, clean = true)
			@type = type
			@clean = clean
		end

			def eat
				puts "eating with the #{type}"
				@clean = false
			end

			def clean_silverware
				puts "cleaning the #{type}"
				@clean = true
			end

end

def assert
	raise ArgumentError.new("Error") unless yield
		if yield
			puts true
		end
end

knife1 = Silverware.new("knife")
fork = Silverware.new("fork")
spoon = Silverware.new("spoon")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(fork)
silverware_drawer.add_item(spoon) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?


fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

assert { (Drawer.instance_method(:initialize).arity) == 0 }

assert { (Silverware.instance_method(:eat).arity) == 0 }

assert { (Drawer.instance_method(:add_item).arity) == 1 }




# 5. Reflection 
#Interesting assignment trying to find out whats wrong and then attempting to fix. I'm unsure about my feelings towards this challenge. It was neither tedious or enjoyable, just neutral.