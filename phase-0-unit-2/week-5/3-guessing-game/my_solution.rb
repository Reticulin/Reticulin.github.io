# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: a number
# Output: hints to show where you are in regards to the answer number
# Steps: create symbols to use then start with the initialize method and put in the objects. Use if/else statements to complete guessing game


# 3. Initial Solution
=begin
class GuessingGame
  attr_accessor :answer, :high, :low, :correct, :guess, :last_guess, :last_result
 
  def initialize(answer)
    @answer = answer
    @last_result = nil
    @last_guess = nil
    
  end
end
    
  def guess(guess)
    if guess > self.answer
      self.last_guess = 'incorrect'
      self.last_result = 'incorrect'
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
=end


# 4. Refactored Solution
class GuessingGame
  attr_accessor :answer, :high, :low, :correct, :guess, :last_guess, :last_result #need symbols to call
 
  def initialize(answer)
    @answer = answer
    @last_result = nil #sets baseline for last result
    @last_guess = nil #sets baseline for last guess
    
  end
    
  def guess(guess)
    if guess > self.answer #checks if guess is greater than answer
      self.last_guess = 'incorrect'#if it's greater, then the variable last_guess becomes incorrect
      self.last_result = 'incorrect' #if parameters are met then last_result is changed to incorrect
      return :high #returns the symbol :high to show that the guessed number was too high
    elsif guess == self.answer and guess != self.last_guess  #checks if the guessed number is the same as the answer and if the guess number is not the same as the last guess
      self.last_result = 'correct' #if parameters are met then it changes the value of last_result to correct
      return :correct #returns the symbol :correct to show that the guessed number matched the answer number
    elsif guess < self.answer #checks if guess is less than the answer
      self.last_guess = 'incorrect' #if parameters are met then last_guess gets changed to incorrect
      self.last_result = 'incorrect' #if parameters ar emet then last_result gets changed to incorrect
      return :low #returns the symbol :low to show that the guessed number was lower than the answer number
    end
  end
  
  def solved?
    if self.last_result == 'correct' #if last result becomes correct then the method solved will become true
      true
    else #if last_result does not show correct then solved? will be false
      false
    end
  end
end






# 1. DRIVER TESTS GO BELOW THIS LINE

(GuessingGame.instance_method(:initialize).arity) == 1

(GuessingGame.method_defined?(:guess)) == true

(GuessingGame.method_defined?(:solved?)) == true





# 5. Reflection 
#This assignment took a bit of time since I wasnt quick enough to realize I had to create my own symbols. Once I was able to create my own symbols, all I had to do was work on how to create my if/else statements. This wasnt an excercise i found tedious, I just saw it as more practice towards classes in ruby.