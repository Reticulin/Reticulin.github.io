# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? converting to an array
# 2. How does the rotate method work? What does it work on? It cycles through the array and puts the spot it counted to. It works on arrays.
# 3. What is `each_char` doing? selecting each individual character
# 4. What does `sample` do? picks a random character from the array
# 5. Are there any other methods you want to understand better? The zip method
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? It looks better because its cleaner and easier to read only thing is that its somewhat complicated for amateurs to understand
# 7. Is this good code? What makes it good? What makes it bad? I find this to be good code due to its simplicity and cleanliness


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

#It shows up a bit different but only for the spaces of the message.



# 5. Reflection 
=begin
My strategy here was to go through each line of code and figure out what each line does. After going through each line, I had to research some methods that I didnt fully understand. This wasn't a very tedious excercise, I found it quite interesting trying to figure out what each line of code did.  

  
end
