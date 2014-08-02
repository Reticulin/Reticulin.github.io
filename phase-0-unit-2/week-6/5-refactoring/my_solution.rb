# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution
=begin
class CreditCard
  def initialize (card_number) #defining a method to initialize the class when called using the amount of numbers within the credit card as an argument
    if (card_number.to_s.length != 16 )
        raise ArgumentError.new("Please enter a card number with exactly 16 integars")
    end#checks to see if there are 16 numbers within the credit card, if not then it will raise an argument error
    @card_number = card_number#setting instance variable for card_number
    @total_sum = 0 #setting the total sum baseine to 0
  end
 
  def check_card#defining a method that will check the numbers of the card to determine if it's a valid card or not
    @new_Array = []#creating instance variable that will be an empty array
    @new_Array = @card_number.to_s.split('')#inputs the card_number instance variable to the newly created array instance variable, while changing it to a string and splitting
    @new_Array.map! { |x| x.to_i }#this will map the new array and convert the numbers back to integers
    @new_Array.each_with_index.map { |x,y| 
      if (y % 2 != 0) 
        x = x*2
      end  #this block will go through the array and double every other number
     }  
  
    @new_Array.each { |x| 
        @total_sum = @total_sum + x
    }  #this will add up all the numbers in the array and then add them to the total_sum instance variable
    return true if (@total_sum % 10 == 0)#will return true if the sum is divisible by 10 and false otherwise
    return false
  end  
end
=end


# Refactored Solution
class CreditCard
	attr_reader :card
	def initialize(card)
		@card = card.to_s.split('')
		raise ArgumentError.new("Invalid Card") if @card.count != 16
		end

		def check
			sum = 0
			@arr = []
			@arr = @card
			@arr.map! { |x| x.to_i }
		 	total = @arr.each_with_index.map { |x,y|
				if (y%2==0)
					x = x*2
				else
					x = x
					end 
				}
			total.to_s.split('').each{|x| sum+=x.to_i}
			return true if (sum%10==0)
			return false
		end
	end

def assert
	raise "error" unless yield
end
visa = CreditCard.new(4408041234567893)
mastercard = CreditCard.new(4408041234567892)




# DRIVER TESTS GO BELOW THIS LINE

assert {visa.check == true}
assert {mastercard.check == false}





# Reflection 
#After choosing this code, I found that it didn't actually work very well. While short and efficient, it didn't meet the requirements in order to check the card properly. I used the credit_card_spec.rb test file within the previous week's work and used that to test my code constantly to find out what was wrong and try and fix it. I have refactored the code to work properly while still maintaining its cleanliness and efficiency.
