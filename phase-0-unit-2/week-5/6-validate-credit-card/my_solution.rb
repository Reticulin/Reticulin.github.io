# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with:Kevin Aungle ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(card)
		@card = card.to_s.split("")
		raise ArgumentError.new("Invalid Card") if @card.count != 16
		end
		
		def check_card
			sum
		end


		def double
			credit_num=[]
			counter=0
			while counter<@card.length
			@card.each do |x|
				if counter.even?
				credit_num<<(x.to_i*2)
				else
				credit_num<<x
				end
			counter+=1
			end
		end
		@credit_num=credit_num
	end
		def sum
			double
			value_holder=0
			@credit_num.to_s.split("").each{|x| value_holder+=x.to_i}
			if (value_holder%10!=0)
				false
			else
				true
		end
	end
end







# 4. Refactored Solution

class CreditCard
	def initialize(card)
		@card = card.to_s.split("")
		raise ArgumentError.new("Invalid Card") if @card.count != 16
		end
		
		def check_card
			sum
		end

		def double
			credit_num=[]
			counter=0
				while counter<@card.length
				@card.each do |x|
					if counter.even?
					credit_num<<(x.to_i*2)
					else
					credit_num<<x
					end
				counter+=1
			end
		end
		@credit_num=credit_num
	end
		def sum
			double
			value_holder=0
			@credit_num.to_s.split("").each{|x| value_holder+=x.to_i}
			if (value_holder%10!=0)
				false
			else
				true
		end
	end
end





# 1. DRIVER TESTS GO BELOW THIS LINE

(CreditCard.instance_method(:initialize).arity) == 1

(CreditCard.instance_method(:check_card).arity) == 0

card = CreditCard.new(4408041234567893) == false




# 5. Reflection 
#Most difficult assignment this week. Was definitely tough to get through, but surprisingly I did. Thankfully I was able to bounce my thoughts off of Kevin which helped me greatly during this assignment. I did learn how to write a class like an algorithm which I feel will be helpful in the future.