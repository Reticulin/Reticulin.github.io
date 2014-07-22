# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
  attr_accessor :answer, :high, :low, :correct, :guess, :last_guess, :last_result
 
  def initialize(answer)
    @answer = answer
    @last_result = nil
    @last_guess = nil
    
  end
    
  def guess(guess)
    if guess > self.answer
      self.last_guess = 'incorrect'
      return :high
    elsif guess == self.answer and guess != self.last_guess
      self.last_result = 'correct'
      return :correct
    elsif guess < self.answer
      self.last_guess = 'incorrect'
      self.last_result = 'incorrect'
      return :low
    end
  end
  
  def solved?
    if self.last_result == 'correct'
      true
    else
      false
    end
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
